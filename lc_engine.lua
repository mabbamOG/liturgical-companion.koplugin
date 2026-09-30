--[[
Liturgical Companion on-device engine.

Computes a day record (celebrations, Masses and their readings, the Office of
Readings reference, Catena attributions) for any date from rules and the small
tables in engine/. It is a port of the project's Python generator
(litcomp.calendar, litcomp.generation, litcomp.temporal_names,
litcomp.lectionary_table, litcomp.office) and is checked against it
(scripts/build/check-koplugin-engine.py). Pure Lua 5.1 / LuaJIT, no KOReader
dependencies.
]]

local Engine = {}
Engine.__index = Engine

-- ---------------------------------------------------------------------------
-- Dates: day numbers (days since 1970-01-01), weekday 0 = Monday .. 6 = Sunday
-- ---------------------------------------------------------------------------
local floor = math.floor

local function days_from_civil(y, m, d)
    y = (m <= 2) and (y - 1) or y
    local era = floor(y / 400)
    local yoe = y - era * 400
    local mp = (m + 9) % 12
    local doy = floor((153 * mp + 2) / 5) + d - 1
    local doe = yoe * 365 + floor(yoe / 4) - floor(yoe / 100) + doy
    return era * 146097 + doe - 719468
end

local function civil_from_days(z)
    z = z + 719468
    local era = floor(z / 146097)
    local doe = z - era * 146097
    local yoe = floor((doe - floor(doe / 1460) + floor(doe / 36524) - floor(doe / 146096)) / 365)
    local y = yoe + era * 400
    local doy = doe - (365 * yoe + floor(yoe / 4) - floor(yoe / 100))
    local mp = floor((5 * doy + 2) / 153)
    local d = doy - floor((153 * mp + 2) / 5) + 1
    local m = (mp < 10) and (mp + 3) or (mp - 9)
    if m <= 2 then y = y + 1 end
    return y, m, d
end

local function D(y, m, d) return days_from_civil(y, m, d) end
local function weekday(dn) return (dn + 3) % 7 end -- 1970-01-01 was a Thursday (3)
local function iso(dn)
    local y, m, d = civil_from_days(dn)
    return string.format("%04d-%02d-%02d", y, m, d)
end
local function parse_iso(value)
    local y, m, d = value:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    if not y then return nil end
    return D(tonumber(y), tonumber(m), tonumber(d))
end
Engine.parse_iso = parse_iso
Engine.iso = iso

local WEEKDAY_SLUGS = { "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday" }
local WEEKDAY_EN = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" }

-- ---------------------------------------------------------------------------
-- Temporal cycle (litcomp.calendar)
-- ---------------------------------------------------------------------------
local function gregorian_easter(year)
    local a = year % 19
    local b, c = floor(year / 100), year % 100
    local d, e = floor(b / 4), b % 4
    local f = floor((b + 8) / 25)
    local g = floor((b - f + 1) / 3)
    local h = (19 * a + b - d - g + 15) % 30
    local i, k = floor(c / 4), c % 4
    local l = (32 + 2 * e + 2 * i - h - k) % 7
    local m = floor((a + 11 * h + 22 * l) / 451)
    local month = floor((h + l - 7 * m + 114) / 31)
    local day = (h + l - 7 * m + 114) % 31 + 1
    return D(year, month, day)
end

local function advent_start(year)
    local christmas = D(year, 12, 25)
    local sunday_before = christmas - (weekday(christmas) + 1) % 7
    return sunday_before - 21
end

local function next_weekday(dn, wd)
    return dn + (wd - weekday(dn) - 1) % 7 + 1
end

local function transfer_overrides(transfers, year)
    if not transfers then return nil end
    local easter = gregorian_easter(year)
    local result, any = {}, false
    if transfers.epiphanyOnSunday then
        local jan2 = D(year, 1, 2)
        result.epiphany = jan2 + (6 - weekday(jan2)) % 7
        any = true
    end
    if transfers.ascensionOnSunday then result.ascension = easter + 42; any = true end
    if transfers.corpusChristiOnSunday then result.corpus_christi = easter + 63; any = true end
    return any and result or nil
end

local dates_cache = setmetatable({}, { __mode = "k" })

local function temporal_dates(year, ov)
    local cache_key = ov or dates_cache
    local by_year = dates_cache[cache_key]
    if not by_year then by_year = {}; dates_cache[cache_key] = by_year end
    if by_year[year] then return by_year[year] end
    ov = ov or {}
    local easter = gregorian_easter(year)
    local advent = advent_start(year)
    local epiphany = ov.epiphany or D(year, 1, 6)
    local _y, em, ed = civil_from_days(epiphany)
    local baptism
    if em == 1 and (ed == 7 or ed == 8) then baptism = epiphany + 1 else baptism = next_weekday(epiphany, 6) end
    local dates = {
        epiphany = epiphany, baptism = baptism,
        ash_wednesday = easter - 46, palm_sunday = easter - 7,
        holy_thursday = easter - 3, good_friday = easter - 2, holy_saturday = easter - 1,
        easter = easter, ascension = ov.ascension or (easter + 39), pentecost = easter + 49,
        trinity_sunday = easter + 56, corpus_christi = ov.corpus_christi or (easter + 60),
        sacred_heart = easter + 68, christ_the_king = advent - 7, advent = advent,
    }
    by_year[year] = dates
    return dates
end

local function psalter_week(week) return week and ((week - 1) % 4 + 1) or nil end

local function temporal_state(dn, ov)
    local year = civil_from_days(dn)
    local dates = temporal_dates(year, ov)
    local christmas = D(year, 12, 25)
    if dn >= christmas then
        local week = floor((dn - christmas) / 7) + 1
        return { season = "christmas", week = week, color = "white" }
    end
    if dn >= dates.advent then
        return { season = "advent", week = floor((dn - dates.advent) / 7) + 1, color = "violet" }
    end
    if dn >= dates.easter and dn <= dates.pentecost then
        return {
            season = "easter", week = floor((dn - dates.easter) / 7) + 1,
            color = (dn == dates.pentecost) and "red" or "white",
        }
    end
    if dn >= dates.holy_thursday and dn < dates.easter then
        local color = nil
        if dn == dates.holy_thursday then color = "white" elseif dn == dates.good_friday then color = "red" end
        return { season = "easter_triduum", color = color }
    end
    if dn >= dates.ash_wednesday and dn < dates.holy_thursday then
        local first_sunday = next_weekday(dates.ash_wednesday, 6)
        local week = (dn < first_sunday) and 1 or (floor((dn - first_sunday) / 7) + 1)
        return { season = "lent", week = week, color = "violet" }
    end
    if dn <= dates.baptism then
        return { season = "christmas", week = floor((dn - D(year, 1, 1)) / 7) + 2, color = "white" }
    end
    if dn < dates.ash_wednesday then
        local second_sunday = next_weekday(dates.baptism, 6)
        local week = (dn < second_sunday) and 1 or (floor((dn - second_sunday) / 7) + 2)
        return { season = "ordinary_time", week = week, color = "green" }
    end
    local week = 34 - floor((dates.advent - dn) / 7)
    if weekday(dn) == 6 then week = week + 1 end
    return { season = "ordinary_time", week = week, color = "green" }
end

local function cycles_for(dn)
    local year = civil_from_days(dn)
    if dn >= advent_start(year) then year = year + 1 end
    local sunday = ({ [1] = "A", [2] = "B", [0] = "C" })[year % 3]
    return sunday, (year % 2 == 1) and "I" or "II"
end
Engine.cycles_for = cycles_for

-- ---------------------------------------------------------------------------
-- Temporal names (litcomp.generation / litcomp.temporal_names)
-- ---------------------------------------------------------------------------
local TEMPORAL_NAMES = {
    ["mary-mother-of-god"] = { la = "Sancta Dei Genetrix Maria", en = "Mary, the Holy Mother of God", it = "Maria Santissima Madre di Dio", de = "Hochfest der Gottesmutter Maria", fr = "Sainte Marie, Mère de Dieu", es = "Santa María, Madre de Dios", pl = "Świętej Bożej Rodzicielki Maryi", pt = "Santa Maria, Mãe de Deus" },
    ["epiphany-of-the-lord"] = { la = "Epiphania Domini", en = "The Epiphany of the Lord", it = "Epifania del Signore", de = "Erscheinung des Herrn", fr = "Épiphanie du Seigneur", es = "Epifanía del Señor", pl = "Objawienie Pańskie", pt = "Epifania do Senhor" },
    ["baptism-of-the-lord"] = { la = "Baptisma Domini", en = "The Baptism of the Lord", it = "Battesimo del Signore", de = "Taufe des Herrn", fr = "Baptême du Seigneur", es = "Bautismo del Señor", pl = "Chrzest Pański", pt = "Batismo do Senhor" },
    ["ash-wednesday"] = { la = "Feria quarta Cinerum", en = "Ash Wednesday", it = "Mercoledì delle Ceneri", de = "Aschermittwoch", fr = "Mercredi des Cendres", es = "Miércoles de Ceniza", pl = "Środa Popielcowa", pt = "Quarta-feira de Cinzas" },
    ["thursday-after-ash-wednesday"] = { la = "Feria quinta post Cineres", en = "Thursday after Ash Wednesday", it = "Giovedì dopo le Ceneri", de = "Donnerstag nach Aschermittwoch", fr = "Jeudi après les Cendres", es = "Jueves después de Ceniza", pl = "Czwartek po Popielcu", pt = "Quinta-feira depois das Cinzas" },
    ["friday-after-ash-wednesday"] = { la = "Feria sexta post Cineres", en = "Friday after Ash Wednesday", it = "Venerdì dopo le Ceneri", de = "Freitag nach Aschermittwoch", fr = "Vendredi après les Cendres", es = "Viernes después de Ceniza", pl = "Piątek po Popielcu", pt = "Sexta-feira depois das Cinzas" },
    ["saturday-after-ash-wednesday"] = { la = "Sabbatum post Cineres", en = "Saturday after Ash Wednesday", it = "Sabato dopo le Ceneri", de = "Samstag nach Aschermittwoch", fr = "Samedi après les Cendres", es = "Sábado después de Ceniza", pl = "Sobota po Popielcu", pt = "Sábado depois das Cinzas" },
    ["palm-sunday"] = { la = "Dominica in Palmis de Passione Domini", en = "Palm Sunday of the Passion of the Lord", it = "Domenica delle Palme e della Passione del Signore", de = "Palmsonntag", fr = "Dimanche des Rameaux et de la Passion du Seigneur", es = "Domingo de Ramos en la Pasión del Señor", pl = "Niedziela Palmowa Męki Pańskiej", pt = "Domingo de Ramos na Paixão do Senhor" },
    ["holy-thursday"] = { la = "Feria quinta in Cena Domini", en = "Holy Thursday", it = "Giovedì Santo", de = "Gründonnerstag", fr = "Jeudi saint", es = "Jueves Santo", pl = "Wielki Czwartek", pt = "Quinta-feira Santa" },
    ["good-friday"] = { la = "Feria sexta in Passione Domini", en = "Good Friday of the Passion of the Lord", it = "Venerdì Santo", de = "Karfreitag", fr = "Vendredi saint", es = "Viernes Santo", pl = "Wielki Piątek", pt = "Sexta-feira Santa" },
    ["holy-saturday"] = { la = "Sabbatum Sanctum", en = "Holy Saturday", it = "Sabato Santo", de = "Karsamstag", fr = "Samedi saint", es = "Sábado Santo", pl = "Wielka Sobota", pt = "Sábado Santo" },
    ["easter-sunday"] = { la = "Dominica Paschae in Resurrectione Domini", en = "Easter Sunday of the Resurrection of the Lord", it = "Domenica di Pasqua nella Risurrezione del Signore", de = "Ostersonntag", fr = "Dimanche de Pâques", es = "Domingo de Pascua", pl = "Niedziela Zmartwychwstania Pańskiego", pt = "Domingo de Páscoa" },
    ["ascension-of-the-lord"] = { la = "Ascensio Domini", en = "The Ascension of the Lord", it = "Ascensione del Signore", de = "Christi Himmelfahrt", fr = "Ascension du Seigneur", es = "Ascensión del Señor", pl = "Wniebowstąpienie Pańskie", pt = "Ascensão do Senhor" },
    ["pentecost-sunday"] = { la = "Dominica Pentecostes", en = "Pentecost Sunday", it = "Domenica di Pentecoste", de = "Pfingstsonntag", fr = "Dimanche de la Pentecôte", es = "Domingo de Pentecostés", pl = "Niedziela Zesłania Ducha Świętego", pt = "Domingo de Pentecostes" },
    ["most-holy-trinity"] = { la = "Sanctissima Trinitas", en = "The Most Holy Trinity", it = "Santissima Trinità", de = "Dreifaltigkeitssonntag", fr = "La Sainte Trinité", es = "La Santísima Trinidad", pl = "Najświętszej Trójcy", pt = "Santíssima Trindade" },
    ["corpus-christi"] = { la = "Sanctissimi Corporis et Sanguinis Christi", en = "The Most Holy Body and Blood of Christ", it = "Santissimo Corpo e Sangue di Cristo", de = "Hochfest des Leibes und Blutes Christi", fr = "Le Saint-Sacrement du Corps et du Sang du Christ", es = "El Santísimo Cuerpo y Sangre de Cristo", pl = "Najświętszego Ciała i Krwi Chrystusa", pt = "Santíssimo Corpo e Sangue de Cristo" },
    ["most-sacred-heart-of-jesus"] = { la = "Sacratissimi Cordis Iesu", en = "The Most Sacred Heart of Jesus", it = "Sacratissimo Cuore di Gesù", de = "Heiligstes Herz Jesu", fr = "Le Sacré-Cœur de Jésus", es = "El Sagrado Corazón de Jesús", pl = "Najświętszego Serca Pana Jezusa", pt = "Sagrado Coração de Jesus" },
    ["christ-the-king"] = { la = "Domini Nostri Iesu Christi Universorum Regis", en = "Our Lord Jesus Christ, King of the Universe", it = "Nostro Signore Gesù Cristo Re dell'Universo", de = "Christkönigssonntag", fr = "Le Christ, Roi de l'univers", es = "Jesucristo, Rey del Universo", pl = "Jezusa Chrystusa, Króla Wszechświata", pt = "Nosso Senhor Jesus Cristo, Rei do Universo" },
    ["nativity-of-the-lord"] = { la = "Nativitas Domini", en = "The Nativity of the Lord", it = "Natale del Signore", de = "Hochfest der Geburt des Herrn", fr = "La Nativité du Seigneur", es = "La Natividad del Señor", pl = "Narodzenie Pańskie", pt = "Natal do Senhor" },
    ["holy-family"] = { la = "Sanctae Familiae Iesu, Mariae et Ioseph", en = "The Holy Family of Jesus, Mary and Joseph", it = "Santa Famiglia di Gesù, Maria e Giuseppe", de = "Fest der Heiligen Familie", fr = "La Sainte Famille", es = "La Sagrada Familia", pl = "Świętej Rodziny", pt = "Sagrada Família" },
}

local TEMPORAL_COLORS = {
    ["palm-sunday"] = "red", ["most-holy-trinity"] = "white", ["corpus-christi"] = "white",
    ["most-sacred-heart-of-jesus"] = "white", ["christ-the-king"] = "white",
}

local ROMAN = { { 10, "X" }, { 9, "IX" }, { 5, "V" }, { 4, "IV" }, { 1, "I" } }
local function roman(n)
    local out = ""
    for _i, pair in ipairs(ROMAN) do
        while n >= pair[1] do out = out .. pair[2]; n = n - pair[1] end
    end
    return out
end
local function bounded_roman(n)
    if not n or n < 1 or n > 34 then return "" end
    return roman(n)
end

local ALL_WEEKDAYS = {
    la = { "Feria secunda", "Feria tertia", "Feria quarta", "Feria quinta", "Feria sexta", "Sabbatum" },
    en = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" },
    it = { "Lunedì", "Martedì", "Mercoledì", "Giovedì", "Venerdì", "Sabato" },
    de = { "Montag", "Dienstag", "Mittwoch", "Donnerstag", "Freitag", "Samstag" },
    fr = { "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi" },
    es = { "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado" },
    pl = { "Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek", "Sobota" },
    pt = { "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado" },
}
local SEASON_PHRASES = {
    de = { advent = "im Advent", christmas = "der Weihnachtszeit", lent = "der Fastenzeit", easter = "der Osterzeit", ordinary_time = "im Jahreskreis" },
    fr = { advent = "de l'Avent", christmas = "du temps de Noël", lent = "de Carême", easter = "de Pâques", ordinary_time = "du temps ordinaire" },
    es = { advent = "de Adviento", christmas = "de Navidad", lent = "de Cuaresma", easter = "de Pascua", ordinary_time = "del Tiempo Ordinario" },
    pl = { advent = "Adwentu", christmas = "okresu Narodzenia Pańskiego", lent = "Wielkiego Postu", easter = "okresu wielkanocnego", ordinary_time = "okresu zwykłego" },
    pt = { advent = "do Advento", christmas = "do Natal", lent = "da Quaresma", easter = "da Páscoa", ordinary_time = "do Tempo Comum" },
}
local POLISH_SUNDAYS = { advent = "Adwentu", christmas = "okresu Narodzenia Pańskiego", lent = "Wielkiego Postu", easter = "Wielkanocna", ordinary_time = "zwykła" }
local POLISH_WEEKS = { advent = "Adwentu", christmas = "okresu Narodzenia Pańskiego", lent = "Wielkiego Postu", easter = "wielkanocnego", ordinary_time = "zwykłego" }
local GERMAN_SUNDAYS = { advent = "Adventssonntag", lent = "Fastensonntag" }
local GERMAN_WEEKS = { advent = "Adventswoche", lent = "Fastenwoche", easter = "Osterwoche" }
local LATIN_SEASON = { advent = "Adventus", christmas = "temporis Nativitatis", lent = "Quadragesimae", easter = "Paschae", ordinary_time = "per annum" }
local ITALIAN_SEASON = { advent = "di Avvento", christmas = "di Natale", lent = "di Quaresima", easter = "di Pasqua", ordinary_time = "del Tempo Ordinario" }

local function title_case(season)
    return (season:gsub("_", " "):gsub("(%a)([%w]*)", function(a, b) return a:upper() .. b:lower() end))
end

local function core_temporal_names(dn, state)
    local wd = weekday(dn)
    local numeral = bounded_roman(state.week)
    local season = state.season
    if wd == 6 then
        return {
            la = string.format("Dominica %s %s", numeral, LATIN_SEASON[season]),
            en = string.format("Sunday of week %s of %s", tostring(state.week), title_case(season)),
            it = string.format("%s Domenica %s", numeral, ITALIAN_SEASON[season]),
        }
    end
    return {
        la = string.format("%s hebdomadae %s %s", ALL_WEEKDAYS.la[wd + 1], numeral, LATIN_SEASON[season]),
        en = string.format("%s of week %s of %s", WEEKDAY_EN[wd + 1], tostring(state.week), title_case(season)),
        it = string.format("%s della %s settimana %s", ALL_WEEKDAYS.it[wd + 1], numeral, ITALIAN_SEASON[season]),
    }
end

local function formula_names(dn, season, week)
    local wd = weekday(dn)
    local numeral = roman(week)
    local names = {}
    for _i, lang in ipairs({ "de", "fr", "es", "pl", "pt" }) do
        local phrase = SEASON_PHRASES[lang][season]
        local value
        if wd == 6 then
            if lang == "de" then
                value = GERMAN_SUNDAYS[season] and string.format("%d. %s", week, GERMAN_SUNDAYS[season]) or string.format("%d. Sonntag %s", week, phrase)
            elseif lang == "fr" then
                value = string.format("%d%s dimanche %s", week, week == 1 and "er" or "e", phrase)
            elseif lang == "es" then
                value = string.format("Domingo %s %s", numeral, phrase)
            elseif lang == "pl" then
                value = string.format("%s Niedziela %s", numeral, POLISH_SUNDAYS[season])
            else
                value = string.format("%s Domingo %s", numeral, phrase)
            end
        else
            local wname = ALL_WEEKDAYS[lang][wd + 1]
            if lang == "de" then
                value = GERMAN_WEEKS[season] and string.format("%s der %d. %s", wname, week, GERMAN_WEEKS[season]) or string.format("%s der %d. Woche %s", wname, week, phrase)
            elseif lang == "fr" then
                value = string.format("%s de la %d%s semaine %s", wname, week, week == 1 and "re" or "e", phrase)
            elseif lang == "es" then
                value = string.format("%s de la %s semana %s", wname, numeral, phrase)
            elseif lang == "pl" then
                value = string.format("%s %s tygodnia %s", wname, numeral, POLISH_WEEKS[season])
            else
                value = string.format("%s da %d.ª semana %s", wname, week, phrase)
            end
        end
        names[lang] = value
    end
    return names
end

local function per_language(fn)
    local out = {}
    for lang, list in pairs(ALL_WEEKDAYS) do out[lang] = fn(lang, list) end
    return out
end

local function special_names(dn, dates)
    local wd = weekday(dn)
    local _y, month, day = civil_from_days(dn)
    if month == 12 and day >= 26 and day <= 31 and wd ~= 6 then
        local n = day - 24
        local r = roman(n)
        return {
            la = string.format("Dies %s infra octavam Nativitatis Domini", r),
            en = string.format("Day %d within the Octave of the Nativity of the Lord", n),
            it = string.format("%s giorno fra l'ottava di Natale", r),
            de = string.format("%d. Tag der Weihnachtsoktav", n),
            fr = string.format("%de jour dans l'octave de la Nativité", n),
            es = string.format("Día %s dentro de la octava de Navidad", r),
            pl = string.format("%s dzień w oktawie Narodzenia Pańskiego", r),
            pt = string.format("%s dia dentro da oitava do Natal", r),
        }
    end
    if month == 1 and day >= 2 and dn < dates.epiphany and wd == 6 then
        return {
            la = "Dominica II post Nativitatem", en = "Second Sunday after the Nativity",
            it = "II Domenica dopo Natale", de = "2. Sonntag nach Weihnachten",
            fr = "2e dimanche après la Nativité", es = "Domingo II después de Navidad",
            pl = "II Niedziela po Narodzeniu Pańskim", pt = "II Domingo depois do Natal",
        }
    end
    if month == 1 and day >= 2 and dn < dates.epiphany then
        return {
            la = string.format("Die %d ianuarii", day), en = string.format("January %d", day),
            it = string.format("%d gennaio", day), de = string.format("%d. Januar", day),
            fr = string.format("%d janvier", day), es = string.format("%d de enero", day),
            pl = string.format("%d stycznia", day), pt = string.format("%d de janeiro", day),
        }
    end
    if month == 1 and dn > dates.epiphany and dn < dates.baptism and wd ~= 6 then
        local w = per_language(function(_lang, list) return list[wd + 1] end)
        return {
            la = w.la .. " post Epiphaniam", en = w.en .. " after Epiphany",
            it = w.it .. " dopo l'Epifania", de = w.de .. " nach Erscheinung des Herrn",
            fr = w.fr .. " après l'Épiphanie", es = w.es .. " después de la Epifanía",
            pl = w.pl .. " po Objawieniu Pańskim", pt = w.pt .. " depois da Epifania",
        }
    end
    if dn >= dates.easter - 6 and dn <= dates.easter - 4 then
        local w = per_language(function(_lang, list) return list[wd + 1] end)
        return {
            la = w.la .. " Hebdomadae Sanctae", en = w.en .. " of Holy Week",
            it = w.it .. " della Settimana Santa", de = w.de .. " der Karwoche",
            fr = w.fr .. " saint", es = w.es .. " Santo",
            pl = ({ [0] = "Wielki Poniedziałek", [1] = "Wielki Wtorek", [2] = "Wielka Środa" })[wd],
            pt = w.pt .. " Santa",
        }
    end
    if dn > dates.easter and dn < dates.easter + 7 then
        local w = per_language(function(_lang, list) return list[wd + 1] end)
        return {
            la = w.la .. " infra octavam Paschae", en = w.en .. " within the Octave of Easter",
            it = w.it .. " fra l'ottava di Pasqua",
            de = (wd == 0) and "Ostermontag" or (w.de .. " der Osteroktav"),
            fr = w.fr .. " dans l'octave de Pâques", es = w.es .. " de la Octava de Pascua",
            pl = w.pl .. " w oktawie Wielkanocy", pt = w.pt .. " da Oitava da Páscoa",
        }
    end
    return nil
end

local function merge(a, b)
    local out = {}
    for k, v in pairs(a or {}) do out[k] = v end
    for k, v in pairs(b or {}) do out[k] = v end
    return out
end

local function temporal_result(dn, state, identifier, rank, precedence)
    local color = TEMPORAL_COLORS[identifier] or state.color
    local names
    if TEMPORAL_NAMES[identifier] then
        names = TEMPORAL_NAMES[identifier]
    else
        names = merge(core_temporal_names(dn, state), formula_names(dn, state.season, state.week))
    end
    return {
        id = identifier, role = "primary", rank = rank, precedence = precedence,
        colors = color and { color } or {}, names = names, temporal = true,
    }
end

local function holy_family_date(year)
    for offset = 1, 6 do
        local candidate = D(year, 12, 25) + offset
        if weekday(candidate) == 6 then return candidate end
    end
    return D(year, 12, 30)
end

local function temporal_celebration(dn, ov)
    local year = civil_from_days(dn)
    local dates = temporal_dates(year, ov)
    local state = temporal_state(dn, ov)
    local fixed = {
        { D(year, 1, 1), "mary-mother-of-god", "solemnity", 3 },
        { dates.epiphany, "epiphany-of-the-lord", "solemnity", 2 },
        { dates.baptism, "baptism-of-the-lord", "feast", 5 },
        { dates.ash_wednesday, "ash-wednesday", "privileged_weekday", 2 },
        { dates.palm_sunday, "palm-sunday", "sunday", 2 },
        { dates.holy_thursday, "holy-thursday", "triduum", 1 },
        { dates.good_friday, "good-friday", "triduum", 1 },
        { dates.holy_saturday, "holy-saturday", "triduum", 1 },
        { dates.easter, "easter-sunday", "solemnity", 1 },
        { dates.ascension, "ascension-of-the-lord", "solemnity", 2 },
        { dates.pentecost, "pentecost-sunday", "solemnity", 2 },
        { dates.trinity_sunday, "most-holy-trinity", "solemnity", 3 },
        { dates.corpus_christi, "corpus-christi", "solemnity", 3 },
        { dates.sacred_heart, "most-sacred-heart-of-jesus", "solemnity", 3 },
        { dates.christ_the_king, "christ-the-king", "solemnity", 2 },
        { D(year, 12, 25), "nativity-of-the-lord", "solemnity", 2 },
        { holy_family_date(year), "holy-family", "feast", 5 },
    }
    -- Python builds a dict: a later entry for the same date wins.
    local hit
    for _i, item in ipairs(fixed) do
        if item[1] == dn then hit = item end
    end
    if hit then return temporal_result(dn, state, hit[2], hit[3], hit[4]) end
    local wd = weekday(dn)
    local season_slug = state.season:gsub("_", "-")
    local result
    if wd == 6 then
        local privileged = state.season == "advent" or state.season == "lent" or state.season == "easter"
        result = temporal_result(dn, state, string.format("%s-%d-sunday", season_slug, state.week), "sunday", privileged and 2 or 6)
    else
        local easter_octave = dn > dates.easter and dn < dates.easter + 7
        local holy_week = dn > dates.palm_sunday and dn < dates.holy_thursday
        local _yy, month, day = civil_from_days(dn)
        local rank = (state.season == "lent" or easter_octave or (month == 12 and day >= 17 and day <= 31)) and "privileged_weekday" or "weekday"
        local precedence
        if easter_octave or holy_week then precedence = 2
        else precedence = (rank == "privileged_weekday") and 9 or 13 end
        if dn > dates.ash_wednesday and dn < dates.ash_wednesday + 4 then
            return temporal_result(dn, state, WEEKDAY_SLUGS[wd + 1] .. "-after-ash-wednesday", rank, precedence)
        end
        result = temporal_result(dn, state, string.format("%s-%d-%s", season_slug, state.week, WEEKDAY_SLUGS[wd + 1]), rank, precedence)
    end
    local special = special_names(dn, dates)
    if special then result.names = special end
    return result
end

-- ---------------------------------------------------------------------------
-- Sanctoral (litcomp.generation.sanctoral_date / resolve_celebrations)
-- ---------------------------------------------------------------------------
function Engine:named_date(year, name)
    local dates = temporal_dates(year, nil)
    if name == "palmSunday" then return dates.palm_sunday end
    if name == "easterSunday" then return dates.easter end
    if name == "pentecostSunday" then return dates.pentecost end
    if name == "divineMercySunday" then return dates.easter + 7 end
    if name == "presentationOfTheLord" then return D(year, 2, 2) end
    if name == "annunciation" then
        local annunciation = D(year, 3, 25)
        if annunciation >= dates.palm_sunday and annunciation <= dates.easter + 7 then
            annunciation = dates.easter + 8
        end
        return annunciation
    end
    if name == "maryMotherOfTheChurch" then return dates.easter + 50 end
    if name == "immaculateHeartOfMary" then return dates.easter + 69 end
    if name == "nativityOfJohnTheBaptist" then return D(year, 6, 24) end
    if name == "peterAndPaulApostles" then return D(year, 6, 29) end
    if name == "transfiguration" then return D(year, 8, 6) end
    if name == "assumption" then return D(year, 8, 15) end
    if name == "exaltationOfTheHolyCross" then return D(year, 9, 14) end
    if name == "allSaints" then return D(year, 11, 1) end
    if name == "immaculateConceptionOfMary" then
        local value = D(year, 12, 8)
        if weekday(value) == 6 then value = value + 1 end
        return value
    end
    if name == "lunarNewYear" or name == "sundayOnOrAfterLunarNewYear" then
        local entry = self.lunar[year]
        if not entry then return nil end
        local value = D(year, entry[1], entry[2])
        if name == "sundayOnOrAfterLunarNewYear" then value = value + (6 - weekday(value)) % 7 end
        return value
    end
    return nil
end

function Engine:sanctoral_date(year, def)
    local resolved
    if def.date_function then
        resolved = self:named_date(year, def.date_function)
        if not resolved then return nil end
        resolved = resolved + (def.offset_days or 0)
    elseif def.last_weekday_in_month then
        local month = def.month
        local next_year = year + floor(month / 12)
        local last = D(next_year, month % 12 + 1, 1) - 1
        local wd = (def.last_weekday_in_month - 1) % 7
        resolved = last - (weekday(last) - wd) % 7
    elseif def.nth_week_in_month then
        local first = D(year, def.month, 1)
        local wd = (def.weekday - 1) % 7
        resolved = first + (wd - weekday(first)) % 7 + 7 * (def.nth_week_in_month - 1)
    else
        resolved = D(year, def.month, def.day)
    end
    for _i, exception in ipairs(def.date_exceptions or {}) do
        local matches = false
        if exception.ifIsDayOfWeek ~= nil then
            matches = (weekday(resolved) + 1) % 7 == exception.ifIsDayOfWeek
        elseif exception.ifIsBetween then
            local interval = exception.ifIsBetween
            local first = self:named_date(year, interval.from.dateFn)
            local last = self:named_date(year, interval.to.dateFn)
            if not first or not last then return nil end
            if interval.inclusive then
                matches = resolved >= first and resolved <= last
            else
                matches = resolved > first and resolved < last
            end
        else
            return nil
        end
        if matches then
            local set = exception.setDate
            if set.dateFn then
                resolved = self:named_date(year, set.dateFn)
                if not resolved then return nil end
            end
            resolved = resolved + (set.addDay or 0) - (set.subtractDay or 0)
        end
    end
    return resolved
end

function Engine:sanctoral_on(profile, dn)
    local year = civil_from_days(dn)
    local data = self:profile(profile)
    data._by_year = data._by_year or {}
    local by_date = data._by_year[year]
    if not by_date then
        by_date = {}
        for _i, def in ipairs(data.sanctoral) do
            local when = self:sanctoral_date(year, def)
            if when then
                by_date[when] = by_date[when] or {}
                table.insert(by_date[when], def)
            end
        end
        data._by_year[year] = by_date
    end
    return by_date[dn] or {}
end

local function sanctoral_celebration(def, role)
    return {
        id = def.id, role = role, rank = def.rank, precedence = def.precedence,
        names = def.names, colors = def.colors or {},
    }
end

local function copy(value)
    local out = {}
    for k, v in pairs(value) do out[k] = v end
    return out
end

function Engine:resolve_celebrations(profile, dn, temporal)
    local candidates = {}
    for _i, def in ipairs(self:sanctoral_on(profile, dn)) do table.insert(candidates, def) end
    if #candidates == 0 then return { temporal } end
    table.sort(candidates, function(a, b)
        if a.precedence ~= b.precedence then return a.precedence < b.precedence end
        return a.id < b.id
    end)
    local strongest = candidates[1]
    local tied = {}
    local any_similar = false
    for _i, item in ipairs(candidates) do
        if item.precedence == strongest.precedence then
            tied[item] = true
            if item.allow_similar_rank_items then any_similar = true end
        end
    end
    local tied_count = 0
    for _k in pairs(tied) do tied_count = tied_count + 1 end
    if tied_count > 1 and any_similar then
        local out = { temporal }
        for _i, item in ipairs(candidates) do
            table.insert(out, sanctoral_celebration(item, tied[item] and "optional" or "impeded"))
        end
        return out
    end
    if strongest.precedence < temporal.precedence and strongest.rank ~= "optional_memorial" then
        local out = { sanctoral_celebration(strongest, "primary") }
        for i = 2, #candidates do table.insert(out, sanctoral_celebration(candidates[i], "impeded")) end
        return out
    end
    local out = { temporal }
    for _i, item in ipairs(candidates) do
        local role
        if (item.rank == "memorial" or item.rank == "optional_memorial") and temporal.precedence == 9 then
            role = "commemoration"
        elseif item.rank == "optional_memorial" and item.precedence < temporal.precedence then
            role = "optional"
        else
            role = "impeded"
        end
        table.insert(out, sanctoral_celebration(item, role))
    end
    return out
end

-- ---------------------------------------------------------------------------
-- Masses (litcomp.generation.masses_and_rites / apply_mass_flags)
-- ---------------------------------------------------------------------------
local VIGIL_CELEBRATIONS = {
    ["epiphany-of-the-lord"] = true, ["ascension-of-the-lord"] = true,
    ["nativity-of-john-the-baptist"] = true, ["peter-and-paul-apostles"] = true,
    ["assumption-of-the-blessed-virgin-mary"] = true,
}
local PRIMARY_DAYS_OF_PRAYER = { ["day-of-prayer-for-the-legal-protection-of-unborn-children"] = true }
local SATURDAY_BVM_NAMES = { la = "Sancta Maria in sabbato", en = "Saturday Memorial of the Blessed Virgin Mary", it = "Memoria di Santa Maria in sabato" }

local function new_mass(dn, celebration_id, kind)
    kind = kind or "day"
    return {
        id = string.format("%s/%s-%s", iso(dn), celebration_id, kind),
        celebration_id = celebration_id, kind = kind,
        flags = { gloria = false, creed = false, sequences = {} },
        readings = {},
    }
end

local function masses_for(dn, celebration, ov)
    local year, month, day = civil_from_days(dn)
    local dates = temporal_dates(year, ov)
    local id = celebration.id
    if dn == dates.good_friday then return {} end
    if dn == dates.holy_saturday then return { new_mass(dn, "easter-vigil", "vigil") } end
    if dn == dates.holy_thursday then return { new_mass(dn, id, "chrism"), new_mass(dn, id, "evening") } end
    if dn == dates.palm_sunday then return { new_mass(dn, id) } end
    if id == "commemoration-of-all-the-faithful-departed" then
        return { new_mass(dn, id, "first"), new_mass(dn, id, "second"), new_mass(dn, id, "third") }
    end
    if dn == dates.pentecost - 1 then
        return { new_mass(dn, id), new_mass(dn, "pentecost-sunday", "vigil"), new_mass(dn, "pentecost-sunday", "extended-vigil") }
    end
    if month == 12 and day == 24 then return { new_mass(dn, id), new_mass(dn, "nativity-of-the-lord", "vigil") } end
    if month == 12 and day == 25 then
        return { new_mass(dn, id, "night"), new_mass(dn, id, "dawn"), new_mass(dn, id, "day") }
    end
    return { new_mass(dn, id) }
end

local function apply_mass_flags(dn, masses, celebrations, ov)
    local state = temporal_state(dn, ov)
    local _y, month, day = civil_from_days(dn)
    local by_id = {}
    for _i, c in ipairs(celebrations) do by_id[c.id] = c end
    for _i, mass in ipairs(masses) do
        local id = mass.celebration_id
        local rank = by_id[id] and by_id[id].rank
        if not rank and (mass.kind == "vigil" or id == "easter-vigil" or id == "pentecost-sunday" or id == "nativity-of-the-lord") then
            rank = "solemnity"
        end
        local octave_weekday = rank == "privileged_weekday" and ((state.season == "easter" and state.week == 1) or (month == 12 and day >= 26))
        local gloria = rank == "solemnity" or rank == "feast"
            or (rank == "sunday" and state.season ~= "advent" and state.season ~= "lent")
            or octave_weekday
        if id == "easter-vigil" or id == "holy-thursday" then gloria = true end
        local creed = (rank == "solemnity" or rank == "sunday") and id ~= "easter-vigil"
        local sequences = {}
        if id == "easter-sunday" then table.insert(sequences, "victimae-paschali-laudes") end
        if id == "pentecost-sunday" and mass.kind == "day" then table.insert(sequences, "veni-sancte-spiritus") end
        mass.flags = { gloria = gloria and true or false, creed = creed and true or false, sequences = sequences }
    end
end

-- ---------------------------------------------------------------------------
-- Readings (litcomp.lectionary_table)
-- ---------------------------------------------------------------------------
local WEEKDAY_READING_RANKS = { memorial = true, optional_memorial = true, commemoration = true, day_of_prayer = true }
local DAY_KINDS = { optional = true, first = true, second = true, third = true }
local VIGIL_KINDS = { vigil = true, ["extended-vigil"] = true }
local VULGATE_PSALM_PROFILES = { GR = true, IT = true }
local SHARE_WEEKDAY = "share-weekday"

local function weekday_key(dn, ov)
    local year, month, day = civil_from_days(dn)
    local dates = temporal_dates(year, ov)
    local temporal = temporal_celebration(dn, ov)
    if weekday(dn) == 6 or (temporal.rank ~= "weekday" and temporal.rank ~= "privileged_weekday") then
        return temporal.id
    end
    if month == 12 and ((day >= 17 and day <= 24) or day >= 29) then
        return string.format("%02d-%02d", month, day)
    end
    if month == 1 and dn < dates.epiphany then return string.format("%02d-%02d", month, day) end
    if month == 1 and dn > dates.epiphany and dn < dates.baptism then
        if dates.epiphany == D(year, 1, 6) then return "after-epiphany-" .. (day - 6) end
        return "after-epiphany-" .. (weekday(dn) + 1)
    end
    return temporal.id
end

local function table_keys(day, mass, ov)
    local dn = day.dn
    local kind = DAY_KINDS[mass.kind] and "day" or mass.kind
    local cid = mass.celebration_id
    if cid == "easter-vigil" then return { { "temporal:holy-saturday:day", dn } } end
    if VIGIL_KINDS[kind] then
        local following = dn + 1
        if cid == temporal_celebration(following, ov).id then
            return { { "temporal:" .. weekday_key(following, ov) .. ":" .. kind, following } }
        end
        return { { "celebration:" .. cid .. ":" .. kind, following } }
    end
    if cid == temporal_celebration(dn, ov).id then
        return { { "temporal:" .. weekday_key(dn, ov) .. ":" .. kind, dn } }
    end
    local keys = { { "celebration:" .. cid .. ":" .. kind, dn } }
    local rank
    for _i, c in ipairs(day.celebrations) do
        if c.id == cid then rank = c.rank; break end
    end
    if kind == "day" and WEEKDAY_READING_RANKS[rank] then
        table.insert(keys, { SHARE_WEEKDAY, dn })
        table.insert(keys, { "temporal:" .. weekday_key(dn, ov) .. ":day", dn })
    end
    return keys
end

local function hebrew_to_vulgate(chapter, verse)
    if chapter <= 8 or chapter >= 148 or chapter == 9 then return chapter, verse end
    if (chapter >= 11 and chapter <= 113) or (chapter >= 117 and chapter <= 146) then return chapter - 1, verse end
    if chapter == 116 and verse <= 9 then return 114, verse end
    if chapter == 147 and verse <= 11 then return 146, verse end
    return nil
end

local function vulgate_to_hebrew(chapter, verse)
    local found, count = nil, 0
    for _i, hebrew in ipairs({ chapter, chapter + 1 }) do
        local c, v = hebrew_to_vulgate(hebrew, verse)
        if c == chapter and v == verse then found = hebrew; count = count + 1 end
    end
    if count == 1 then return found, verse end
    return nil
end

local function renumber_psalms(readings, target)
    local result = {}
    for _i, reading in ipairs(readings) do
        local uses = false
        for _j, form in ipairs(reading.forms) do
            for _k, r in ipairs(form.ranges) do if r.book == "PSA" then uses = true end end
        end
        local numbering = reading.numbering
        if not uses or numbering == target or (numbering ~= "hebrew" and numbering ~= "greek_vulgate") then
            table.insert(result, reading)
        else
            local convert = (target == "greek_vulgate") and hebrew_to_vulgate or vulgate_to_hebrew
            local forms = {}
            for _j, form in ipairs(reading.forms) do
                local ranges = {}
                for _k, r in ipairs(form.ranges) do
                    if r.book ~= "PSA" then
                        table.insert(ranges, r)
                    else
                        local out = { book = r.book }
                        for _l, endpoint in ipairs({ "from", "to" }) do
                            local c, v, tail = r[endpoint]:match("^(%d+):(%d+)([a-z]*)$")
                            if not c then return nil end
                            local mc, mv = convert(tonumber(c), tonumber(v))
                            if not mc then return nil end
                            out[endpoint] = string.format("%d:%d%s", mc, mv, tail)
                        end
                        table.insert(ranges, out)
                    end
                end
                table.insert(forms, { ranges = ranges })
            end
            table.insert(result, { slot = reading.slot, numbering = target, forms = forms })
        end
    end
    return result
end

local function expand(compact)
    local out = {}
    for _i, item in ipairs(compact) do
        local forms = {}
        for _j, form in ipairs(item.forms) do
            local ranges = {}
            for _k, r in ipairs(form) do table.insert(ranges, { book = r[1], from = r[2], to = r[3] }) end
            table.insert(forms, { ranges = ranges })
        end
        table.insert(out, { slot = item.slot, numbering = item.numbering, forms = forms })
    end
    return out
end

local function entry_lookup(entry, sunday, wk, civil)
    if not entry then return nil end
    if entry.d and entry.d[civil] then return entry.d[civil] end
    local slot
    if entry.g == "" then slot = "*"
    elseif entry.g == "S" then slot = sunday
    elseif entry.g == "W" then slot = wk
    else slot = sunday .. "|" .. wk end
    return entry.v[slot]
end

local function weekday_mass(day, ov)
    local tid = temporal_celebration(day.dn, ov).id
    for _i, m in ipairs(day.masses) do
        if m.celebration_id == tid and m.kind == "day" and #m.readings > 0 then return m end
    end
    return nil
end

function Engine:attach_readings(profile, day, ov)
    local lectionary = self:lectionary()
    local overrides = self:profile(profile).overrides or {}
    local target = VULGATE_PSALM_PROFILES[profile] and "greek_vulgate" or "hebrew"
    for _i, mass in ipairs(day.masses) do
        for _j, pair in ipairs(table_keys(day, mass, ov)) do
            local key, cdate = pair[1], pair[2]
            if key == SHARE_WEEKDAY then
                local wm = weekday_mass(day, ov)
                if wm then mass.readings = wm.readings; break end
            else
                local sunday, wk = cycles_for(cdate)
                local found = entry_lookup(overrides[key], sunday, wk, day.date)
                if found then
                    mass.readings = expand(lectionary.pool[found])
                    break
                end
                found = entry_lookup(lectionary.base[key], sunday, wk, day.date)
                if found then
                    local converted = renumber_psalms(expand(lectionary.pool[found]), target)
                    if converted then mass.readings = converted end
                    break
                end
            end
        end
    end
    local wm = weekday_mass(day, ov)
    if wm then
        local ranks = {}
        for _i, c in ipairs(day.celebrations) do ranks[c.id] = c.rank end
        for _i, mass in ipairs(day.masses) do
            if #mass.readings == 0 and (mass.kind == "day" or DAY_KINDS[mass.kind]) and WEEKDAY_READING_RANKS[ranks[mass.celebration_id]] then
                mass.readings = wm.readings
            end
        end
    end
end

-- ---------------------------------------------------------------------------
-- Office of Readings (litcomp.office)
-- ---------------------------------------------------------------------------
local MONTHS = { ["Jan."] = 1, ["Feb."] = 2, ["Mar."] = 3, ["Apr."] = 4, May = 5, June = 6, July = 7, ["Aug."] = 8, ["Sept."] = 9, ["Oct."] = 10, ["Nov."] = 11, ["Dec."] = 12 }
local ROLE_WORDS = {}
for word in ([[abbot apostle apostles basilica beheading bishop bishops birth blessed church deacon dedication doctor doctors
evangelist exaltation first holy husband martyr martyrs nativity passion pope priest priests religious saint
saints solemnity spouse the triumph virgin virgins]]):gmatch("%a+") do ROLE_WORDS[word] = true end
local SPECIAL_TEMPORAL = {
    ["ash-wednesday"] = "Ash Wednesday", ["thursday-after-ash-wednesday"] = "Thursday after Ash Wednesday",
    ["friday-after-ash-wednesday"] = "Friday after Ash Wednesday", ["saturday-after-ash-wednesday"] = "Saturday after Ash Wednesday",
    ["palm-sunday"] = "Passion Sunday (Palm Sunday)", ["holy-thursday"] = "Holy Thursday", ["good-friday"] = "Good Friday",
    ["holy-saturday"] = "Holy Saturday", ["easter-sunday"] = "Easter Sunday",
    ["ascension-of-the-lord"] = "Ascension Thursday (or Sunday)", ["pentecost-sunday"] = "Pentecost Sunday",
    ["most-holy-trinity"] = "Sunday after Pentecost: Trinity Sunday",
    ["corpus-christi"] = "Thursday (or Sunday) after Trinity Sunday: Corpus Christi",
    ["most-sacred-heart-of-jesus"] = "Friday after the 2nd Sunday after Pentecost: Sacred Heart",
    ["immaculate-heart-of-mary"] = "Sat. after the 2nd Sun. after Pentecost: Immaculate Heart of Mary",
    ["nativity-of-the-lord"] = "Dec. 25: Christmas",
    ["epiphany-of-the-lord"] = "Jan. 6 or the Sunday between Jan. 2 and 8: Epiphany",
    ["baptism-of-the-lord"] = "Sunday after January 6: Baptism of the Lord",
}
local SPECIAL_PROPERS = {
    ["joseph-spouse-of-mary"] = "Mar. 19: Joseph, Husband of Mary",
    ["annunciation-of-the-lord"] = "Mar. 25: Annunciation",
    ["immaculate-conception-of-the-blessed-virgin-mary"] = "Dec. 8: Immaculate Conception",
}

-- "Mon. D[ [USA]][: name]" -> month, day, name (or nil)
local function parse_dated(label)
    local month_token, rest = label:match("^(%S+) (.*)$")
    if not month_token or not MONTHS[month_token] then return nil end
    local day_text, tail = rest:match("^(%d%d?)(.*)$")
    if not day_text then return nil end
    if tail:sub(1, 6) == " [USA]" then tail = tail:sub(7) end
    local name = nil
    if tail ~= "" then
        name = tail:match("^: (.+)$")
        if not name then return nil end
    end
    return MONTHS[month_token], tonumber(day_text), name
end

local function ordinal(value)
    local suffix = "th"
    if not (value % 100 >= 10 and value % 100 <= 20) then
        suffix = ({ [1] = "st", [2] = "nd", [3] = "rd" })[value % 10] or "th"
    end
    return value .. suffix
end

local function temporal_label(dn, cid)
    if SPECIAL_TEMPORAL[cid] then return SPECIAL_TEMPORAL[cid] end
    local _y, month, day = civil_from_days(dn)
    local cw, cday = cid:match("^christmas%-(%d+)%-(%a+)$")
    if cw then
        local wname = cday:sub(1, 1):upper() .. cday:sub(2)
        if month == 12 and wname == "Sunday" then return "Sunday in the Octave of Christmas" end
        if month == 12 and (day == 29 or day == 30 or day == 31) then
            local ord = ({ [29] = "Fifth", [30] = "Sixth", [31] = "Seventh" })[day]
            return string.format("Dec. %d: Octave of Christmas, %s Day", day, ord)
        end
        if month == 1 and day < 6 then return "From Jan. 2 to Epiphany, " .. wname end
        if month == 1 then return "After Epiphany to the Baptism of the Lord, " .. wname end
    end
    local season, week_text, wslug
    for _i, s in ipairs({ "advent", "lent", "ordinary-time", "easter" }) do
        local w, d = cid:match("^" .. s:gsub("%-", "%%-") .. "%-(%d+)%-(%a+)$")
        if w then season, week_text, wslug = s, w, d end
    end
    if not season then return nil end
    local valid = false
    for _i, slug in ipairs(WEEKDAY_SLUGS) do if slug == wslug then valid = true end end
    if not valid then return nil end
    local week = tonumber(week_text)
    local wname = wslug:sub(1, 1):upper() .. wslug:sub(2)
    if season == "lent" and week == 6 then return "Holy Week, " .. wname end
    if season == "easter" and week == 1 and wname ~= "Sunday" then return wname .. " within the Octave of Easter" end
    if season == "easter" and week == 2 and wname == "Sunday" then return "Sunday within the Octave of Easter" end
    local unit = (wname == "Sunday") and "Sunday" or "Week"
    local tail = (wname == "Sunday") and "" or (", " .. wname)
    if season == "ordinary-time" then return string.format("%s %s in Ord. Time%s", ordinal(week), unit, tail) end
    local title = ({ advent = "Advent", lent = "Lent", easter = "Easter" })[season]
    return string.format("%s %s of %s%s", ordinal(week), unit, title, tail)
end

local function is_temporal_pattern(cid)
    for _i, s in ipairs({ "advent", "lent", "ordinary-time", "easter" }) do
        local _w, d = cid:match("^" .. s:gsub("%-", "%%-") .. "%-(%d+)%-(%a+)$")
        if d then
            for _j, slug in ipairs(WEEKDAY_SLUGS) do if slug == d then return true end end
        end
    end
    return false
end

function Engine:name_tokens(value)
    local folds = self:office().folds
    value = value:gsub("[%z\1-\127\194-\244][\128-\191]*", function(ch)
        if #ch == 1 then return ch end
        return folds[ch] or ""
    end)
    value = value:lower():gsub("&", " and ")
    local tokens, count = {}, 0
    for word in value:gmatch("[a-z]+") do
        if not ROLE_WORDS[word] and word ~= "and" and not tokens[word] then
            tokens[word] = true
            count = count + 1
        end
    end
    return tokens, count
end

local function subset(a, b)
    for k in pairs(a) do if not b[k] then return false end end
    return true
end

function Engine:proper_name_matches(indexed, name, allow_single)
    local a, na = self:name_tokens(indexed)
    local b, nb = self:name_tokens(name)
    if na == 0 or nb == 0 then return false end
    if not allow_single and math.min(na, nb) < 2 then return false end
    return subset(a, b) or subset(b, a)
end

function Engine:office_for(profile, day)
    local office = self:office()
    local index = self._office_index
    if not index then
        index = { exact = {}, dated = {}, by_id = {}, approved = {} }
        for _i, a in ipairs(office.assignments) do
            index.by_id[a.id] = a
            local month, mday, name = parse_dated(a.label)
            table.insert(index.dated, { a = a, month = month, day = mday, name = name, dated = month ~= nil })
        end
        for _i, id in ipairs(office.approved) do index.approved[id] = true end
        self._office_index = index
    end
    local exact = {}
    local proper_rows = {}
    for _i, row in ipairs(index.dated) do
        local a = row.a
        if not (a.us_only and profile ~= "US") then
            exact[a.label] = exact[a.label] or {}
            table.insert(exact[a.label], a)
            if row.dated then table.insert(proper_rows, row) end
        end
    end
    local dn = day.dn
    local _y, month, mday = civil_from_days(dn)
    local celebrations = day.celebrations
    local primary = celebrations[1]
    local matches, order = {}, {}
    local function put(aid, cid, basis, replace)
        local key = aid .. "\0" .. cid
        if not matches[key] then table.insert(order, key) end
        if not matches[key] or replace then
            matches[key] = { assignment_id = aid, celebration_id = cid, match_basis = basis }
        end
    end
    local tlabel = temporal_label(dn, primary.id)
    if tlabel then
        for _i, a in ipairs(exact[tlabel] or {}) do put(a.id, primary.id, "temporal_label", true) end
    end
    for _i, c in ipairs(celebrations) do
        local label = SPECIAL_PROPERS[c.id]
        if label then
            local pm, pd = parse_dated(label)
            local same = pm and month == pm and mday == pd
            for _j, a in ipairs(exact[label] or {}) do
                put(a.id, c.id, same and "fixed_date_name" or "transferred_name", true)
            end
        end
    end
    for _i, c in ipairs(celebrations) do
        local english = c.names and c.names.en
        if english and english ~= "" then
            for _j, row in ipairs(proper_rows) do
                local same = (month == row.month and mday == row.day)
                if row.name == nil then
                    local weekday_primary = primary.rank == "weekday" or primary.rank == "privileged_weekday"
                    if same and c.id == primary.id and weekday_primary then
                        put(row.a.id, primary.id, "temporal_label", true)
                    end
                elseif not (not same and (is_temporal_pattern(c.id) or SPECIAL_TEMPORAL[c.id])) then
                    if self:proper_name_matches(row.name, english, same) then
                        local basis = same and "fixed_date_name" or "transferred_name"
                        put(row.a.id, c.id, basis, basis == "fixed_date_name")
                    end
                end
            end
        end
    end
    local list = {}
    for _i, key in ipairs(order) do table.insert(list, matches[key]) end
    table.sort(list, function(a, b)
        if a.assignment_id ~= b.assignment_id then return a.assignment_id < b.assignment_id end
        return a.celebration_id < b.celebration_id
    end)
    local result = { candidates = {} }
    local approved = {}
    for _i, m in ipairs(list) do
        local a = index.by_id[m.assignment_id]
        table.insert(result.candidates, {
            celebration_id = m.celebration_id, match_basis = m.match_basis,
            author = a.author, citation_title = a.title, citation_locator = a.locator,
        })
        if index.approved[m.assignment_id] then table.insert(approved, a) end
    end
    if #approved == 1 then
        result.selected_author = approved[1].author
        result.selected_citation_title = approved[1].title
        result.selected_citation_locator = approved[1].locator
    end
    return result
end

-- ---------------------------------------------------------------------------
-- Catena Aurea
-- ---------------------------------------------------------------------------
local LONG_RANKS = { sunday = true, solemnity = true, triduum = true }

function Engine:catena_for(profile, day)
    local data = self:profile(profile)
    if not data.catena then return {} end
    local fallback = data.catena_fallback and self:profile(data.catena_fallback).catena
    local ranks = {}
    for _i, c in ipairs(day.celebrations) do ranks[c.id] = c.rank end
    local entries = {}
    for _i, mass in ipairs(day.masses) do
        for _j, reading in ipairs(mass.readings) do
            if reading.slot == "gospel" then
                local numbering = reading.numbering or "unspecified"
                for _k, form in ipairs(reading.forms) do
                    for _l, r in ipairs(form.ranges) do
                        local key = string.format("%s|%s|%s|%s", r.book, r.from, r.to, numbering)
                        local counts = data.catena.ranges[key] or (fallback and fallback.ranges[key])
                        local rank = ranks[mass.celebration_id] or "solemnity"
                        local chain = LONG_RANKS[rank] and "s" or "w"
                        local authors = data.catena.authors[string.format("%s|%s|%s", r.book, r.from, r.to)]
                        table.insert(entries, {
                            mass_id = mass.id,
                            segment_count = counts and counts[chain] or 0,
                            attributions = authors and authors[chain] or {},
                        })
                    end
                end
            end
        end
    end
    return entries
end

-- ---------------------------------------------------------------------------
-- Loading and the day record
-- ---------------------------------------------------------------------------
function Engine.new(directory)
    local self = setmetatable({ dir = directory, _profiles = {}, _days = {} }, Engine)
    self.lunar = dofile(directory .. "/lunar.lua")
    return self
end

function Engine:profile(profile)
    local data = self._profiles[profile]
    if data == nil then
        local ok, loaded = pcall(dofile, string.format("%s/profiles/%s.lua", self.dir, profile))
        data = ok and loaded or false
        self._profiles[profile] = data
    end
    return data
end

function Engine:lectionary()
    if not self._lectionary then self._lectionary = dofile(self.dir .. "/lectionary.lua") end
    return self._lectionary
end

function Engine:office()
    if not self._office then self._office = dofile(self.dir .. "/office.lua") end
    return self._office
end

local function public_celebration(c)
    return { id = c.id, role = c.role, rank = c.rank, colors = c.colors or {}, names = c.names or {} }
end

--- The day record of ``profile`` on ``date`` ("YYYY-MM-DD"), or nil.
function Engine:day(profile, date)
    local data = self:profile(profile)
    local dn = parse_iso(date or "")
    if not data or not dn then return nil end
    local year = civil_from_days(dn)
    local ov = transfer_overrides(data.transfers, year)
    -- Keep one overrides table per profile and year so date caches are shared.
    data._ov = data._ov or {}
    if ov then
        data._ov[year] = data._ov[year] or ov
        ov = data._ov[year]
    end
    local state = temporal_state(dn, ov)
    local sunday, wk = cycles_for(dn)
    local temporal = temporal_celebration(dn, ov)
    local celebrations = self:resolve_celebrations(profile, dn, temporal)
    local promoted
    for _i, c in ipairs(celebrations) do
        if PRIMARY_DAYS_OF_PRAYER[c.id] then promoted = c; break end
    end
    if promoted and celebrations[1].rank == "weekday" then
        local weekday_celebration = copy(celebrations[1])
        weekday_celebration.role = "optional"
        local p = copy(promoted)
        p.role, p.rank = "primary", "day_of_prayer"
        local rebuilt = { p, weekday_celebration }
        for i = 2, #celebrations do
            if celebrations[i] ~= promoted then table.insert(rebuilt, celebrations[i]) end
        end
        celebrations = rebuilt
    end
    if weekday(dn) == 5 and state.season == "ordinary_time" and celebrations[1].rank == "weekday" then
        table.insert(celebrations, {
            id = "saturday-memorial-of-the-blessed-virgin-mary", role = "optional",
            rank = "optional_memorial", precedence = 12, colors = { "white" }, names = SATURDAY_BVM_NAMES,
        })
    end
    local masses = masses_for(dn, celebrations[1], ov)
    local tomorrow = dn + 1
    if civil_from_days(tomorrow) == year then
        local following = self:resolve_celebrations(profile, tomorrow, temporal_celebration(tomorrow, ov))[1]
        local has_vigil = false
        for _i, m in ipairs(masses) do if m.kind == "vigil" then has_vigil = true end end
        if VIGIL_CELEBRATIONS[following.id] and not has_vigil then
            table.insert(masses, new_mass(dn, following.id, "vigil"))
        end
    end
    for i = 2, #celebrations do
        if celebrations[i].role == "optional" then table.insert(masses, new_mass(dn, celebrations[i].id, "optional")) end
    end
    apply_mass_flags(dn, masses, celebrations, ov)
    local day = { dn = dn, date = date, celebrations = celebrations, masses = masses }
    self:attach_readings(profile, day, ov)
    local public = {}
    for _i, c in ipairs(celebrations) do table.insert(public, public_celebration(c)) end
    return {
        date = date,
        season = state.season,
        season_week = state.week,
        cycles = { sunday = sunday, weekday = wk, psalter_week = psalter_week(state.week) },
        celebrations = public,
        masses = masses,
        office = self:office_for(profile, { dn = dn, celebrations = celebrations }),
        commentaries = self:catena_for(profile, day),
    }
end

return Engine
