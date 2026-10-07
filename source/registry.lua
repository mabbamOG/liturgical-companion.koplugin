-- What the engine can generate: the Roman Missal editions and the calendars.
--
-- missals: key; ruleset (litcomp.<ruleset>); from: the first day the edition
-- was in force (the automatic choice, docs/KOREADER_PLUGIN.md has the sources);
-- first_year: the first year it may be chosen explicitly; calendars: the
-- calendars it defines ("*": every calendar in the list below).
--
-- calendars: key; language (the calendar's own, for display); lectionary: the
-- Lectionary tables, in order (source/lectionary/): the calendar's own edition,
-- the base (the Roman Lectionary as printed in the US), then the Latin and
-- Italian tables for what the base lacks (and the Spanish one, for the feasts
-- of the national propers the others lack); psalms: the psalm numbering of its
-- books ("hebrew" or "greek_vulgate"), into which every psalm is converted.
return {
    gregorian_start = "1582-10-15",
    last_year = 9999,
    missals = {
        { key = "1570", ruleset = "tridentine", from = "1582-10-15", first_year = 1582, calendars = { "GR" } },
        { key = "1888", ruleset = "tridentine", from = "1888-01-01", first_year = 1888, calendars = { "GR" } },
        { key = "1906", ruleset = "tridentine", from = "1906-01-01", first_year = 1906, calendars = { "GR" } },
        { key = "1939", ruleset = "tridentine", from = "1913-01-01", first_year = 1913, calendars = { "GR" } },
        { key = "1954", ruleset = "tridentine", from = "1944-01-01", first_year = 1944, calendars = { "GR" } },
        { key = "1955", ruleset = "tridentine", from = "1956-01-01", first_year = 1956, calendars = { "GR" } },
        { key = "1962", ruleset = "tridentine", from = "1961-01-01", first_year = 1961, calendars = { "GR" } },
        { key = "1970", ruleset = "roman1970", from = "1969-11-30", first_year = 1969, calendars = { "*" } },
    },
    calendars = {
        { key = "GR", language = "la", lectionary = { "GR", "base", "IT" }, psalms = "greek_vulgate" },
        { key = "AR", language = "es", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "AT", language = "de", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "AU", language = "en", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "BO", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "CA", language = "en", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "CL", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "CN", language = "zh-Hans", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "CR", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "DE", language = "de", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "ES", language = "es", lectionary = { "ES", "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "FR", language = "fr", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "GB-SC", language = "en", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "GT", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "IE", language = "en", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "IN", language = "en", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "IT", language = "it", lectionary = { "IT", "base", "GR" }, psalms = "greek_vulgate" },
        { key = "MX", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "NZ", language = "en", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "PA", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "PE", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "PH", language = "en", lectionary = { "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "PL", language = "pl", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "PR", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "PY", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "US", language = "en", lectionary = { "US", "base", "GR", "IT" }, psalms = "hebrew" },
        { key = "UY", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
        { key = "VE", language = "es", lectionary = { "base", "GR", "IT", "ES" }, psalms = "hebrew" },
    },
    -- The Bible edition (texts/bible/<id>/) whose text a language's panel shows
    -- under each reading; a language without one shows citations only.
    bibles = { en = "en-webc" },
    languages = { "en", "la", "it", "de", "fr", "es", "pt", "pl", "ru", "zh-Hans", "zh-Hant" },
}
