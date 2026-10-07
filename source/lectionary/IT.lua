-- Lectionary for Mass (Missal of Paul VI): the Italian edition (CEI), where it differs from the base.
-- Origin: Parola Viva open data 2026-2027 (parked/epub/data/readings/it-*.json); exported by parked/epub/migrate/lectionary.py.
-- temporal[<day key>][<Mass kind>] and celebration[<celebration id>][<Mass kind>] hold a
-- reading set, or reading sets by cycle: A/B/C (Sundays), I/II (weekdays) or "A|I"...
-- A reading is { slot, citation[, psalm numbering] }; see litcomp/core/citation.lua.
-- Day keys: a temporal celebration id, "MM-DD" (17-24 December, Christmas weekdays) or
-- "after-epiphany-N"; see litcomp/roman1970/lectionary.lua.
return {
    celebration = {
        ["agatha-of-sicily-virgin"] = {
            day = {
                { "first_reading", "REV 7:9-17" },
                { "psalm", "PSA 30:2-3; 30:5; 30:7; 30:15-16", "greek_vulgate" },
                { "gospel", "MAT 10:17-22" },
            },
        },
        ["all-saints"] = {
            day = {
                { "first_reading", "REV 7:2-4; 7:9-14" },
                { "psalm", "PSA 23:1-6", "greek_vulgate" },
                { "second_reading", "1JN 3:1-3" },
                { "gospel", "MAT 5:1-12" },
            },
        },
        ["andrew-apostle"] = {
            day = {
                { "first_reading", "ROM 10:9-18" },
                { "psalm", "PSA 18:1-4", "greek_vulgate" },
                { "gospel", "MAT 4:18-22" },
            },
        },
        ["annunciation-of-the-lord"] = {
            day = {
                { "first_reading", "ISA 7:10-14; 8:10" },
                { "psalm", "PSA 39:6-10", "greek_vulgate" },
                { "second_reading", "HEB 10:4-10" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["assumption-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "REV 11:19; 12:1-6" },
                { "psalm", "PSA 44:9-11; 44:15", "greek_vulgate" },
                { "second_reading", "1CO 15:20-27" },
                { "gospel", "LUK 1:39-56" },
            },
        },
        ["barnabas-apostle"] = {
            day = {
                A = {
                    { "first_reading", "ACT 11:21-26; 13:1-3" },
                    { "psalm", "PSA 97:1-6", "greek_vulgate" },
                    { "gospel", "MAT 10:7-13" },
                },
                B = {
                    { "first_reading", "ACT 11:21-26; 13:1-3" },
                    { "psalm", "PSA 97:1-6", "greek_vulgate" },
                    { "gospel", "MAT 10:7-13" },
                },
            },
        },
        ["bartholomew-apostle"] = {
            day = {
                { "first_reading", "REV 21:9-14" },
                { "psalm", "PSA 144:10-13; 144:17-18", "greek_vulgate" },
                { "gospel", "JHN 1:45-51" },
            },
        },
        ["benedict-of-nursia-abbot"] = {
            day = {
                { "first_reading", "PRO 2:1-9" },
                { "psalm", "PSA 33:1-3; 33:5; 33:8; 33:11; 33:13-14", "greek_vulgate" },
                { "gospel", "MAT 19:27-29" },
            },
        },
        ["catherine-of-siena-virgin"] = {
            day = {
                { "first_reading", "1JN 1:5-2:2" },
                { "acclamation", "MAT 11:25" },
                { "gospel", "MAT 11:25-30" },
            },
        },
        ["conversion-of-saint-paul-the-apostle"] = {
            day = {
                { "first_reading", "ACT 22:3-16" },
                { "psalm", "PSA 116:1-2", "greek_vulgate" },
                { "gospel", "MRK 16:15-18" },
            },
        },
        ["cyril-constantine-the-philosopher-monk-and-methodius-michael-of-thessaloniki-bishop"] = {
            day = {
                { "first_reading", "ACT 13:46-49 | ISA 52:7-10" },
                { "acclamation", "LUK 4:18cd" },
                { "gospel", "LUK 10:1-9" },
            },
        },
        ["dedication-of-the-lateran-basilica"] = {
            day = {
                { "first_reading", "EZK 47:1-2; 47:8-9; 47:12" },
                { "psalm", "PSA 45:1-2; 45:4-5; 45:7-8", "greek_vulgate" },
                { "gospel", "JHN 2:13-22" },
            },
        },
        ["exaltation-of-the-holy-cross"] = {
            day = {
                { "first_reading", "NUM 21:4-9" },
                { "psalm", "PSA 77:1-2; 77:34-38", "greek_vulgate" },
                { "second_reading", "PHP 2:6-11" },
                { "gospel", "JHN 3:13-17" },
            },
        },
        ["francis-of-assisi"] = {
            day = {
                { "first_reading", "GAL 6:14-18" },
                { "psalm", "PSA 15:1-2; 15:5; 15:7-8; 15:11", "greek_vulgate" },
                { "gospel", "MAT 11:25-30" },
            },
        },
        ["holy-guardian-angels"] = {
            day = {
                { "first_reading", "EXO 23:20-23" },
                { "psalm", "PSA 90:1-6; 90:10-11", "greek_vulgate" },
                { "gospel", "MAT 18:1-5; 18:10" },
            },
        },
        ["holy-innocents-martyrs"] = {
            day = {
                { "first_reading", "1JN 1:5-2:2" },
                { "psalm", "PSA 123:2-5; 123:7-8", "greek_vulgate" },
                { "gospel", "MAT 2:13-18" },
            },
        },
        ["immaculate-conception-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "GEN 3:9-15; 3:20" },
                { "psalm", "PSA 97:1-4", "greek_vulgate" },
                { "second_reading", "EPH 1:3-6; 1:11-12" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["james-apostle"] = {
            day = {
                { "first_reading", "2CO 4:7-15" },
                { "psalm", "PSA 125:1-6", "greek_vulgate" },
                { "gospel", "MAT 20:20-28" },
            },
        },
        ["joachim-and-anne-parents-of-mary"] = {
            day = {
                { "first_reading", "SIR 44:1; 44:10-15" },
                { "psalm", "PSA 131:11; 131:13-14; 131:17-18", "greek_vulgate" },
                { "gospel", "MAT 13:16-17" },
            },
        },
        ["john-apostle"] = {
            day = {
                { "first_reading", "1JN 1:1-4" },
                { "psalm", "PSA 96:1-2; 96:5-6; 96:11-12", "greek_vulgate" },
                { "gospel", "JHN 20:2-8" },
            },
        },
        ["joseph-spouse-of-mary"] = {
            day = {
                { "first_reading", "2SA 7:4-5; 7:12-14; 7:16" },
                { "psalm", "PSA 88:1-4; 88:26; 88:28", "greek_vulgate" },
                { "second_reading", "ROM 4:13; 4:16-18; 4:22" },
                { "gospel", "MAT 1:16; 1:18-21; 1:24" },
            },
        },
        ["lawrence-of-rome-deacon"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 111:1-2; 111:5-9", "greek_vulgate" },
                    { "gospel", "JHN 12:24-26" },
                },
                ["B|I"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 111:1-2; 111:5-9", "greek_vulgate" },
                    { "gospel", "JHN 12:24-26" },
                },
            },
        },
        ["luke-evangelist"] = {
            day = {
                { "first_reading", "2TI 4:10-17" },
                { "psalm", "PSA 144:10-13; 144:17-18", "greek_vulgate" },
                { "gospel", "LUK 10:1-9" },
            },
        },
        ["mark-evangelist"] = {
            day = {
                { "first_reading", "1PE 5:5-14" },
                { "psalm", "PSA 88:1-2; 88:5-6; 88:15-16", "greek_vulgate" },
                { "gospel", "MRK 16:15-20" },
            },
        },
        ["mary-magdalene"] = {
            day = {
                { "first_reading", "SNG 3:1-4" },
                { "psalm", "PSA 62:1-5; 62:7-8", "greek_vulgate" },
                { "gospel", "JHN 20:1-2; 20:11-18" },
            },
        },
        ["matthew-apostle"] = {
            day = {
                { "first_reading", "EPH 4:1-7; 4:11-13" },
                { "psalm", "PSA 18:1-4", "greek_vulgate" },
                { "gospel", "MAT 9:9-13" },
            },
        },
        ["michael-gabriel-and-raphael-archangels"] = {
            day = {
                { "first_reading", "DAN 7:9-10; 7:13-14" },
                { "psalm", "PSA 137:1-5", "greek_vulgate" },
                { "gospel", "JHN 1:47-51" },
            },
        },
        ["nativity-of-john-the-baptist"] = {
            day = {
                { "first_reading", "ISA 49:1-6" },
                { "psalm", "PSA 138:1-3; 138:13-15", "greek_vulgate" },
                { "second_reading", "ACT 13:22-26" },
                { "gospel", "LUK 1:57-66; 1:80" },
            },
        },
        ["nativity-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "MIC 5:1-4" },
                { "psalm", "PSA 12:5", "greek_vulgate" },
                { "gospel", "MAT 1:1-16; 1:18-23" },
            },
        },
        ["our-lady-of-sorrows"] = {
            day = {
                { "first_reading", "HEB 5:7-9" },
                { "psalm", "PSA 30:1-5; 30:14-15; 30:19", "greek_vulgate" },
                { "gospel", "JHN 19:25-27" },
            },
        },
        ["our-lady-of-the-rosary"] = {
            day = {
                { "first_reading", "ACT 1:12-14" },
                { "psalm", "LUK 1:46-55", "greek_vulgate" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["paul-miki-and-companions-martyrs"] = {
            day = {
                { "first_reading", "GAL 2:19-20" },
                { "psalm", "PSA 125:1-6", "greek_vulgate" },
                { "gospel", "MAT 28:16-20" },
            },
        },
        ["peter-and-paul-apostles"] = {
            day = {
                { "first_reading", "ACT 12:1-11" },
                { "psalm", "PSA 33:1-8", "greek_vulgate" },
                { "second_reading", "2TI 4:6-8; 4:17-18" },
                { "gospel", "MAT 16:13-19" },
            },
        },
        ["presentation-of-the-lord"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 23:7-10", "greek_vulgate" },
                    { "second_reading", "HEB 2:14-18" },
                    { "gospel", "LUK 2:22-40" },
                },
                ["B|I"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 23:7-10", "greek_vulgate" },
                    { "second_reading", "HEB 2:14-18" },
                    { "gospel", "LUK 2:22-40" },
                },
            },
        },
        ["simon-and-jude-apostles"] = {
            day = {
                { "first_reading", "EPH 2:19-22" },
                { "psalm", "PSA 18:1-4", "greek_vulgate" },
                { "gospel", "LUK 6:12-19" },
            },
        },
        ["stephen-the-first-martyr"] = {
            day = {
                { "first_reading", "ACT 6:8-10; 7:54-59" },
                { "psalm", "PSA 30:5", "greek_vulgate" },
                { "gospel", "MAT 10:17-22" },
            },
        },
        ["therese-of-the-child-jesus-and-the-holy-face-of-lisieux-virgin"] = {
            day = {
                { "first_reading", "ISA 66:10-14" },
                { "psalm", "PSA 130:1-3", "greek_vulgate" },
                { "gospel", "MAT 18:1-4" },
            },
        },
        ["thomas-apostle"] = {
            day = {
                { "first_reading", "EPH 2:19-22" },
                { "psalm", "PSA 116:1-2", "greek_vulgate" },
                { "gospel", "JHN 20:24-29" },
            },
        },
        ["timothy-of-ephesus-and-titus-of-crete-bishops"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 95:1-3; 95:7-8; 95:10", "greek_vulgate" },
                    { "gospel", "LUK 10:1-9" },
                },
                ["B|I"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 95:1-3; 95:7-8; 95:10", "greek_vulgate" },
                    { "gospel", "LUK 10:1-9" },
                },
            },
        },
        ["transfiguration-of-the-lord"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 96:1-2; 96:5-6; 96:9", "greek_vulgate" },
                    { "second_reading", "2PE 1:16-19" },
                    { "gospel", "MAT 17:1-9" },
                },
                ["B|I"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 96:1-2; 96:5-6; 96:9", "greek_vulgate" },
                    { "second_reading", "2PE 1:16-19" },
                    { "gospel", "MRK 9:2-10" },
                },
            },
        },
    },
    temporal = {
        ["01-03"] = {
            day = {
                { "first_reading", "1JN 2:29-3:6" },
                { "psalm", "PSA 97:1; 97:3-6", "greek_vulgate" },
                { "gospel", "JHN 1:29-34" },
            },
        },
        ["01-04"] = {
            day = {
                { "first_reading", "1JN 3:7-10" },
                { "psalm", "PSA 97:1; 97:7-9", "greek_vulgate" },
                { "gospel", "JHN 1:35-42" },
            },
        },
        ["01-05"] = {
            day = {
                { "first_reading", "1JN 3:11-21" },
                { "psalm", "PSA 99:1-5", "greek_vulgate" },
                { "gospel", "JHN 1:43-51" },
            },
        },
        ["12-17"] = {
            day = {
                { "first_reading", "GEN 49:2; 49:8-10" },
                { "psalm", "PSA 71:1-4; 71:7-8; 71:17", "greek_vulgate" },
                { "gospel", "MAT 1:1-17" },
            },
        },
        ["12-19"] = {
            day = {
                { "first_reading", "JDG 13:2-7; 13:24-25" },
                { "psalm", "PSA 70:3-6; 70:16-17", "greek_vulgate" },
                { "gospel", "LUK 1:5-25" },
            },
        },
        ["12-20"] = {
            day = {
                { "first_reading", "ISA 7:10-14" },
                { "psalm", "PSA 23:1-6", "greek_vulgate" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["12-22"] = {
            day = {
                { "first_reading", "1SA 1:24-28" },
                { "psalm", "1SA 2:1; 2:4-8", "greek_vulgate" },
                { "gospel", "LUK 1:46-56" },
            },
        },
        ["12-23"] = {
            day = {
                { "first_reading", "MAL 3:1-4; 3:23-24" },
                { "psalm", "PSA 24:4-5; 24:8-10; 24:14", "greek_vulgate" },
                { "gospel", "LUK 1:57-66" },
            },
        },
        ["12-24"] = {
            day = {
                { "first_reading", "2SA 7:1-5; 7:8-12; 7:14; 7:16" },
                { "psalm", "PSA 88:1-4; 88:26; 88:28", "greek_vulgate" },
                { "gospel", "LUK 1:67-79" },
            },
        },
        ["12-29"] = {
            day = {
                { "first_reading", "1JN 2:3-11" },
                { "psalm", "PSA 95:1-3; 95:5-6", "greek_vulgate" },
                { "gospel", "LUK 2:22-35" },
            },
        },
        ["12-30"] = {
            day = {
                { "first_reading", "1JN 2:12-17" },
                { "psalm", "PSA 95:7-10", "greek_vulgate" },
                { "gospel", "LUK 2:36-40" },
            },
        },
        ["12-31"] = {
            day = {
                { "first_reading", "1JN 2:18-21" },
                { "psalm", "PSA 95:1-2; 95:11-13", "greek_vulgate" },
                { "gospel", "JHN 1:1-18" },
            },
        },
        ["advent-1-monday"] = {
            day = {
                ["C|II"] = {
                    { "first_reading", "ISA 2:1-5" },
                    { "psalm", "PSA 121:1-9", "greek_vulgate" },
                    { "gospel", "MAT 8:5-11" },
                },
            },
        },
        ["advent-1-saturday"] = {
            day = {
                { "first_reading", "ISA 30:19-21; 30:23-26" },
                { "psalm", "PSA 146:1-6", "greek_vulgate" },
                { "gospel", "MAT 9:35-10:1; 9:5; 9:6-8" },
            },
        },
        ["advent-1-sunday"] = {
            day = {
                B = {
                    { "first_reading", "ISA 63:16-17; 63:19; 64:2-7" },
                    { "psalm", "PSA 79:1-2; 79:14-15; 79:17-18", "greek_vulgate" },
                    { "second_reading", "1CO 1:3-9" },
                    { "gospel", "MRK 13:33-37" },
                },
                C = {
                    { "first_reading", "JER 33:14-16" },
                    { "psalm", "PSA 24:4-5; 24:8-10; 24:14", "greek_vulgate" },
                    { "second_reading", "1TH 3:12-4:2" },
                    { "gospel", "LUK 21:25-28; 21:34-36" },
                },
            },
        },
        ["advent-1-thursday"] = {
            day = {
                { "first_reading", "ISA 26:1-6" },
                { "psalm", "PSA 117:1; 117:8-9; 117:19-21; 117:25-27", "greek_vulgate" },
                { "gospel", "MAT 7:21; 7:24-27" },
            },
        },
        ["advent-1-wednesday"] = {
            day = {
                { "first_reading", "ISA 25:6-10" },
                { "psalm", "PSA 22:1-6", "greek_vulgate" },
                { "gospel", "MAT 15:29-37" },
            },
        },
        ["advent-2-friday"] = {
            day = {
                { "first_reading", "ISA 48:17-19" },
                { "psalm", "PSA 1:1-4; 1:6", "greek_vulgate" },
                { "gospel", "MAT 11:16-19" },
            },
        },
        ["advent-2-monday"] = {
            day = {
                { "first_reading", "ISA 35:1-10" },
                { "psalm", "PSA 84:8-13", "greek_vulgate" },
                { "gospel", "LUK 5:17-26" },
            },
        },
        ["advent-2-saturday"] = {
            day = {
                { "first_reading", "SIR 48:1-4; 48:9-11" },
                { "psalm", "PSA 79:1-2; 79:14-15; 79:17-18", "greek_vulgate" },
                { "gospel", "MAT 17:10-13" },
            },
        },
        ["advent-2-sunday"] = {
            day = {
                B = {
                    { "first_reading", "ISA 40:1-5; 40:9-11" },
                    { "psalm", "PSA 84:8-13", "greek_vulgate" },
                    { "second_reading", "2PE 3:8-14" },
                    { "gospel", "MRK 1:1-8" },
                },
                C = {
                    { "first_reading", "BAR 5:1-9" },
                    { "psalm", "PSA 125:1-6", "greek_vulgate" },
                    { "second_reading", "PHP 1:4-6; 1:8-11" },
                    { "gospel", "LUK 3:1-6" },
                },
            },
        },
        ["advent-2-thursday"] = {
            day = {
                { "first_reading", "ISA 41:13-20" },
                { "psalm", "PSA 144:1; 144:9-13", "greek_vulgate" },
                { "gospel", "MAT 11:11-15" },
            },
        },
        ["advent-2-wednesday"] = {
            day = {
                { "first_reading", "ISA 40:25-31" },
                { "psalm", "PSA 102:1-4; 102:8; 102:10", "greek_vulgate" },
                { "gospel", "MAT 11:28-30" },
            },
        },
        ["advent-3-sunday"] = {
            day = {
                B = {
                    { "first_reading", "ISA 61:1-2; 61:10-11" },
                    { "psalm", "LUK 1:46-50; 1:53-54", "greek_vulgate" },
                    { "second_reading", "1TH 5:16-24" },
                    { "gospel", "JHN 1:6-8; 1:19-28" },
                },
                C = {
                    { "first_reading", "ZEP 3:14-18" },
                    { "psalm", "ISA 12:2-6", "greek_vulgate" },
                    { "second_reading", "PHP 4:4-7" },
                    { "gospel", "LUK 3:10-18" },
                },
            },
        },
        ["advent-3-thursday"] = {
            day = {
                II = {
                    { "first_reading", "ISA 54:1-10" },
                    { "psalm", "PSA 29:1; 29:3-5; 29:10-12", "greek_vulgate" },
                    { "gospel", "LUK 7:24-30" },
                },
            },
        },
        ["advent-3-tuesday"] = {
            day = {
                { "first_reading", "ZEP 3:1-2; 3:9-13" },
                { "psalm", "PSA 33:1-2; 33:5-6; 33:16-18; 33:22", "greek_vulgate" },
                { "gospel", "MAT 21:28-32" },
            },
        },
        ["advent-3-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ISA 45:6-8; 45:18; 45:21-25" },
                    { "psalm", "PSA 84:8-13", "greek_vulgate" },
                    { "gospel", "LUK 7:18-23" },
                },
                II = {
                    { "first_reading", "ISA 45:6-8; 45:18; 45:21-25" },
                    { "psalm", "PSA 84:8-13", "greek_vulgate" },
                    { "gospel", "LUK 7:18-23" },
                },
            },
        },
        ["advent-4-sunday"] = {
            day = {
                B = {
                    { "first_reading", "2SA 7:1-5; 7:8-12; 7:14; 7:16" },
                    { "psalm", "PSA 88:1-4; 88:26; 88:28", "greek_vulgate" },
                    { "second_reading", "ROM 16:25-27" },
                    { "gospel", "LUK 1:26-38" },
                },
                C = {
                    { "first_reading", "MIC 5:1-4" },
                    { "psalm", "PSA 79:1-2; 79:14-15; 79:17-18", "greek_vulgate" },
                    { "second_reading", "HEB 10:5-10" },
                    { "gospel", "LUK 1:39-45" },
                },
            },
        },
        ["after-epiphany-1"] = {
            day = {
                { "first_reading", "1JN 3:22-4:6" },
                { "psalm", "PSA 2:7-8; 2:10-12", "greek_vulgate" },
                { "gospel", "MAT 4:12-17; 4:23-25" },
            },
        },
        ["after-epiphany-2"] = {
            day = {
                { "first_reading", "1JN 4:7-10" },
                { "psalm", "PSA 71:1-4; 71:7-8", "greek_vulgate" },
                { "gospel", "MRK 6:34-44" },
            },
        },
        ["after-epiphany-3"] = {
            day = {
                { "first_reading", "1JN 4:11-18" },
                { "psalm", "PSA 71:1-2; 71:10; 71:12-13", "greek_vulgate" },
                { "gospel", "MRK 6:45-52" },
            },
        },
        ["after-epiphany-4"] = {
            day = {
                { "first_reading", "1JN 4:19-5:4" },
                { "psalm", "PSA 71:1-2; 71:14; 71:17", "greek_vulgate" },
                { "gospel", "LUK 4:14-22" },
            },
        },
        ["ash-wednesday"] = {
            day = {
                { "first_reading", "JOL 2:12-18" },
                { "psalm", "PSA 50:1-4; 50:10-12; 50:15", "greek_vulgate" },
                { "second_reading", "2CO 5:20-6:2" },
                { "gospel", "MAT 6:1-6; 6:16-18" },
            },
        },
        ["baptism-of-the-lord"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "ISA 42:1-4; 42:6-7" },
                    { "psalm", "PSA 28:1-4; 28:9-10", "greek_vulgate" },
                    { "second_reading", "ACT 10:34-38" },
                    { "gospel", "MAT 3:13-17" },
                },
                ["B|I"] = {
                    { "first_reading", "ISA 55:1-11" },
                    { "psalm", "ISA 12:2-6", "greek_vulgate" },
                    { "second_reading", "1JN 5:1-9" },
                    { "gospel", "MRK 1:7-11" },
                },
            },
        },
        ["christ-the-king"] = {
            day = {
                A = {
                    { "first_reading", "EZK 34:11-12; 34:15-17" },
                    { "psalm", "PSA 22:1-3; 22:5-6", "greek_vulgate" },
                    { "second_reading", "1CO 15:20-26; 15:28" },
                    { "gospel", "MAT 25:31-46" },
                },
                B = {
                    { "first_reading", "DAN 7:13-14" },
                    { "psalm", "PSA 92:1-2; 92:5", "greek_vulgate" },
                    { "second_reading", "REV 1:5-8" },
                    { "gospel", "JHN 18:33-37" },
                },
            },
        },
        ["christmas-2-sunday"] = {
            day = {
                { "first_reading", "SIR 24:1-2; 24:8-12" },
                { "psalm", "PSA 147:1-4; 147:8-9", "greek_vulgate" },
                { "second_reading", "EPH 1:3-6; 1:15-18" },
                { "gospel", "JHN 1:1-18" },
            },
        },
        ["corpus-christi"] = {
            day = {
                A = {
                    { "first_reading", "DEU 8:2-3; 8:14-16" },
                    { "psalm", "PSA 147:1-4; 147:8-9", "greek_vulgate" },
                    { "second_reading", "1CO 10:16-17" },
                    { "gospel", "JHN 6:51-58" },
                },
                B = {
                    { "first_reading", "EXO 24:3-8" },
                    { "psalm", "PSA 115:3-4; 115:6-9", "greek_vulgate" },
                    { "second_reading", "HEB 9:11-15" },
                    { "gospel", "MRK 14:12-16; 14:22-26" },
                },
            },
        },
        ["easter-1-friday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 117:1-2; 117:4; 117:22-27", "greek_vulgate" },
                    { "gospel", "JHN 21:1-14" },
                },
                ["B|I"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 117:1-2; 117:4; 117:22-27", "greek_vulgate" },
                    { "gospel", "JHN 21:1-14" },
                },
            },
        },
        ["easter-1-monday"] = {
            day = {
                { "first_reading", "ACT 2:14; 2:22-33" },
                { "psalm", "PSA 15:1-2; 15:5; 15:7-11", "greek_vulgate" },
                { "gospel", "MAT 28:8-15" },
            },
        },
        ["easter-1-saturday"] = {
            day = {
                { "first_reading", "ACT 4:13-21" },
                { "psalm", "PSA 117:1; 117:14-15; 117:16-21", "greek_vulgate" },
                { "gospel", "MRK 16:9-15" },
            },
        },
        ["easter-1-thursday"] = {
            day = {
                { "first_reading", "ACT 3:11-26" },
                { "psalm", "PSA 8:1; 8:4-8", "greek_vulgate" },
                { "gospel", "LUK 24:35-48" },
            },
        },
        ["easter-1-tuesday"] = {
            day = {
                { "first_reading", "ACT 2:36-41" },
                { "psalm", "PSA 32:4-5; 32:18-20; 32:22", "greek_vulgate" },
                { "gospel", "JHN 20:11-18" },
            },
        },
        ["easter-1-wednesday"] = {
            day = {
                { "first_reading", "ACT 3:1-10" },
                { "psalm", "PSA 104:1-4; 104:6-9", "greek_vulgate" },
                { "gospel", "LUK 24:13-35" },
            },
        },
        ["easter-2-friday"] = {
            day = {
                { "first_reading", "ACT 5:34-42" },
                { "psalm", "PSA 26:1; 26:4; 26:13-14", "greek_vulgate" },
                { "gospel", "JHN 6:1-15" },
            },
        },
        ["easter-2-monday"] = {
            day = {
                { "first_reading", "ACT 4:23-31" },
                { "psalm", "PSA 2:1-9", "greek_vulgate" },
                { "gospel", "JHN 3:1-8" },
            },
        },
        ["easter-2-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 2:42-47" },
                    { "psalm", "PSA 117:2-4; 117:13-15; 117:22-24", "greek_vulgate" },
                    { "second_reading", "1PE 1:3-9" },
                    { "gospel", "JHN 20:19-31" },
                },
                B = {
                    { "first_reading", "ACT 4:32-35" },
                    { "psalm", "PSA 117:2-4; 117:13-15; 117:22-24", "greek_vulgate" },
                    { "second_reading", "1JN 5:1-6" },
                    { "gospel", "JHN 20:19-31" },
                },
            },
        },
        ["easter-2-thursday"] = {
            day = {
                { "first_reading", "ACT 5:27-33" },
                { "psalm", "PSA 33:1; 33:8; 33:16-19", "greek_vulgate" },
                { "gospel", "JHN 3:31-36" },
            },
        },
        ["easter-2-tuesday"] = {
            day = {
                { "first_reading", "ACT 4:32-37" },
                { "psalm", "PSA 92:1-2; 92:5", "greek_vulgate" },
                { "gospel", "JHN 3:7-15" },
            },
        },
        ["easter-2-wednesday"] = {
            day = {
                { "first_reading", "ACT 5:17-26" },
                { "psalm", "PSA 33:1-8", "greek_vulgate" },
                { "gospel", "JHN 3:16-21" },
            },
        },
        ["easter-3-friday"] = {
            day = {
                { "first_reading", "ACT 9:1-20" },
                { "psalm", "PSA 116:1-2", "greek_vulgate" },
                { "gospel", "JHN 6:52-59" },
            },
        },
        ["easter-3-monday"] = {
            day = {
                { "first_reading", "ACT 6:8-15" },
                { "psalm", "PSA 118:23-24; 118:26-27; 118:29-30", "greek_vulgate" },
                { "gospel", "JHN 6:22-29" },
            },
        },
        ["easter-3-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ACT 9:31-42" },
                    { "psalm", "PSA 115:3-8", "greek_vulgate" },
                    { "gospel", "JHN 6:60-69" },
                },
            },
        },
        ["easter-3-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 2:14; 2:22-33" },
                    { "psalm", "PSA 15:1-2; 15:5; 15:7-11", "greek_vulgate" },
                    { "second_reading", "1PE 1:17-21" },
                    { "gospel", "LUK 24:13-35" },
                },
                B = {
                    { "first_reading", "ACT 3:13-15; 3:17-19" },
                    { "psalm", "PSA 4:1; 4:3; 4:6-8", "greek_vulgate" },
                    { "second_reading", "1JN 2:1-5" },
                    { "gospel", "LUK 24:35-48" },
                },
            },
        },
        ["easter-3-thursday"] = {
            day = {
                { "first_reading", "ACT 8:26-40" },
                { "psalm", "PSA 65:8-9; 65:16-17; 65:20", "greek_vulgate" },
                { "gospel", "JHN 6:44-51" },
            },
        },
        ["easter-3-tuesday"] = {
            day = {
                { "first_reading", "ACT 7:51-8:1" },
                { "psalm", "PSA 30:2-3; 30:5-6; 30:7; 30:16; 30:20", "greek_vulgate" },
                { "gospel", "JHN 6:30-35" },
            },
        },
        ["easter-3-wednesday"] = {
            day = {
                { "first_reading", "ACT 8:1-8" },
                { "psalm", "PSA 65:1-3; 65:4-7", "greek_vulgate" },
                { "gospel", "JHN 6:35-40" },
            },
        },
        ["easter-4-friday"] = {
            day = {
                { "first_reading", "ACT 13:26-33" },
                { "psalm", "PSA 2:6-11", "greek_vulgate" },
                { "gospel", "JHN 14:1-6" },
            },
        },
        ["easter-4-monday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 11:1-18" },
                    { "psalm", "PSA 41:1-2; 42:3-4", "greek_vulgate" },
                    { "gospel", "JHN 10:1-10" },
                },
                B = {
                    { "first_reading", "ACT 11:1-18" },
                    { "psalm", "PSA 41:1-2; 42:3-4", "greek_vulgate" },
                    { "gospel", "JHN 10:1-10" },
                },
            },
        },
        ["easter-4-saturday"] = {
            day = {
                { "first_reading", "ACT 13:44-52" },
                { "psalm", "PSA 97:1-4", "greek_vulgate" },
                { "gospel", "JHN 14:7-14" },
            },
        },
        ["easter-4-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 2:14; 2:36-41" },
                    { "psalm", "PSA 22:1-6", "greek_vulgate" },
                    { "second_reading", "1PE 2:20-25" },
                    { "gospel", "JHN 10:1-10" },
                },
                B = {
                    { "first_reading", "ACT 4:8-12" },
                    { "psalm", "PSA 117:1; 117:8-9; 117:21-23; 117:26; 117:28-29", "greek_vulgate" },
                    { "second_reading", "1JN 3:1-2" },
                    { "gospel", "JHN 10:11-18" },
                },
            },
        },
        ["easter-4-thursday"] = {
            day = {
                { "first_reading", "ACT 13:13-25" },
                { "psalm", "PSA 88:1-2; 88:20-21; 88:24; 88:26", "greek_vulgate" },
                { "gospel", "JHN 13:16-20" },
            },
        },
        ["easter-4-tuesday"] = {
            day = {
                { "first_reading", "ACT 11:19-26" },
                { "psalm", "PSA 86:1-7", "greek_vulgate" },
                { "gospel", "JHN 10:22-30" },
            },
        },
        ["easter-4-wednesday"] = {
            day = {
                { "first_reading", "ACT 12:24-13:5" },
                { "psalm", "PSA 66:1-2; 66:4-5; 66:7", "greek_vulgate" },
                { "gospel", "JHN 12:44-50" },
            },
        },
        ["easter-5-friday"] = {
            day = {
                { "first_reading", "ACT 15:22-31" },
                { "psalm", "PSA 56:7-9; 56:11", "greek_vulgate" },
                { "gospel", "JHN 15:12-17" },
            },
        },
        ["easter-5-monday"] = {
            day = {
                { "first_reading", "ACT 14:5-18" },
                { "psalm", "PSA 113:1-4; 113:15-16", "greek_vulgate" },
                { "gospel", "JHN 14:21-26" },
            },
        },
        ["easter-5-saturday"] = {
            day = {
                { "first_reading", "ACT 16:1-10" },
                { "psalm", "PSA 99:1-3; 99:5", "greek_vulgate" },
                { "gospel", "JHN 15:18-21" },
            },
        },
        ["easter-5-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 6:1-7" },
                    { "psalm", "PSA 32:1-2; 32:4-5; 32:18-19", "greek_vulgate" },
                    { "second_reading", "1PE 2:4-9" },
                    { "gospel", "JHN 14:1-12" },
                },
                B = {
                    { "first_reading", "ACT 9:26-31" },
                    { "psalm", "PSA 21:25-27; 21:29-31", "greek_vulgate" },
                    { "second_reading", "1JN 3:18-24" },
                    { "gospel", "JHN 15:1-8" },
                },
            },
        },
        ["easter-5-thursday"] = {
            day = {
                { "first_reading", "ACT 15:7-21" },
                { "psalm", "PSA 95:1-3; 95:10", "greek_vulgate" },
                { "gospel", "JHN 15:9-11" },
            },
        },
        ["easter-5-tuesday"] = {
            day = {
                { "first_reading", "ACT 14:19-28" },
                { "psalm", "PSA 144:10-13; 144:21", "greek_vulgate" },
                { "gospel", "JHN 14:27-31" },
            },
        },
        ["easter-5-wednesday"] = {
            day = {
                { "first_reading", "ACT 15:1-6" },
                { "psalm", "PSA 121:1-5", "greek_vulgate" },
                { "gospel", "JHN 15:1-8" },
            },
        },
        ["easter-6-friday"] = {
            day = {
                { "first_reading", "ACT 18:9-18" },
                { "psalm", "PSA 46:1-6", "greek_vulgate" },
                { "gospel", "JHN 16:20-23" },
            },
        },
        ["easter-6-monday"] = {
            day = {
                { "first_reading", "ACT 16:11-15" },
                { "psalm", "PSA 149:1-6; 149:9", "greek_vulgate" },
                { "gospel", "JHN 15:26-16:4" },
            },
        },
        ["easter-6-saturday"] = {
            day = {
                { "first_reading", "ACT 18:23-28" },
                { "psalm", "PSA 46:1-2; 46:7-9", "greek_vulgate" },
                { "gospel", "JHN 16:23-28" },
            },
        },
        ["easter-6-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 8:5-8; 8:14-17" },
                    { "psalm", "PSA 65:1-7; 65:16; 65:20", "greek_vulgate" },
                    { "second_reading", "1PE 3:15-18" },
                    { "gospel", "JHN 14:15-21" },
                },
                B = {
                    { "first_reading", "ACT 10:25-26; 10:34-35; 10:44-48" },
                    { "psalm", "PSA 97:1-4", "greek_vulgate" },
                    { "second_reading", "1JN 4:7-10" },
                    { "gospel", "JHN 15:9-17" },
                },
            },
        },
        ["easter-6-tuesday"] = {
            day = {
                { "first_reading", "ACT 16:22-34" },
                { "psalm", "PSA 137:1-3; 137:7-8", "greek_vulgate" },
                { "gospel", "JHN 16:5-11" },
            },
        },
        ["easter-6-wednesday"] = {
            day = {
                { "first_reading", "ACT 17:15; 17:22" },
                { "psalm", "PSA 148:1-2; 148:11-14", "greek_vulgate" },
                { "gospel", "JHN 16:12-15" },
            },
        },
        ["easter-7-friday"] = {
            day = {
                { "first_reading", "ACT 25:13-21" },
                { "psalm", "PSA 102:1-2; 102:11-12; 102:19-20", "greek_vulgate" },
                { "gospel", "JHN 21:15-19" },
            },
        },
        ["easter-7-monday"] = {
            day = {
                { "first_reading", "ACT 19:1-8" },
                { "psalm", "PSA 67:1-6", "greek_vulgate" },
                { "gospel", "JHN 16:29-33" },
            },
        },
        ["easter-7-saturday"] = {
            day = {
                { "first_reading", "ACT 28:16-20; 28:30-31" },
                { "psalm", "PSA 10:4-5; 10:7", "greek_vulgate" },
                { "gospel", "JHN 21:20-25" },
            },
        },
        ["easter-7-thursday"] = {
            day = {
                { "first_reading", "ACT 22:30; 23:6-11" },
                { "psalm", "PSA 15:1-2; 15:5; 15:7-11", "greek_vulgate" },
                { "gospel", "JHN 17:20-26" },
            },
        },
        ["easter-7-tuesday"] = {
            day = {
                { "first_reading", "ACT 20:17-27" },
                { "psalm", "PSA 67:9-10; 67:19-20", "greek_vulgate" },
                { "gospel", "JHN 17:1-11" },
            },
        },
        ["easter-7-wednesday"] = {
            day = {
                { "first_reading", "ACT 20:28-38" },
                { "psalm", "PSA 67:28-29; 67:32-35", "greek_vulgate" },
                { "gospel", "JHN 17:11-19" },
            },
        },
        ["easter-sunday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "ACT 10:34; 10:37-43" },
                    { "psalm", "PSA 117:1-2; 117:16-17; 117:22-23", "greek_vulgate" },
                    { "second_reading", "COL 3:1-4" },
                    { "gospel", "JHN 20:1-9" },
                },
                ["B|I"] = {
                    { "first_reading", "ACT 10:34; 10:37-43" },
                    { "psalm", "PSA 117:1-2; 117:16-17; 117:22-23", "greek_vulgate" },
                    { "second_reading", "COL 3:1-4" },
                    { "gospel", "JHN 20:1-9" },
                },
            },
        },
        ["epiphany-of-the-lord"] = {
            day = {
                { "first_reading", "ISA 60:1-6" },
                { "psalm", "PSA 71:1-2; 71:7-8; 71:10-13", "greek_vulgate" },
                { "second_reading", "EPH 3:2-3; 3:5-6" },
                { "gospel", "MAT 2:1-12" },
            },
        },
        ["friday-after-ash-wednesday"] = {
            day = {
                { "first_reading", "ISA 58:1-9" },
                { "psalm", "PSA 50:1-4; 50:16-17", "greek_vulgate" },
                { "gospel", "MAT 9:14-15" },
            },
        },
        ["holy-family"] = {
            day = {
                ["B|I"] = {
                    { "first_reading", "GEN 15:1-6; 21:1-3" },
                    { "psalm", "PSA 104:1-6; 104:8-9", "greek_vulgate" },
                    { "second_reading", "HEB 11:8; 11:11-12; 11:17-19" },
                    { "gospel", "LUK 2:22-40" },
                },
                ["C|II"] = {
                    { "first_reading", "1SA 1:20-22; 1:24-28" },
                    { "psalm", "PSA 83:1-2; 83:4-5; 83:8-9", "greek_vulgate" },
                    { "second_reading", "1JN 3:1-2; 3:21-24" },
                    { "gospel", "LUK 2:41-52" },
                },
            },
        },
        ["lent-1-friday"] = {
            day = {
                { "first_reading", "EZK 18:21-28" },
                { "psalm", "PSA 129:1-8", "greek_vulgate" },
                { "gospel", "MAT 5:20-26" },
            },
        },
        ["lent-1-monday"] = {
            day = {
                { "first_reading", "LEV 19:1-2; 19:11-18" },
                { "psalm", "PSA 18:7-9; 18:14", "greek_vulgate" },
                { "gospel", "MAT 25:31-46" },
            },
        },
        ["lent-1-saturday"] = {
            day = {
                { "first_reading", "DEU 26:16-19" },
                { "psalm", "PSA 118:1-2; 118:4-5; 118:7-8", "greek_vulgate" },
                { "gospel", "MAT 5:43-48" },
            },
        },
        ["lent-1-sunday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "GEN 2:7-9; 3:1-7" },
                    { "psalm", "PSA 50:1-4; 50:10-12; 50:15", "greek_vulgate" },
                    { "second_reading", "ROM 5:12-19" },
                    { "gospel", "MAT 4:1-11" },
                },
                ["B|I"] = {
                    { "first_reading", "GEN 9:8-15" },
                    { "psalm", "PSA 24:4-9", "greek_vulgate" },
                    { "second_reading", "1PE 3:18-22" },
                    { "gospel", "MRK 1:12-15" },
                },
            },
        },
        ["lent-1-thursday"] = {
            day = {
                { "first_reading", "EST 4:17" },
                { "psalm", "PSA 137:1-3; 137:7-8", "greek_vulgate" },
                { "gospel", "MAT 7:7-12" },
            },
        },
        ["lent-1-tuesday"] = {
            day = {
                { "first_reading", "ISA 55:10-11" },
                { "psalm", "PSA 33:3-6; 33:15-18", "greek_vulgate" },
                { "gospel", "MAT 6:7-15" },
            },
        },
        ["lent-1-wednesday"] = {
            day = {
                { "first_reading", "JON 3:1-10" },
                { "psalm", "PSA 50:1-2; 50:10-11; 50:16-17", "greek_vulgate" },
                { "gospel", "LUK 11:29-32" },
            },
        },
        ["lent-2-friday"] = {
            day = {
                { "first_reading", "GEN 37:3-4; 37:12-13; 37:17-28" },
                { "psalm", "PSA 104:16-21", "greek_vulgate" },
                { "gospel", "MAT 21:33-43; 21:45-46" },
            },
        },
        ["lent-2-monday"] = {
            day = {
                II = {
                    { "first_reading", "DAN 9:4-10" },
                    { "psalm", "PSA 78:8-9; 78:11; 78:13", "greek_vulgate" },
                    { "gospel", "LUK 6:36-38" },
                },
            },
        },
        ["lent-2-saturday"] = {
            day = {
                { "first_reading", "MIC 7:14-15; 7:18-20" },
                { "psalm", "PSA 102:1-4; 102:9-12", "greek_vulgate" },
                { "gospel", "LUK 15:1-3; 15:11-32" },
            },
        },
        ["lent-2-sunday"] = {
            day = {
                A = {
                    { "first_reading", "GEN 12:1-4" },
                    { "psalm", "PSA 32:4-5; 32:18-20; 32:22", "greek_vulgate" },
                    { "second_reading", "2TI 1:8-10" },
                    { "gospel", "MAT 17:1-9" },
                },
                B = {
                    { "first_reading", "GEN 22:1-2; 22:9; 22:10-13; 22:15-18" },
                    { "psalm", "PSA 115:1; 115:6-10", "greek_vulgate" },
                    { "second_reading", "ROM 8:31-34" },
                    { "gospel", "MRK 9:2-10" },
                },
            },
        },
        ["lent-2-thursday"] = {
            day = {
                { "first_reading", "JER 17:5-10" },
                { "psalm", "PSA 1:1-4; 1:6", "greek_vulgate" },
                { "gospel", "LUK 16:19-31" },
            },
        },
        ["lent-2-tuesday"] = {
            day = {
                { "first_reading", "ISA 1:10; 1:16-20" },
                { "psalm", "PSA 49:8-9; 49:16-17; 49:21; 49:23", "greek_vulgate" },
                { "gospel", "MAT 23:1-12" },
            },
        },
        ["lent-2-wednesday"] = {
            day = {
                { "first_reading", "JER 18:18-20" },
                { "psalm", "PSA 30:4-5; 30:13-15", "greek_vulgate" },
                { "gospel", "MAT 20:17-28" },
            },
        },
        ["lent-3-friday"] = {
            day = {
                { "first_reading", "HOS 14:2-10" },
                { "psalm", "PSA 80:5-10; 80:13; 80:16", "greek_vulgate" },
                { "gospel", "MRK 12:28-34" },
            },
        },
        ["lent-3-monday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "2KI 5:1-15" },
                    { "psalm", "PSA 41:1-2; 42:3-4", "greek_vulgate" },
                    { "gospel", "LUK 4:24-30" },
                },
                ["B|I"] = {
                    { "first_reading", "2KI 5:1-15" },
                    { "psalm", "PSA 41:1-2; 42:3-4", "greek_vulgate" },
                    { "gospel", "LUK 4:24-30" },
                },
            },
        },
        ["lent-3-saturday"] = {
            day = {
                { "first_reading", "HOS 6:1-6" },
                { "psalm", "PSA 50:1-2; 50:16-19", "greek_vulgate" },
                { "gospel", "LUK 18:9-14" },
            },
        },
        ["lent-3-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EXO 17:3-7" },
                    { "psalm", "PSA 94:1-2; 94:6-9", "greek_vulgate" },
                    { "second_reading", "ROM 5:1-2; 5:5-8" },
                    { "gospel", "JHN 4:5-42" },
                },
                B = {
                    { "first_reading", "EXO 20:1-17" },
                    { "psalm", "PSA 18:7-10", "greek_vulgate" },
                    { "second_reading", "1CO 1:22-25" },
                    { "gospel", "JHN 2:13-25" },
                },
            },
        },
        ["lent-3-thursday"] = {
            day = {
                { "first_reading", "JER 7:23-28" },
                { "psalm", "PSA 94:1-2; 94:6-9", "greek_vulgate" },
                { "gospel", "LUK 11:14-23" },
            },
        },
        ["lent-3-tuesday"] = {
            day = {
                { "first_reading", "DAN 3:25; 3:34-43" },
                { "psalm", "PSA 24:4-5; 24:6-7; 24:8-9", "greek_vulgate" },
                { "gospel", "MAT 18:21-35" },
            },
        },
        ["lent-3-wednesday"] = {
            day = {
                { "first_reading", "DEU 4:1; 4:5-9" },
                { "psalm", "PSA 147:1-2; 147:4-5; 147:8-9", "greek_vulgate" },
                { "gospel", "MAT 5:17-19" },
            },
        },
        ["lent-4-friday"] = {
            day = {
                { "first_reading", "WIS 2:1; 2:12-22" },
                { "psalm", "PSA 33:16-20; 33:22", "greek_vulgate" },
                { "gospel", "JHN 7:1-2; 7:10; 7:25-30" },
            },
        },
        ["lent-4-monday"] = {
            day = {
                { "first_reading", "ISA 65:17-21" },
                { "psalm", "PSA 29:1; 29:3-5; 29:10-12", "greek_vulgate" },
                { "gospel", "JHN 4:43-54" },
            },
        },
        ["lent-4-saturday"] = {
            day = {
                { "first_reading", "JER 11:18-20" },
                { "psalm", "PSA 7:1-2; 7:8-11", "greek_vulgate" },
                { "gospel", "JHN 7:40-53" },
            },
        },
        ["lent-4-sunday"] = {
            day = {
                A = {
                    { "first_reading", "1SA 16:1; 16:6-7; 16:10-13" },
                    { "psalm", "PSA 22:1-6", "greek_vulgate" },
                    { "second_reading", "EPH 5:8-14" },
                    { "gospel", "JHN 9:1-41" },
                },
                B = {
                    { "first_reading", "2CH 36:14-16; 36:19-23" },
                    { "psalm", "PSA 136:1-6", "greek_vulgate" },
                    { "second_reading", "EPH 2:4-10" },
                    { "gospel", "JHN 3:14-21" },
                },
            },
        },
        ["lent-4-thursday"] = {
            day = {
                { "first_reading", "EXO 32:7-14" },
                { "psalm", "PSA 105:19-23", "greek_vulgate" },
                { "gospel", "JHN 5:31-47" },
            },
        },
        ["lent-4-tuesday"] = {
            day = {
                { "first_reading", "EZK 47:1-9; 47:12" },
                { "psalm", "PSA 45:1-2; 45:4-5; 45:7-8", "greek_vulgate" },
                { "gospel", "JHN 5:1-16" },
            },
        },
        ["lent-4-wednesday"] = {
            day = {
                { "first_reading", "ISA 49:8-15" },
                { "psalm", "PSA 144:8-9; 144:13-14; 144:17-18", "greek_vulgate" },
                { "gospel", "JHN 5:17-30" },
            },
        },
        ["lent-5-friday"] = {
            day = {
                { "first_reading", "JER 20:10-13" },
                { "psalm", "PSA 17:1-6", "greek_vulgate" },
                { "gospel", "JHN 10:31-42" },
            },
        },
        ["lent-5-monday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62" },
                    { "psalm", "PSA 22:1-6", "greek_vulgate" },
                    { "gospel", "JHN 8:1-11" },
                },
                ["B|I"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62" },
                    { "psalm", "PSA 22:1-6", "greek_vulgate" },
                    { "gospel", "JHN 8:1-11" },
                },
            },
        },
        ["lent-5-saturday"] = {
            day = {
                { "first_reading", "EZK 37:21-28" },
                { "psalm", "JER 31:10-13", "greek_vulgate" },
                { "gospel", "JHN 11:45-56" },
            },
        },
        ["lent-5-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EZK 37:12-14" },
                    { "psalm", "PSA 129:1-8", "greek_vulgate" },
                    { "second_reading", "ROM 8:8-11" },
                    { "gospel", "JHN 11:1-45" },
                },
                B = {
                    { "first_reading", "JER 31:31-34" },
                    { "psalm", "PSA 50:1-2; 50:10-13", "greek_vulgate" },
                    { "second_reading", "HEB 5:7-9" },
                    { "gospel", "JHN 12:20-33" },
                },
            },
        },
        ["lent-5-thursday"] = {
            day = {
                { "first_reading", "GEN 17:3-9" },
                { "psalm", "PSA 104:4-9", "greek_vulgate" },
                { "gospel", "JHN 8:51-59" },
            },
        },
        ["lent-5-tuesday"] = {
            day = {
                { "first_reading", "NUM 21:4-9" },
                { "psalm", "PSA 101:1-2; 101:15-20", "greek_vulgate" },
                { "gospel", "JHN 8:21-30" },
            },
        },
        ["lent-5-wednesday"] = {
            day = {
                { "first_reading", "DAN 3:14-20; 3:91-92; 3:95" },
                { "psalm", "DAN 3:52-56", "greek_vulgate" },
                { "gospel", "JHN 8:31-42" },
            },
        },
        ["lent-6-monday"] = {
            day = {
                { "first_reading", "ISA 42:1-7" },
                { "psalm", "PSA 26:1-3; 26:13-14", "greek_vulgate" },
                { "gospel", "JHN 12:1-11" },
            },
        },
        ["lent-6-tuesday"] = {
            day = {
                { "first_reading", "ISA 49:1-6" },
                { "psalm", "PSA 70:1-6; 70:15; 70:17", "greek_vulgate" },
                { "gospel", "JHN 13:21-33; 13:36-38" },
            },
        },
        ["lent-6-wednesday"] = {
            day = {
                { "first_reading", "ISA 50:4-9" },
                { "psalm", "PSA 68:7-9; 68:20-21; 68:30; 68:32-33", "greek_vulgate" },
                { "gospel", "MAT 26:14-25" },
            },
        },
        ["mary-mother-of-god"] = {
            day = {
                { "first_reading", "NUM 6:22-27" },
                { "psalm", "PSA 66:1-2; 66:4-5; 66:7", "greek_vulgate" },
                { "second_reading", "GAL 4:4-7" },
                { "gospel", "LUK 2:16-21" },
            },
        },
        ["most-holy-trinity"] = {
            day = {
                A = {
                    { "first_reading", "EXO 34:4-6; 34:8-9" },
                    { "psalm", "DAN 3:52-56", "greek_vulgate" },
                    { "second_reading", "2CO 13:11-13" },
                    { "gospel", "JHN 3:16-18" },
                },
                B = {
                    { "first_reading", "DEU 4:32-34; 4:39-40" },
                    { "psalm", "PSA 32:4-6; 32:9; 32:18-20; 32:22", "greek_vulgate" },
                    { "second_reading", "ROM 8:14-17" },
                    { "gospel", "MAT 28:16-20" },
                },
            },
        },
        ["most-sacred-heart-of-jesus"] = {
            day = {
                A = {
                    { "first_reading", "DEU 7:6-11" },
                    { "psalm", "PSA 102:1-4; 102:6-8; 102:10", "greek_vulgate" },
                    { "second_reading", "1JN 4:7-16" },
                    { "gospel", "MAT 11:25-30" },
                },
                B = {
                    { "first_reading", "HOS 11:1; 11:3-4; 11:8-9" },
                    { "psalm", "ISA 12:2-6", "greek_vulgate" },
                    { "second_reading", "EPH 3:8-12; 3:14-19" },
                    { "gospel", "JHN 19:31-37" },
                },
            },
        },
        ["ordinary-time-1-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 4:1-5; 4:11" },
                    { "psalm", "PSA 77:3-4; 77:6-8", "greek_vulgate" },
                    { "gospel", "MRK 2:1-12" },
                },
                II = {
                    { "first_reading", "1SA 8:4-7; 8:10-22" },
                    { "psalm", "PSA 77:3-4; 77:6-8", "greek_vulgate" },
                    { "gospel", "MRK 2:1-12" },
                },
            },
        },
        ["ordinary-time-1-monday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 1:1-6" },
                    { "psalm", "PSA 115:3-10", "greek_vulgate" },
                    { "gospel", "MRK 1:14-20" },
                },
                II = {
                    { "first_reading", "1SA 1:1-8" },
                    { "psalm", "PSA 115:3-10", "greek_vulgate" },
                    { "gospel", "MRK 1:14-20" },
                },
            },
        },
        ["ordinary-time-1-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 4:12-16" },
                    { "psalm", "PSA 18:7-9; 18:14", "greek_vulgate" },
                    { "gospel", "MRK 2:13-17" },
                },
            },
        },
        ["ordinary-time-1-thursday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 3:7-14" },
                    { "psalm", "PSA 94:6-11", "greek_vulgate" },
                    { "gospel", "MRK 1:40-45" },
                },
                II = {
                    { "first_reading", "1SA 4:1-11" },
                    { "psalm", "PSA 94:6-11", "greek_vulgate" },
                    { "gospel", "MRK 1:40-45" },
                },
            },
        },
        ["ordinary-time-1-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 2:5-12" },
                    { "psalm", "PSA 8:1; 8:4-8", "greek_vulgate" },
                    { "gospel", "MRK 1:21-28" },
                },
                II = {
                    { "first_reading", "1SA 1:9-20" },
                    { "psalm", "PSA 8:1; 8:4-8", "greek_vulgate" },
                    { "gospel", "MRK 1:21-28" },
                },
            },
        },
        ["ordinary-time-1-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 2:14-18" },
                    { "psalm", "PSA 104:1-4; 104:6-9", "greek_vulgate" },
                    { "gospel", "MRK 1:29-39" },
                },
                II = {
                    { "first_reading", "1SA 3:1-10; 3:19-20" },
                    { "psalm", "PSA 104:1-4; 104:6-9", "greek_vulgate" },
                    { "gospel", "MRK 1:29-39" },
                },
            },
        },
        ["ordinary-time-10-monday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 1:1-7" },
                    { "psalm", "PSA 33:1-6", "greek_vulgate" },
                    { "gospel", "MAT 5:1-12" },
                },
                II = {
                    { "first_reading", "1KI 17:1-6" },
                    { "psalm", "PSA 33:1-6", "greek_vulgate" },
                    { "gospel", "MAT 5:1-12" },
                },
            },
        },
        ["ordinary-time-10-saturday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 4:16-5:1" },
                    { "psalm", "PSA 137:1-3; 137:7-8", "greek_vulgate" },
                    { "gospel", "MAT 5:33-37" },
                },
                II = {
                    { "first_reading", "1KI 19:9; 19:11-16" },
                    { "psalm", "PSA 137:1-3; 137:7-8", "greek_vulgate" },
                    { "gospel", "MAT 5:33-37" },
                },
            },
        },
        ["ordinary-time-10-sunday"] = {
            day = {
                B = {
                    { "first_reading", "GEN 3:9-15" },
                    { "psalm", "PSA 129:1-8", "greek_vulgate" },
                    { "second_reading", "2CO 4:13-5:1" },
                    { "gospel", "MRK 3:20-35" },
                },
            },
        },
        ["ordinary-time-10-thursday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 3:15-4:1; 3:3-6" },
                    { "psalm", "PSA 84:8-13", "greek_vulgate" },
                    { "gospel", "MAT 5:20-26" },
                },
            },
        },
        ["ordinary-time-10-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 1:18-22" },
                    { "psalm", "PSA 118:129-133; 118:135", "greek_vulgate" },
                    { "gospel", "MAT 5:13-16" },
                },
                II = {
                    { "first_reading", "1KI 17:7-16" },
                    { "psalm", "PSA 118:129-133; 118:135", "greek_vulgate" },
                    { "gospel", "MAT 5:13-16" },
                },
            },
        },
        ["ordinary-time-10-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 3:4-11" },
                    { "psalm", "PSA 98:5-9", "greek_vulgate" },
                    { "gospel", "MAT 5:17-19" },
                },
                II = {
                    { "first_reading", "1KI 18:20-39" },
                    { "psalm", "PSA 98:5-9", "greek_vulgate" },
                    { "gospel", "MAT 5:17-19" },
                },
            },
        },
        ["ordinary-time-11-friday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 8:9-15" },
                    { "psalm", "PSA 116:1-2", "greek_vulgate" },
                    { "gospel", "MAT 6:19-23" },
                },
                II = {
                    { "first_reading", "2KI 4:8-16" },
                    { "psalm", "PSA 116:1-2", "greek_vulgate" },
                    { "gospel", "MAT 6:19-23" },
                },
            },
        },
        ["ordinary-time-11-monday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 5:1-10" },
                    { "psalm", "PSA 56:1-2; 56:5; 56:10", "greek_vulgate" },
                    { "gospel", "MAT 5:38-42" },
                },
                II = {
                    { "first_reading", "1KI 21:1-16" },
                    { "psalm", "PSA 56:1-2; 56:5; 56:10", "greek_vulgate" },
                    { "gospel", "MAT 5:38-42" },
                },
            },
        },
        ["ordinary-time-11-saturday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 8:16-24" },
                    { "psalm", "PSA 41:1-2; 42:3-4", "greek_vulgate" },
                    { "gospel", "MAT 6:24-34" },
                },
                II = {
                    { "first_reading", "2KI 5:1-15" },
                    { "psalm", "PSA 41:1-2; 42:3-4", "greek_vulgate" },
                    { "gospel", "MAT 6:24-34" },
                },
            },
        },
        ["ordinary-time-11-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EXO 19:2-6" },
                    { "psalm", "PSA 99:1-3; 99:5", "greek_vulgate" },
                    { "second_reading", "ROM 5:6-11" },
                    { "gospel", "MAT 9:36-10:8" },
                },
                B = {
                    { "first_reading", "EZK 17:22-24" },
                    { "psalm", "PSA 91:1-2; 91:12-15", "greek_vulgate" },
                    { "second_reading", "2CO 5:6-10" },
                    { "gospel", "MRK 4:26-34" },
                },
            },
        },
        ["ordinary-time-11-thursday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 8:1-9" },
                    { "psalm", "PSA 145:1-2; 145:5-9", "greek_vulgate" },
                    { "gospel", "MAT 6:7-15" },
                },
                II = {
                    { "first_reading", "SIR 48:1-14" },
                    { "psalm", "PSA 145:1-2; 145:5-9", "greek_vulgate" },
                    { "gospel", "MAT 6:7-15" },
                },
            },
        },
        ["ordinary-time-11-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 5:14-21" },
                    { "psalm", "PSA 102:1-4; 102:8-12", "greek_vulgate" },
                    { "gospel", "MAT 5:43-48" },
                },
                II = {
                    { "first_reading", "1KI 21:17-29" },
                    { "psalm", "PSA 102:1-4; 102:8-12", "greek_vulgate" },
                    { "gospel", "MAT 5:43-48" },
                },
            },
        },
        ["ordinary-time-11-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 6:1-10" },
                    { "psalm", "PSA 33:1-2; 33:10-11; 33:16; 33:24", "greek_vulgate" },
                    { "gospel", "MAT 6:1-6; 6:16-18" },
                },
                II = {
                    { "first_reading", "2KI 2:1; 2:6-14" },
                    { "psalm", "PSA 33:1-2; 33:10-11; 33:16; 33:24", "greek_vulgate" },
                    { "gospel", "MAT 6:1-6; 6:16-18" },
                },
            },
        },
        ["ordinary-time-12-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 12:1-9" },
                    { "psalm", "PSA 32:12-13; 32:18-20; 32:22", "greek_vulgate" },
                    { "gospel", "MAT 8:1-4" },
                },
                II = {
                    { "first_reading", "2KI 22:8-13; 23:1-3" },
                    { "psalm", "PSA 32:12-13; 32:18-20; 32:22", "greek_vulgate" },
                    { "gospel", "MAT 8:1-4" },
                },
            },
        },
        ["ordinary-time-12-monday"] = {
            day = {
                II = {
                    { "first_reading", "2KI 11:1-4; 11:9-18; 11:20" },
                    { "psalm", "PSA 111:1-4; 111:9", "greek_vulgate" },
                    { "gospel", "MAT 7:1-5" },
                },
            },
        },
        ["ordinary-time-12-saturday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 13:2; 13:5-18" },
                    { "psalm", "PSA 14:1-5", "greek_vulgate" },
                    { "gospel", "MAT 8:5-17" },
                },
                II = {
                    { "first_reading", "2KI 24:8-17" },
                    { "psalm", "PSA 14:1-5", "greek_vulgate" },
                    { "gospel", "MAT 8:5-17" },
                },
            },
        },
        ["ordinary-time-12-sunday"] = {
            day = {
                A = {
                    { "first_reading", "JER 20:10-13" },
                    { "psalm", "PSA 68:7-9; 68:13; 68:16; 68:32-34", "greek_vulgate" },
                    { "second_reading", "ROM 5:12-15" },
                    { "gospel", "MAT 10:26-33" },
                },
                B = {
                    { "first_reading", "JOB 38:1; 38:8-11" },
                    { "psalm", "PSA 106:23-26; 106:28-31", "greek_vulgate" },
                    { "second_reading", "2CO 5:14-17" },
                    { "gospel", "MRK 4:35-41" },
                },
            },
        },
        ["ordinary-time-12-thursday"] = {
            day = {
                II = {
                    { "first_reading", "2KI 17:5-8; 17:13-15; 17:18" },
                    { "psalm", "PSA 59:1-3; 59:10-11", "greek_vulgate" },
                    { "gospel", "MAT 7:21-29" },
                },
            },
        },
        ["ordinary-time-12-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 11:1-11" },
                    { "psalm", "PSA 110:1-4; 110:7-8", "greek_vulgate" },
                    { "gospel", "MAT 7:6; 7:12-14" },
                },
                II = {
                    { "first_reading", "2KI 12:1-5" },
                    { "psalm", "PSA 110:1-4; 110:7-8", "greek_vulgate" },
                    { "gospel", "MAT 7:6; 7:12-14" },
                },
            },
        },
        ["ordinary-time-12-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 12:1-10" },
                    { "psalm", "PSA 33:7-12", "greek_vulgate" },
                    { "gospel", "MAT 7:15-20" },
                },
            },
        },
        ["ordinary-time-13-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 19:15-29" },
                    { "psalm", "PSA 25:2-3; 25:9-12", "greek_vulgate" },
                    { "gospel", "MAT 9:9-13" },
                },
            },
        },
        ["ordinary-time-13-saturday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "AMO 9:11-15" },
                    { "psalm", "PSA 114:1-6; 114:8-9", "greek_vulgate" },
                    { "gospel", "MAT 9:14-17" },
                },
            },
        },
        ["ordinary-time-13-sunday"] = {
            day = {
                A = {
                    { "first_reading", "2KI 4:8-11; 4:14-16" },
                    { "psalm", "PSA 88:1-2; 88:15-18", "greek_vulgate" },
                    { "second_reading", "ROM 6:3-4; 6:8-11" },
                    { "gospel", "MAT 10:37-42" },
                },
                B = {
                    { "first_reading", "WIS 1:13-15; 2:23-24" },
                    { "psalm", "PSA 29:1; 29:3-5; 29:10-12", "greek_vulgate" },
                    { "second_reading", "2CO 8:7; 8:9; 8:13-15" },
                    { "gospel", "MRK 5:21-43" },
                },
            },
        },
        ["ordinary-time-13-thursday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 18:1-15" },
                    { "psalm", "PSA 49:1-8; 49:12-15", "greek_vulgate" },
                    { "gospel", "MAT 9:1-8" },
                },
                II = {
                    { "first_reading", "AMO 7:10-17" },
                    { "psalm", "PSA 49:1-8; 49:12-15", "greek_vulgate" },
                    { "gospel", "MAT 9:1-8" },
                },
            },
        },
        ["ordinary-time-13-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "AMO 3:1-8; 4:11-12" },
                    { "psalm", "PSA 105:1-5", "greek_vulgate" },
                    { "gospel", "MAT 8:23-27" },
                },
            },
        },
        ["ordinary-time-13-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 17:1; 17:9-10; 17:15-22" },
                    { "psalm", "PSA 115:3-8; 115:10", "greek_vulgate" },
                    { "gospel", "MAT 8:28-34" },
                },
                II = {
                    { "first_reading", "AMO 5:14-15; 5:21-24" },
                    { "psalm", "PSA 115:3-8; 115:10", "greek_vulgate" },
                    { "gospel", "MAT 8:28-34" },
                },
            },
        },
        ["ordinary-time-14-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 27:30-40; 28:1-4" },
                    { "psalm", "PSA 50:1-2; 50:8-9; 50:10-11", "greek_vulgate" },
                    { "gospel", "MAT 10:16-23" },
                },
                II = {
                    { "first_reading", "HOS 10:1-3; 10:7-8; 10:12" },
                    { "psalm", "PSA 50:1-2; 50:8-9; 50:10-11", "greek_vulgate" },
                    { "gospel", "MAT 10:16-23" },
                },
            },
        },
        ["ordinary-time-14-monday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 23:1-4; 23:19; 24:1-8; 24:62-67" },
                    { "psalm", "PSA 105:1-5", "greek_vulgate" },
                    { "gospel", "MAT 9:18-26" },
                },
                II = {
                    { "first_reading", "HOS 2:16-18; 2:21-22" },
                    { "psalm", "PSA 105:1-5", "greek_vulgate" },
                    { "gospel", "MAT 9:18-26" },
                },
            },
        },
        ["ordinary-time-14-saturday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 28:10-22" },
                    { "psalm", "PSA 90:1-4; 90:14-15", "greek_vulgate" },
                    { "gospel", "MAT 10:24-33" },
                },
            },
        },
        ["ordinary-time-14-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ZEC 9:9-10" },
                    { "psalm", "PSA 144:1-2; 144:8-11; 144:13-14", "greek_vulgate" },
                    { "second_reading", "ROM 8:9; 8:11-13" },
                    { "gospel", "MAT 11:25-30" },
                },
                B = {
                    { "first_reading", "EZK 2:2-5" },
                    { "psalm", "PSA 122:1-4", "greek_vulgate" },
                    { "second_reading", "2CO 12:7-10" },
                    { "gospel", "MRK 6:1-6" },
                },
            },
        },
        ["ordinary-time-14-thursday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 27:1-5; 27:15-29" },
                    { "psalm", "PSA 113:1-10", "greek_vulgate" },
                    { "gospel", "MAT 10:7-15" },
                },
                II = {
                    { "first_reading", "HOS 8:4-7; 8:11-13" },
                    { "psalm", "PSA 113:1-10", "greek_vulgate" },
                    { "gospel", "MAT 10:7-15" },
                },
            },
        },
        ["ordinary-time-14-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 25:5-11" },
                    { "psalm", "PSA 16:1-3; 16:6-8", "greek_vulgate" },
                    { "gospel", "MAT 9:32-38" },
                },
                II = {
                    { "first_reading", "HOS 4:1-4" },
                    { "psalm", "PSA 16:1-3; 16:6-8", "greek_vulgate" },
                    { "gospel", "MAT 9:32-38" },
                },
            },
        },
        ["ordinary-time-14-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 26:12-33" },
                    { "psalm", "PSA 5:1-6", "greek_vulgate" },
                    { "gospel", "MAT 10:1-7" },
                },
                II = {
                    { "first_reading", "HOS 6:1-6" },
                    { "psalm", "PSA 5:1-6", "greek_vulgate" },
                    { "gospel", "MAT 10:1-7" },
                },
            },
        },
        ["ordinary-time-15-friday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 11:10-12:14" },
                    { "psalm", "PSA 115:3-4; 115:6-9", "greek_vulgate" },
                    { "gospel", "MAT 12:1-8" },
                },
                II = {
                    { "first_reading", "ISA 7:1-9" },
                    { "psalm", "PSA 115:3-4; 115:6-9", "greek_vulgate" },
                    { "gospel", "MAT 12:1-8" },
                },
            },
        },
        ["ordinary-time-15-monday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 1:8-14; 1:22" },
                    { "psalm", "PSA 123:1-8", "greek_vulgate" },
                    { "gospel", "MAT 10:34-11:1" },
                },
                II = {
                    { "first_reading", "ISA 1:10-17" },
                    { "psalm", "PSA 123:1-8", "greek_vulgate" },
                    { "gospel", "MAT 10:34-11:1" },
                },
            },
        },
        ["ordinary-time-15-saturday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 12:37-42" },
                    { "psalm", "PSA 135:1; 135:10-15; 135:23-24", "greek_vulgate" },
                    { "gospel", "MAT 12:14-21" },
                },
                II = {
                    { "first_reading", "ISA 10:5-7; 10:13-16" },
                    { "psalm", "PSA 135:1; 135:10-15; 135:23-24", "greek_vulgate" },
                    { "gospel", "MAT 12:14-21" },
                },
            },
        },
        ["ordinary-time-15-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 55:10-11" },
                    { "psalm", "PSA 64:9-13", "greek_vulgate" },
                    { "second_reading", "ROM 8:18-23" },
                    { "gospel", "MAT 13:1-23" },
                },
            },
        },
        ["ordinary-time-15-thursday"] = {
            day = {
                II = {
                    { "first_reading", "ISA 6:1-8" },
                    { "psalm", "PSA 104:1; 104:5; 104:8-9; 104:24-27", "greek_vulgate" },
                    { "gospel", "MAT 11:28-30" },
                },
            },
        },
        ["ordinary-time-15-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 2:1-15" },
                    { "psalm", "PSA 68:2; 68:13; 68:29-30; 68:32-33", "greek_vulgate" },
                    { "gospel", "MAT 11:20-24" },
                },
                II = {
                    { "first_reading", "ISA 3:1-8" },
                    { "psalm", "PSA 68:2; 68:13; 68:29-30; 68:32-33", "greek_vulgate" },
                    { "gospel", "MAT 11:20-24" },
                },
            },
        },
        ["ordinary-time-15-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 3:1-6; 3:9-12" },
                    { "psalm", "PSA 102:1-4; 102:6-7", "greek_vulgate" },
                    { "gospel", "MAT 11:25-27" },
                },
            },
        },
        ["ordinary-time-16-friday"] = {
            day = {
                II = {
                    { "first_reading", "ISA 26:7-9; 26:12; 26:16-19" },
                    { "psalm", "PSA 18:7-10", "greek_vulgate" },
                    { "gospel", "MAT 13:18-23" },
                },
            },
        },
        ["ordinary-time-16-monday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 14:5-18" },
                    { "psalm", "EXO 15:1-6", "greek_vulgate" },
                    { "gospel", "MAT 12:38-42" },
                },
                II = {
                    { "first_reading", "MIC 2:1-5" },
                    { "psalm", "EXO 15:1-6", "greek_vulgate" },
                    { "gospel", "MAT 12:38-42" },
                },
            },
        },
        ["ordinary-time-16-saturday"] = {
            day = {
                ["B|I"] = {
                    { "first_reading", "EXO 20:18-26" },
                    { "psalm", "ISA 38:10-12; 38:16", "greek_vulgate" },
                    { "gospel", "MAT 13:24-30" },
                },
            },
        },
        ["ordinary-time-16-sunday"] = {
            day = {
                A = {
                    { "first_reading", "WIS 12:13; 12:16-19" },
                    { "psalm", "PSA 85:5-6; 85:9-10; 85:15-16", "greek_vulgate" },
                    { "second_reading", "ROM 8:26-27" },
                    { "gospel", "MAT 13:24-43" },
                },
                B = {
                    { "first_reading", "JER 23:1-6" },
                    { "psalm", "PSA 22:1-6", "greek_vulgate" },
                    { "second_reading", "EPH 2:13-18" },
                    { "gospel", "MRK 6:30-34" },
                },
            },
        },
        ["ordinary-time-16-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 14:21-15:1" },
                    { "psalm", "EXO 15:8-10; 15:12; 15:17", "greek_vulgate" },
                    { "gospel", "MAT 12:46-50" },
                },
                II = {
                    { "first_reading", "MIC 3:1-4" },
                    { "psalm", "EXO 15:8-10; 15:12; 15:17", "greek_vulgate" },
                    { "gospel", "MAT 12:46-50" },
                },
            },
        },
        ["ordinary-time-16-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 16:1-5; 16:9-15" },
                    { "psalm", "PSA 77:18-19; 77:23-28", "greek_vulgate" },
                    { "gospel", "MAT 13:1-9" },
                },
            },
        },
        ["ordinary-time-17-friday"] = {
            day = {
                I = {
                    { "first_reading", "LEV 23:1; 23:4-11; 23:15-16; 23:27; 23:34-37" },
                    { "psalm", "PSA 80:2-5; 80:9-10", "greek_vulgate" },
                    { "gospel", "MAT 13:54-58" },
                },
            },
        },
        ["ordinary-time-17-monday"] = {
            day = {
                II = {
                    { "first_reading", "JER 1:1; 1:4-10" },
                    { "psalm", "PSA 49:1-2; 49:5-6; 49:14-15", "greek_vulgate" },
                    { "gospel", "MAT 13:31-35" },
                },
            },
        },
        ["ordinary-time-17-thursday"] = {
            day = {
                II = {
                    { "first_reading", "JER 4:5-8; 4:11-12" },
                    { "psalm", "PSA 98:5-7; 98:9", "greek_vulgate" },
                    { "gospel", "MAT 13:47-53" },
                },
            },
        },
        ["ordinary-time-17-tuesday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "JER 2:1-3; 2:7-8; 2:12-13" },
                    { "psalm", "PSA 105:19-23", "greek_vulgate" },
                    { "gospel", "MAT 13:36-43" },
                },
                ["B|I"] = {
                    { "first_reading", "EXO 32:15-24; 32:30-34" },
                    { "psalm", "PSA 105:19-23", "greek_vulgate" },
                    { "gospel", "MAT 13:36-43" },
                },
            },
        },
        ["ordinary-time-17-wednesday"] = {
            day = {
                ["B|I"] = {
                    { "first_reading", "EXO 33:7-11; 34:5-9; 34:28" },
                    { "psalm", "PSA 102:6-11", "greek_vulgate" },
                    { "gospel", "MAT 13:44-46" },
                },
            },
        },
        ["ordinary-time-18-friday"] = {
            day = {
                II = {
                    { "first_reading", "JER 18:13-17; 18:18-20" },
                    { "psalm", "PSA 94:1-2; 94:6-9", "greek_vulgate" },
                    { "gospel", "MAT 18:21-19:1" },
                },
            },
        },
        ["ordinary-time-18-monday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "JER 13:1-11" },
                    { "psalm", "PSA 80:11-16", "greek_vulgate" },
                    { "gospel", "MAT 14:13-21" },
                },
                ["B|I"] = {
                    { "first_reading", "NUM 11:4-15" },
                    { "psalm", "PSA 80:11-16", "greek_vulgate" },
                    { "gospel", "MAT 14:13-21" },
                },
            },
        },
        ["ordinary-time-18-saturday"] = {
            day = {
                I = {
                    { "first_reading", "NUM 21:4-9" },
                    { "psalm", "PSA 30:1-3; 30:6-7; 30:14; 30:16; 30:24", "greek_vulgate" },
                    { "gospel", "MAT 19:3-12" },
                },
            },
        },
        ["ordinary-time-18-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 55:1-3" },
                    { "psalm", "PSA 144:8-9; 144:15-18", "greek_vulgate" },
                    { "second_reading", "ROM 8:35; 8:37-39" },
                    { "gospel", "MAT 14:13-21" },
                },
                B = {
                    { "first_reading", "EXO 16:2-4; 16:12-15" },
                    { "psalm", "PSA 77:3-4; 77:23-25; 77:54", "greek_vulgate" },
                    { "second_reading", "EPH 4:17; 4:20-24" },
                    { "gospel", "JHN 6:24-35" },
                },
            },
        },
        ["ordinary-time-18-thursday"] = {
            day = {
                I = {
                    { "first_reading", "NUM 13:1-2a; 13:25-14:1; 14:26-29; 14:34-35" },
                    { "psalm", "PSA 94:1-2; 94:6-9", "greek_vulgate" },
                    { "gospel", "MAT 16:13-23" },
                },
            },
        },
        ["ordinary-time-18-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "NUM 11:25-29" },
                    { "psalm", "PSA 24:4-5; 24:8-9; 24:14", "greek_vulgate" },
                    { "gospel", "MAT 14:22-36" },
                },
            },
        },
        ["ordinary-time-18-wednesday"] = {
            day = {
                II = {
                    { "first_reading", "JER 15:10; 15:16-21" },
                    { "psalm", "PSA 50:1-2; 50:10-11; 50:16-17", "greek_vulgate" },
                    { "gospel", "MAT 15:21-28" },
                },
            },
        },
        ["ordinary-time-19-friday"] = {
            day = {
                I = {
                    { "first_reading", "DEU 34:1-12" },
                    { "psalm", "PSA 65:1-3; 65:5; 65:8; 65:16-17", "greek_vulgate" },
                    { "gospel", "MAT 19:3-12" },
                },
            },
        },
        ["ordinary-time-19-sunday"] = {
            day = {
                A = {
                    { "first_reading", "1KI 19:9; 19:11-13" },
                    { "psalm", "PSA 84:8-13", "greek_vulgate" },
                    { "second_reading", "ROM 9:1-5" },
                    { "gospel", "MAT 14:22-33" },
                },
                B = {
                    { "first_reading", "1KI 19:4-8" },
                    { "psalm", "PSA 33:1-8", "greek_vulgate" },
                    { "second_reading", "EPH 4:30-5:2" },
                    { "gospel", "JHN 6:41-51" },
                },
            },
        },
        ["ordinary-time-19-thursday"] = {
            day = {
                I = {
                    { "first_reading", "DEU 31:1-8" },
                    { "psalm", "PSA 118:89-92; 118:95; 118:142", "greek_vulgate" },
                    { "gospel", "MAT 18:21-19:1" },
                },
                II = {
                    { "first_reading", "EZK 12:1-12" },
                    { "psalm", "PSA 118:89-92; 118:95; 118:142", "greek_vulgate" },
                    { "gospel", "MAT 18:21-19:1" },
                },
            },
        },
        ["ordinary-time-19-wednesday"] = {
            day = {
                II = {
                    { "first_reading", "EZK 9:1-7; 10:18-22" },
                    { "psalm", "PSA 16:1-3; 16:6-7; 16:8; 16:15", "greek_vulgate" },
                    { "gospel", "MAT 18:15-20" },
                },
            },
        },
        ["ordinary-time-2-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 8:6-13" },
                    { "psalm", "PSA 84:7; 84:9-13", "greek_vulgate" },
                    { "gospel", "MRK 3:13-19" },
                },
                II = {
                    { "first_reading", "1SA 24:3-21" },
                    { "psalm", "PSA 84:7; 84:9-13", "greek_vulgate" },
                    { "gospel", "MRK 3:13-19" },
                },
            },
        },
        ["ordinary-time-2-monday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "1SA 15:16-23" },
                    { "psalm", "PSA 109:1-4", "greek_vulgate" },
                    { "gospel", "MRK 2:18-22" },
                },
                ["B|I"] = {
                    { "first_reading", "HEB 5:1-10" },
                    { "psalm", "PSA 109:1-4", "greek_vulgate" },
                    { "gospel", "MRK 2:18-22" },
                },
            },
        },
        ["ordinary-time-2-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 9:2-3; 9:11-14" },
                    { "psalm", "PSA 46:1-2; 46:5-8", "greek_vulgate" },
                    { "gospel", "MRK 3:20-21" },
                },
            },
        },
        ["ordinary-time-2-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 49:3; 49:5-6" },
                    { "psalm", "PSA 39:1; 39:3; 39:6-9", "greek_vulgate" },
                    { "second_reading", "1CO 1:1-3" },
                    { "gospel", "JHN 1:29-34" },
                },
                B = {
                    { "first_reading", "1SA 3:3-10; 3:19" },
                    { "psalm", "PSA 39:1; 39:3; 39:6-9", "greek_vulgate" },
                    { "second_reading", "1CO 6:13-15; 6:17-20" },
                    { "gospel", "JHN 1:35-42" },
                },
            },
        },
        ["ordinary-time-2-thursday"] = {
            day = {
                II = {
                    { "first_reading", "1SA 18:6-9; 19:1-7" },
                    { "psalm", "PSA 39:6-9; 39:16", "greek_vulgate" },
                    { "gospel", "MRK 3:7-12" },
                },
            },
        },
        ["ordinary-time-2-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 6:10-20" },
                    { "psalm", "PSA 110:1-2; 110:4-5; 110:9-10", "greek_vulgate" },
                    { "gospel", "MRK 2:23-28" },
                },
                II = {
                    { "first_reading", "1SA 16:1-13" },
                    { "psalm", "PSA 110:1-2; 110:4-5; 110:9-10", "greek_vulgate" },
                    { "gospel", "MRK 2:23-28" },
                },
            },
        },
        ["ordinary-time-2-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 7:1-3; 7:15-17" },
                    { "psalm", "PSA 109:1-4", "greek_vulgate" },
                    { "gospel", "MRK 3:1-6" },
                },
            },
        },
        ["ordinary-time-20-monday"] = {
            day = {
                I = {
                    { "first_reading", "JOS 24:1-13" },
                    { "psalm", "PSA 135:1-3; 135:16-18; 135:21-22; 135:24", "greek_vulgate" },
                    { "gospel", "MAT 19:16-22" },
                },
                II = {
                    { "first_reading", "EZK 24:15-24" },
                    { "psalm", "PSA 135:1-3; 135:16-18; 135:21-22; 135:24", "greek_vulgate" },
                    { "gospel", "MAT 19:16-22" },
                },
            },
        },
        ["ordinary-time-20-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 56:1; 56:6-7" },
                    { "psalm", "PSA 66:1-2; 66:4-5; 66:7", "greek_vulgate" },
                    { "second_reading", "ROM 11:13-15; 11:29-32" },
                    { "gospel", "MAT 15:21-28" },
                },
            },
        },
        ["ordinary-time-20-thursday"] = {
            day = {
                I = {
                    { "first_reading", "JDG 6:11-24" },
                    { "psalm", "PSA 84:8; 84:10-13", "greek_vulgate" },
                    { "gospel", "MAT 22:1-14" },
                },
            },
        },
        ["ordinary-time-20-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "JOS 24:14-29" },
                    { "psalm", "PSA 15:1-2; 15:5; 15:7-8; 15:11", "greek_vulgate" },
                    { "gospel", "MAT 19:23-30" },
                },
                II = {
                    { "first_reading", "EZK 28:1-10" },
                    { "psalm", "PSA 15:1-2; 15:5; 15:7-8; 15:11", "greek_vulgate" },
                    { "gospel", "MAT 19:23-30" },
                },
            },
        },
        ["ordinary-time-20-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "JDG 2:11-19" },
                    { "psalm", "PSA 105:34-37; 105:39-40; 105:43-44", "greek_vulgate" },
                    { "gospel", "MAT 20:1-16" },
                },
                II = {
                    { "first_reading", "EZK 34:1-11" },
                    { "psalm", "PSA 105:34-37; 105:39-40; 105:43-44", "greek_vulgate" },
                    { "gospel", "MAT 20:1-16" },
                },
            },
        },
        ["ordinary-time-21-monday"] = {
            day = {
                I = {
                    { "first_reading", "RUT 1:1; 1:3-6; 1:14-16; 1:22" },
                    { "psalm", "PSA 145:5-10", "greek_vulgate" },
                    { "gospel", "MAT 23:13-22" },
                },
            },
        },
        ["ordinary-time-21-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 22:19-23" },
                    { "psalm", "PSA 137:1-3; 137:6; 137:8", "greek_vulgate" },
                    { "second_reading", "ROM 11:33-36" },
                    { "gospel", "MAT 16:13-20" },
                },
                B = {
                    { "first_reading", "JOS 24:1-2; 24:15-17; 24:18" },
                    { "psalm", "PSA 33:1-2; 33:15-20", "greek_vulgate" },
                    { "second_reading", "EPH 5:21-32" },
                    { "gospel", "JHN 6:60-69" },
                },
            },
        },
        ["ordinary-time-21-thursday"] = {
            day = {
                ["B|I"] = {
                    { "first_reading", "1TH 1:1-5; 1:8-10" },
                    { "psalm", "PSA 149:1-6; 149:9", "greek_vulgate" },
                    { "gospel", "MAT 24:42-51" },
                },
            },
        },
        ["ordinary-time-21-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "2TH 2:1-3; 2:14-17" },
                    { "psalm", "PSA 127:1-5", "greek_vulgate" },
                    { "gospel", "MAT 23:23-26" },
                },
            },
        },
        ["ordinary-time-21-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "RUT 4:18-22" },
                    { "psalm", "PSA 144:2-5; 144:10-11", "greek_vulgate" },
                    { "gospel", "MAT 23:27-32" },
                },
                II = {
                    { "first_reading", "2TH 3:6-10; 3:16-18" },
                    { "psalm", "PSA 144:2-5; 144:10-11", "greek_vulgate" },
                    { "gospel", "MAT 23:27-32" },
                },
            },
        },
        ["ordinary-time-22-friday"] = {
            day = {
                II = {
                    { "first_reading", "1CO 4:1-5" },
                    { "psalm", "PSA 99:1-5", "greek_vulgate" },
                    { "gospel", "LUK 5:33-39" },
                },
            },
        },
        ["ordinary-time-22-monday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 4:13-18" },
                    { "psalm", "PSA 95:1-3; 95:5; 95:11-13", "greek_vulgate" },
                    { "gospel", "LUK 4:16-30" },
                },
                II = {
                    { "first_reading", "1CO 2:1-5" },
                    { "psalm", "PSA 95:1-3; 95:5; 95:11-13", "greek_vulgate" },
                    { "gospel", "LUK 4:16-30" },
                },
            },
        },
        ["ordinary-time-22-saturday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:21-23" },
                    { "psalm", "PSA 61:1-2; 61:5-6; 61:8", "greek_vulgate" },
                    { "gospel", "LUK 6:1-5" },
                },
                II = {
                    { "first_reading", "1CO 4:6-15" },
                    { "psalm", "PSA 61:1-2; 61:5-6; 61:8", "greek_vulgate" },
                    { "gospel", "LUK 6:1-5" },
                },
            },
        },
        ["ordinary-time-22-sunday"] = {
            day = {
                A = {
                    { "first_reading", "JER 20:7-9" },
                    { "psalm", "PSA 62:1-5; 62:7-8", "greek_vulgate" },
                    { "second_reading", "ROM 12:1-2" },
                    { "gospel", "MAT 16:21-27" },
                },
                B = {
                    { "first_reading", "DEU 4:1-2; 4:6-8" },
                    { "psalm", "PSA 14:2-5", "greek_vulgate" },
                    { "second_reading", "JAS 1:17-18; 1:21-22; 1:27" },
                    { "gospel", "MRK 7:1-8; 7:14-15; 7:21-23" },
                },
            },
        },
        ["ordinary-time-22-thursday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:9-14" },
                    { "psalm", "PSA 97:2-6", "greek_vulgate" },
                    { "gospel", "LUK 5:1-11" },
                },
            },
        },
        ["ordinary-time-22-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 5:1-6; 5:9-11" },
                    { "psalm", "PSA 26:1; 26:4; 26:13-14", "greek_vulgate" },
                    { "gospel", "LUK 4:31-37" },
                },
                II = {
                    { "first_reading", "1CO 2:10-16" },
                    { "psalm", "PSA 26:1; 26:4; 26:13-14", "greek_vulgate" },
                    { "gospel", "LUK 4:31-37" },
                },
            },
        },
        ["ordinary-time-22-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:1-8" },
                    { "psalm", "PSA 51:8-9", "greek_vulgate" },
                    { "gospel", "LUK 4:38-44" },
                },
                II = {
                    { "first_reading", "1CO 3:1-9" },
                    { "psalm", "PSA 51:8-9", "greek_vulgate" },
                    { "gospel", "LUK 4:38-44" },
                },
            },
        },
        ["ordinary-time-23-friday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 1:1-2; 1:12-14" },
                    { "psalm", "PSA 15:1-2; 15:5; 15:7-8; 15:11", "greek_vulgate" },
                    { "gospel", "LUK 6:39-42" },
                },
                II = {
                    { "first_reading", "1CO 9:16-19; 9:22-27" },
                    { "psalm", "PSA 15:1-2; 15:5; 15:7-8; 15:11", "greek_vulgate" },
                    { "gospel", "LUK 6:39-42" },
                },
            },
        },
        ["ordinary-time-23-monday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:24-2:3" },
                    { "psalm", "PSA 61:5-6; 61:8", "greek_vulgate" },
                    { "gospel", "LUK 6:6-11" },
                },
                II = {
                    { "first_reading", "1CO 5:1-8" },
                    { "psalm", "PSA 61:5-6; 61:8", "greek_vulgate" },
                    { "gospel", "LUK 6:6-11" },
                },
            },
        },
        ["ordinary-time-23-saturday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 1:15-17" },
                    { "psalm", "PSA 112:1-5; 112:7-8", "greek_vulgate" },
                    { "gospel", "LUK 6:43-49" },
                },
                II = {
                    { "first_reading", "1CO 10:14-22" },
                    { "psalm", "PSA 112:1-5; 112:7-8", "greek_vulgate" },
                    { "gospel", "LUK 6:43-49" },
                },
            },
        },
        ["ordinary-time-23-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EZK 33:7-9" },
                    { "psalm", "PSA 94:1-2; 94:6-9", "greek_vulgate" },
                    { "second_reading", "ROM 13:8-10" },
                    { "gospel", "MAT 18:15-20" },
                },
                B = {
                    { "first_reading", "ISA 35:4-7" },
                    { "psalm", "PSA 145:6-10", "greek_vulgate" },
                    { "second_reading", "JAS 2:1-5" },
                    { "gospel", "MRK 7:31-37" },
                },
            },
        },
        ["ordinary-time-23-thursday"] = {
            day = {
                I = {
                    { "first_reading", "COL 3:12-17" },
                    { "psalm", "PSA 150:1-6", "greek_vulgate" },
                    { "gospel", "LUK 6:27-38" },
                },
                II = {
                    { "first_reading", "1CO 8:1-7; 8:11-13" },
                    { "psalm", "PSA 150:1-6", "greek_vulgate" },
                    { "gospel", "LUK 6:27-38" },
                },
            },
        },
        ["ordinary-time-23-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "COL 2:6-15" },
                    { "psalm", "PSA 144:1-2; 144:8-11", "greek_vulgate" },
                    { "gospel", "LUK 6:12-19" },
                },
            },
        },
        ["ordinary-time-23-wednesday"] = {
            day = {
                II = {
                    { "first_reading", "1CO 7:25-31" },
                    { "psalm", "PSA 144:2-3; 144:10-13", "greek_vulgate" },
                    { "gospel", "LUK 6:20-26" },
                },
            },
        },
        ["ordinary-time-24-friday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 6:2-12" },
                    { "psalm", "PSA 48:5-9; 48:16-19", "greek_vulgate" },
                    { "gospel", "LUK 8:1-3" },
                },
                II = {
                    { "first_reading", "1CO 15:12-20" },
                    { "psalm", "PSA 48:5-9; 48:16-19", "greek_vulgate" },
                    { "gospel", "LUK 8:1-3" },
                },
            },
        },
        ["ordinary-time-24-saturday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 6:13-16" },
                    { "psalm", "PSA 99:1-5", "greek_vulgate" },
                    { "gospel", "LUK 8:4-15" },
                },
                II = {
                    { "first_reading", "1CO 15:35-37; 15:42-49" },
                    { "psalm", "PSA 99:1-5", "greek_vulgate" },
                    { "gospel", "LUK 8:4-15" },
                },
            },
        },
        ["ordinary-time-24-sunday"] = {
            day = {
                A = {
                    { "first_reading", "SIR 27:30-28:7" },
                    { "psalm", "PSA 102:1-4; 102:9-12", "greek_vulgate" },
                    { "second_reading", "ROM 14:7-9" },
                    { "gospel", "MAT 18:21-35" },
                },
                B = {
                    { "first_reading", "ISA 50:5-9" },
                    { "psalm", "PSA 114:1-6; 114:8-9", "greek_vulgate" },
                    { "second_reading", "JAS 2:14-18" },
                    { "gospel", "MRK 8:27-35" },
                },
            },
        },
        ["ordinary-time-24-thursday"] = {
            day = {
                II = {
                    { "first_reading", "1CO 15:1-11" },
                    { "psalm", "PSA 110:7-10", "greek_vulgate" },
                    { "gospel", "LUK 7:36-50" },
                },
            },
        },
        ["ordinary-time-25-friday"] = {
            day = {
                I = {
                    { "first_reading", "ECC 3:1-11" },
                    { "psalm", "PSA 143:1-4", "greek_vulgate" },
                    { "gospel", "LUK 9:18-22" },
                },
                II = {
                    { "first_reading", "ECC 3:1-11" },
                    { "psalm", "PSA 143:1-4", "greek_vulgate" },
                    { "gospel", "LUK 9:18-22" },
                },
            },
        },
        ["ordinary-time-25-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ECC 11:9-12:8" },
                    { "psalm", "PSA 89:3-6; 89:12-14; 89:17", "greek_vulgate" },
                    { "gospel", "LUK 9:43-45" },
                },
                II = {
                    { "first_reading", "ECC 11:9-12:8" },
                    { "psalm", "PSA 89:3-6; 89:12-14; 89:17", "greek_vulgate" },
                    { "gospel", "LUK 9:43-45" },
                },
            },
        },
        ["ordinary-time-25-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 55:6-9" },
                    { "psalm", "PSA 144:2-3; 144:8-9; 144:17-18", "greek_vulgate" },
                    { "second_reading", "PHP 1:20-24; 1:27" },
                    { "gospel", "MAT 20:1-16" },
                },
                B = {
                    { "first_reading", "WIS 2:12; 2:17-20" },
                    { "psalm", "PSA 53:1-6", "greek_vulgate" },
                    { "second_reading", "JAS 3:16-4:3" },
                    { "gospel", "MRK 9:30-37" },
                },
            },
        },
        ["ordinary-time-25-thursday"] = {
            day = {
                II = {
                    { "first_reading", "ECC 1:2-11" },
                    { "psalm", "PSA 89:3-6; 89:12-14; 89:17", "greek_vulgate" },
                    { "gospel", "LUK 9:7-9" },
                },
            },
        },
        ["ordinary-time-25-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "PRO 21:1-6; 21:10-13" },
                    { "psalm", "PSA 118:1; 118:27; 118:30; 118:34-35; 118:44", "greek_vulgate" },
                    { "gospel", "LUK 8:19-21" },
                },
            },
        },
        ["ordinary-time-25-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "PRO 30:5-9" },
                    {
                        "psalm",
                        "PSA 118:29; 118:72; 118:89; 118:101; 118:104; 118:163",
                        "greek_vulgate",
                    },
                    { "gospel", "LUK 9:1-6" },
                },
            },
        },
        ["ordinary-time-26-monday"] = {
            day = {
                II = {
                    { "first_reading", "JOB 1:6-22" },
                    { "psalm", "PSA 101:15-20; 101:28", "greek_vulgate" },
                    { "gospel", "LUK 9:46-50" },
                },
            },
        },
        ["ordinary-time-26-saturday"] = {
            day = {
                II = {
                    { "first_reading", "JOB 42:1-3; 42:5-6; 42:12-17" },
                    { "psalm", "PSA 68:32-36", "greek_vulgate" },
                    { "gospel", "LUK 10:17-24" },
                },
            },
        },
        ["ordinary-time-26-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EZK 18:25-28" },
                    { "psalm", "PSA 24:4-9", "greek_vulgate" },
                    { "second_reading", "PHP 2:1-11" },
                    { "gospel", "MAT 21:28-32" },
                },
                B = {
                    { "first_reading", "NUM 11:25-29" },
                    { "psalm", "PSA 18:7; 18:9; 18:11-13", "greek_vulgate" },
                    { "second_reading", "JAS 5:1-6" },
                    { "gospel", "MRK 9:38-43; 9:45; 9:47-48" },
                },
            },
        },
        ["ordinary-time-26-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ZEC 8:20-23" },
                    { "psalm", "PSA 86:1-7", "greek_vulgate" },
                    { "gospel", "LUK 9:51-56" },
                },
            },
        },
        ["ordinary-time-27-friday"] = {
            day = {
                I = {
                    { "first_reading", "JOL 1:13-15; 2:1-2" },
                    { "psalm", "PSA 9:1-2; 9:5; 9:15; 9:7-8", "greek_vulgate" },
                    { "gospel", "LUK 11:15-26" },
                },
                II = {
                    { "first_reading", "GAL 3:7-14" },
                    { "psalm", "PSA 9:1-2; 9:5; 9:15; 9:7-8", "greek_vulgate" },
                    { "gospel", "LUK 11:15-26" },
                },
            },
        },
        ["ordinary-time-27-monday"] = {
            day = {
                II = {
                    { "first_reading", "GAL 1:6-12" },
                    { "psalm", "JON 2:3-5; 2:8", "greek_vulgate" },
                    { "gospel", "LUK 10:25-37" },
                },
            },
        },
        ["ordinary-time-27-saturday"] = {
            day = {
                I = {
                    { "first_reading", "JOL 4:12-21" },
                    { "psalm", "PSA 96:1-2; 96:5-6; 96:11-12", "greek_vulgate" },
                    { "gospel", "LUK 11:27-28" },
                },
                II = {
                    { "first_reading", "GAL 3:22-29" },
                    { "psalm", "PSA 96:1-2; 96:5-6; 96:11-12", "greek_vulgate" },
                    { "gospel", "LUK 11:27-28" },
                },
            },
        },
        ["ordinary-time-27-sunday"] = {
            day = {
                B = {
                    { "first_reading", "GEN 2:18-24" },
                    { "psalm", "PSA 127:1-6", "greek_vulgate" },
                    { "second_reading", "HEB 2:9-11" },
                    { "gospel", "MRK 10:2-16" },
                },
            },
        },
        ["ordinary-time-27-thursday"] = {
            day = {
                II = {
                    { "first_reading", "GAL 3:1-5" },
                    { "psalm", "PSA 1:1-4; 1:6", "greek_vulgate" },
                    { "gospel", "LUK 11:5-13" },
                },
            },
        },
        ["ordinary-time-27-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "JON 3:1-10" },
                    { "psalm", "PSA 129:1-4; 129:7-8", "greek_vulgate" },
                    { "gospel", "LUK 10:38-42" },
                },
                II = {
                    { "first_reading", "GAL 1:13-24" },
                    { "psalm", "PSA 129:1-4; 129:7-8", "greek_vulgate" },
                    { "gospel", "LUK 10:38-42" },
                },
            },
        },
        ["ordinary-time-27-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "JON 4:1-11" },
                    { "psalm", "PSA 85:3-6; 85:9-10", "greek_vulgate" },
                    { "gospel", "LUK 11:1-4" },
                },
            },
        },
        ["ordinary-time-28-friday"] = {
            day = {
                II = {
                    { "first_reading", "EPH 1:11-14" },
                    { "psalm", "PSA 31:1-2; 31:5; 31:11", "greek_vulgate" },
                    { "gospel", "LUK 12:1-7" },
                },
            },
        },
        ["ordinary-time-28-monday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 1:1-7" },
                    { "psalm", "PSA 97:1-4", "greek_vulgate" },
                    { "gospel", "LUK 11:29-32" },
                },
                II = {
                    { "first_reading", "GAL 4:22-24; 4:26-27; 4:31" },
                    { "psalm", "PSA 97:1-4", "greek_vulgate" },
                    { "gospel", "LUK 11:29-32" },
                },
            },
        },
        ["ordinary-time-28-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 4:13; 4:16-18" },
                    { "psalm", "PSA 104:6-9; 104:42-43", "greek_vulgate" },
                    { "gospel", "LUK 12:8-12" },
                },
            },
        },
        ["ordinary-time-28-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 25:6-10" },
                    { "psalm", "PSA 22:1-6", "greek_vulgate" },
                    { "second_reading", "PHP 4:12-14; 4:19-20" },
                    { "gospel", "MAT 22:1-14" },
                },
                B = {
                    { "first_reading", "WIS 7:7-11" },
                    { "psalm", "PSA 89:12-17", "greek_vulgate" },
                    { "second_reading", "HEB 4:12-13" },
                    { "gospel", "MRK 10:17-30" },
                },
            },
        },
        ["ordinary-time-28-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 3:21-30" },
                    { "psalm", "PSA 129:1-6", "greek_vulgate" },
                    { "gospel", "LUK 11:47-54" },
                },
            },
        },
        ["ordinary-time-28-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 1:16-25" },
                    { "psalm", "PSA 18:1-4", "greek_vulgate" },
                    { "gospel", "LUK 11:37-41" },
                },
                II = {
                    { "first_reading", "GAL 5:1-6" },
                    { "psalm", "PSA 18:1-4", "greek_vulgate" },
                    { "gospel", "LUK 11:37-41" },
                },
            },
        },
        ["ordinary-time-28-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 2:1-11" },
                    { "psalm", "PSA 61:1-2; 61:5-6; 61:8", "greek_vulgate" },
                    { "gospel", "LUK 11:42-46" },
                },
                II = {
                    { "first_reading", "GAL 5:18-25" },
                    { "psalm", "PSA 61:1-2; 61:5-6; 61:8", "greek_vulgate" },
                    { "gospel", "LUK 11:42-46" },
                },
            },
        },
        ["ordinary-time-29-friday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 7:18-25" },
                    { "psalm", "PSA 118:66; 118:68; 118:76-77; 118:93-94", "greek_vulgate" },
                    { "gospel", "LUK 12:54-59" },
                },
                II = {
                    { "first_reading", "EPH 4:1-6" },
                    { "psalm", "PSA 118:66; 118:68; 118:76-77; 118:93-94", "greek_vulgate" },
                    { "gospel", "LUK 12:54-59" },
                },
            },
        },
        ["ordinary-time-29-monday"] = {
            day = {
                II = {
                    { "first_reading", "EPH 2:1-10" },
                    { "psalm", "LUK 1:69-75", "greek_vulgate" },
                    { "gospel", "LUK 12:13-21" },
                },
            },
        },
        ["ordinary-time-29-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:1-11" },
                    { "psalm", "PSA 23:1-6", "greek_vulgate" },
                    { "gospel", "LUK 13:1-9" },
                },
                II = {
                    { "first_reading", "EPH 4:7-16" },
                    { "psalm", "PSA 23:1-6", "greek_vulgate" },
                    { "gospel", "LUK 13:1-9" },
                },
            },
        },
        ["ordinary-time-29-sunday"] = {
            day = {
                B = {
                    { "first_reading", "ISA 53:10-11" },
                    { "psalm", "PSA 32:4-5; 32:18-20; 32:22", "greek_vulgate" },
                    { "second_reading", "HEB 4:14-16" },
                    { "gospel", "MRK 10:35-45" },
                },
            },
        },
        ["ordinary-time-29-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 6:19-23" },
                    { "psalm", "PSA 1:1-4; 1:6", "greek_vulgate" },
                    { "gospel", "LUK 12:49-53" },
                },
                II = {
                    { "first_reading", "EPH 3:14-21" },
                    { "psalm", "PSA 1:1-4; 1:6", "greek_vulgate" },
                    { "gospel", "LUK 12:49-53" },
                },
            },
        },
        ["ordinary-time-29-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 5:12; 5:15; 5:17-19; 5:20-21" },
                    { "psalm", "PSA 39:6-9; 39:16", "greek_vulgate" },
                    { "gospel", "LUK 12:35-38" },
                },
                II = {
                    { "first_reading", "EPH 2:12-22" },
                    { "psalm", "PSA 39:6-9; 39:16", "greek_vulgate" },
                    { "gospel", "LUK 12:35-38" },
                },
            },
        },
        ["ordinary-time-29-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 6:12-18" },
                    { "psalm", "PSA 123:1-8", "greek_vulgate" },
                    { "gospel", "LUK 12:39-48" },
                },
                II = {
                    { "first_reading", "EPH 3:2-12" },
                    { "psalm", "PSA 123:1-8", "greek_vulgate" },
                    { "gospel", "LUK 12:39-48" },
                },
            },
        },
        ["ordinary-time-3-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 10:32-39" },
                    { "psalm", "PSA 36:3-6; 36:23-24; 36:39-40", "greek_vulgate" },
                    { "gospel", "MRK 4:26-34" },
                },
                II = {
                    { "first_reading", "2SA 11:1-4; 11:5-10; 11:13-17" },
                    { "psalm", "PSA 36:3-6; 36:23-24; 36:39-40", "greek_vulgate" },
                    { "gospel", "MRK 4:26-34" },
                },
            },
        },
        ["ordinary-time-3-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 11:1-2; 11:8-19" },
                    { "psalm", "LUK 1:69-75", "greek_vulgate" },
                    { "gospel", "MRK 4:35-41" },
                },
            },
        },
        ["ordinary-time-3-sunday"] = {
            day = {
                B = {
                    { "first_reading", "JON 3:1-5; 3:10" },
                    { "psalm", "PSA 24:4-9", "greek_vulgate" },
                    { "second_reading", "1CO 7:29-31" },
                    { "gospel", "MRK 1:14-20" },
                },
            },
        },
        ["ordinary-time-3-thursday"] = {
            day = {
                II = {
                    { "first_reading", "2SA 7:18-19; 7:24-29" },
                    { "psalm", "PSA 23:1-6", "greek_vulgate" },
                    { "gospel", "MRK 4:21-25" },
                },
            },
        },
        ["ordinary-time-3-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "2SA 6:12-15; 6:17-19" },
                    { "psalm", "PSA 39:1; 39:3; 39:6-7; 39:9; 39:10", "greek_vulgate" },
                    { "gospel", "MRK 3:31-35" },
                },
            },
        },
        ["ordinary-time-3-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 10:11-18" },
                    { "psalm", "PSA 109:1-4", "greek_vulgate" },
                    { "gospel", "MRK 4:1-20" },
                },
            },
        },
        ["ordinary-time-30-friday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 9:1-5" },
                    { "psalm", "PSA 147:1-4; 147:8-9", "greek_vulgate" },
                    { "gospel", "LUK 14:1-6" },
                },
                II = {
                    { "first_reading", "PHP 1:1-11" },
                    { "psalm", "PSA 147:1-4; 147:8-9", "greek_vulgate" },
                    { "gospel", "LUK 14:1-6" },
                },
            },
        },
        ["ordinary-time-30-monday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:12-17" },
                    { "psalm", "PSA 67:1; 67:3; 67:5-6; 67:19-20", "greek_vulgate" },
                    { "gospel", "LUK 13:10-17" },
                },
                II = {
                    { "first_reading", "EPH 4:32-5:8" },
                    { "psalm", "PSA 67:1; 67:3; 67:5-6; 67:19-20", "greek_vulgate" },
                    { "gospel", "LUK 13:10-17" },
                },
            },
        },
        ["ordinary-time-30-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 11:1-2; 11:11-12; 11:25-29" },
                    { "psalm", "PSA 93:12-15; 93:17-18", "greek_vulgate" },
                    { "gospel", "LUK 14:1; 14:7-11" },
                },
                II = {
                    { "first_reading", "PHP 1:18-26" },
                    { "psalm", "PSA 93:12-15; 93:17-18", "greek_vulgate" },
                    { "gospel", "LUK 14:1; 14:7-11" },
                },
            },
        },
        ["ordinary-time-30-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EXO 22:20-26" },
                    { "psalm", "PSA 17:1-3; 17:46; 17:50", "greek_vulgate" },
                    { "second_reading", "1TH 1:5-10" },
                    { "gospel", "MAT 22:34-40" },
                },
                B = {
                    { "first_reading", "JER 31:7-9" },
                    { "psalm", "PSA 125:1-6", "greek_vulgate" },
                    { "second_reading", "HEB 5:1-6" },
                    { "gospel", "MRK 10:46-52" },
                },
            },
        },
        ["ordinary-time-30-thursday"] = {
            day = {
                II = {
                    { "first_reading", "EPH 6:10-20" },
                    { "psalm", "PSA 108:21-22; 108:26-27; 108:30-31", "greek_vulgate" },
                    { "gospel", "LUK 13:31-35" },
                },
            },
        },
        ["ordinary-time-30-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:18-25" },
                    { "psalm", "PSA 125:1-6", "greek_vulgate" },
                    { "gospel", "LUK 13:18-21" },
                },
                II = {
                    { "first_reading", "EPH 5:21-33" },
                    { "psalm", "PSA 125:1-6", "greek_vulgate" },
                    { "gospel", "LUK 13:18-21" },
                },
            },
        },
        ["ordinary-time-30-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:26-30" },
                    { "psalm", "PSA 12:3-5", "greek_vulgate" },
                    { "gospel", "LUK 13:22-30" },
                },
            },
        },
        ["ordinary-time-31-friday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 15:14-21" },
                    { "psalm", "PSA 97:1-4", "greek_vulgate" },
                    { "gospel", "LUK 16:1-8" },
                },
                II = {
                    { "first_reading", "PHP 3:17-4:1" },
                    { "psalm", "PSA 97:1-4", "greek_vulgate" },
                    { "gospel", "LUK 16:1-8" },
                },
            },
        },
        ["ordinary-time-31-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 16:3-9; 16:16; 16:22-27" },
                    { "psalm", "PSA 144:2-5; 144:10-11", "greek_vulgate" },
                    { "gospel", "LUK 16:9-15" },
                },
                II = {
                    { "first_reading", "PHP 4:10-19" },
                    { "psalm", "PSA 144:2-5; 144:10-11", "greek_vulgate" },
                    { "gospel", "LUK 16:9-15" },
                },
            },
        },
        ["ordinary-time-31-sunday"] = {
            day = {
                B = {
                    { "first_reading", "DEU 6:2-6" },
                    { "psalm", "PSA 17:1-3; 17:46; 17:50", "greek_vulgate" },
                    { "second_reading", "HEB 7:23-28" },
                    { "gospel", "MRK 12:28-34" },
                },
            },
        },
        ["ordinary-time-31-thursday"] = {
            day = {
                II = {
                    { "first_reading", "PHP 3:3-8" },
                    { "psalm", "PSA 26:1; 26:4; 26:13-14", "greek_vulgate" },
                    { "gospel", "LUK 15:1-10" },
                },
            },
        },
        ["ordinary-time-31-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "PHP 2:5-11" },
                    { "psalm", "PSA 130:1-3", "greek_vulgate" },
                    { "gospel", "LUK 14:15-24" },
                },
            },
        },
        ["ordinary-time-31-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 13:8-10" },
                    { "psalm", "PSA 111:1-2; 111:4-5; 111:9", "greek_vulgate" },
                    { "gospel", "LUK 14:25-33" },
                },
            },
        },
        ["ordinary-time-32-friday"] = {
            day = {
                II = {
                    { "first_reading", "2JN 1:4" },
                    { "psalm", "PSA 18:1-4", "greek_vulgate" },
                    { "gospel", "LUK 17:26-37" },
                },
            },
        },
        ["ordinary-time-32-monday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 1:1-7" },
                    { "psalm", "PSA 138:1-10", "greek_vulgate" },
                    { "gospel", "LUK 17:1-6" },
                },
            },
        },
        ["ordinary-time-32-saturday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 18:14-16; 19:6-9" },
                    { "psalm", "PSA 104:2-3; 104:36-37; 104:42-43", "greek_vulgate" },
                    { "gospel", "LUK 18:1-8" },
                },
                II = {
                    { "first_reading", "3JN 1:5" },
                    { "psalm", "PSA 104:2-3; 104:36-37; 104:42-43", "greek_vulgate" },
                    { "gospel", "LUK 18:1-8" },
                },
            },
        },
        ["ordinary-time-32-sunday"] = {
            day = {
                A = {
                    { "first_reading", "WIS 6:12-16" },
                    { "psalm", "PSA 62:1-7", "greek_vulgate" },
                    { "second_reading", "1TH 4:13-18" },
                    { "gospel", "MAT 25:1-13" },
                },
                B = {
                    { "first_reading", "1KI 17:10-16" },
                    { "psalm", "PSA 145:6-10", "greek_vulgate" },
                    { "second_reading", "HEB 9:24-28" },
                    { "gospel", "MRK 12:38-44" },
                },
            },
        },
        ["ordinary-time-33-friday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 4:36-37; 4:52-59" },
                    { "psalm", "1CH 29:10-12", "greek_vulgate" },
                    { "gospel", "LUK 19:45-48" },
                },
                II = {
                    { "first_reading", "REV 10:8-11" },
                    { "psalm", "1CH 29:10-12", "greek_vulgate" },
                    { "gospel", "LUK 19:45-48" },
                },
            },
        },
        ["ordinary-time-33-monday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 1:10-15; 1:41-43; 1:54-57; 1:62-64" },
                    {
                        "psalm",
                        "PSA 118:53; 118:61; 118:134; 118:150; 118:155; 118:158",
                        "greek_vulgate",
                    },
                    { "gospel", "LUK 18:35-43" },
                },
                II = {
                    { "first_reading", "REV 1:1-4; 2:1-5" },
                    {
                        "psalm",
                        "PSA 118:53; 118:61; 118:134; 118:150; 118:155; 118:158",
                        "greek_vulgate",
                    },
                    { "gospel", "LUK 18:35-43" },
                },
            },
        },
        ["ordinary-time-33-saturday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 6:1-13" },
                    { "psalm", "PSA 9:1-3; 9:5", "greek_vulgate" },
                    { "gospel", "LUK 20:27-40" },
                },
            },
        },
        ["ordinary-time-33-sunday"] = {
            day = {
                A = {
                    { "first_reading", "PRO 31:10-13; 31:19-20; 31:30-31" },
                    { "psalm", "PSA 127:1-5", "greek_vulgate" },
                    { "second_reading", "1TH 5:1-6" },
                    { "gospel", "MAT 25:14-30" },
                },
                B = {
                    { "first_reading", "DAN 12:1-3" },
                    { "psalm", "PSA 15:5; 15:8-11", "greek_vulgate" },
                    { "second_reading", "HEB 10:11-14; 10:18" },
                    { "gospel", "MRK 13:24-32" },
                },
            },
        },
        ["ordinary-time-33-thursday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 2:15-29" },
                    { "psalm", "PSA 49:1-2; 49:5-6; 49:14-15", "greek_vulgate" },
                    { "gospel", "LUK 19:41-44" },
                },
                II = {
                    { "first_reading", "REV 5:1-10" },
                    { "psalm", "PSA 49:1-2; 49:5-6; 49:14-15", "greek_vulgate" },
                    { "gospel", "LUK 19:41-44" },
                },
            },
        },
        ["ordinary-time-33-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "2MA 6:18-31" },
                    { "psalm", "PSA 3:1-6", "greek_vulgate" },
                    { "gospel", "LUK 19:1-10" },
                },
            },
        },
        ["ordinary-time-33-wednesday"] = {
            day = {
                II = {
                    { "first_reading", "REV 4:1-11" },
                    { "psalm", "PSA 16:1; 16:5-6; 16:8; 16:15", "greek_vulgate" },
                    { "gospel", "LUK 19:11-28" },
                },
            },
        },
        ["ordinary-time-34-friday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 7:2-14" },
                    { "psalm", "DAN 3:75-81", "greek_vulgate" },
                    { "gospel", "LUK 21:29-33" },
                },
                II = {
                    { "first_reading", "REV 20:1-4; 20:11" },
                    { "psalm", "DAN 3:75-81", "greek_vulgate" },
                    { "gospel", "LUK 21:29-33" },
                },
            },
        },
        ["ordinary-time-34-monday"] = {
            day = {
                II = {
                    { "first_reading", "REV 14:1-3; 14:4-5" },
                    { "psalm", "DAN 3:52-56", "greek_vulgate" },
                    { "gospel", "LUK 21:1-4" },
                },
            },
        },
        ["ordinary-time-34-saturday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 7:15-27" },
                    { "psalm", "DAN 3:82-87", "greek_vulgate" },
                    { "gospel", "LUK 21:34-36" },
                },
                II = {
                    { "first_reading", "REV 22:1-7" },
                    { "psalm", "DAN 3:82-87", "greek_vulgate" },
                    { "gospel", "LUK 21:34-36" },
                },
            },
        },
        ["ordinary-time-34-thursday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 6:12-28" },
                    { "psalm", "DAN 3:68-74", "greek_vulgate" },
                    { "gospel", "LUK 21:20-28" },
                },
                II = {
                    { "first_reading", "REV 18:1-2; 18:21-23; 19:1-3; 19:9" },
                    { "psalm", "DAN 3:68-74", "greek_vulgate" },
                    { "gospel", "LUK 21:20-28" },
                },
            },
        },
        ["ordinary-time-34-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 2:31-45" },
                    { "psalm", "DAN 3:57-61", "greek_vulgate" },
                    { "gospel", "LUK 21:5-11" },
                },
            },
        },
        ["ordinary-time-34-wednesday"] = {
            day = {
                II = {
                    { "first_reading", "REV 15:1-4" },
                    { "psalm", "DAN 3:62-67", "greek_vulgate" },
                    { "gospel", "LUK 21:12-19" },
                },
            },
        },
        ["ordinary-time-4-monday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 11:32-40" },
                    { "psalm", "PSA 30:19-23", "greek_vulgate" },
                    { "gospel", "MRK 5:1-20" },
                },
            },
        },
        ["ordinary-time-4-saturday"] = {
            day = {
                II = {
                    { "first_reading", "1KI 3:4-13" },
                    { "psalm", "PSA 22:1-6", "greek_vulgate" },
                    { "gospel", "MRK 6:30-34" },
                },
            },
        },
        ["ordinary-time-4-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ZEP 2:3; 3:12-13" },
                    { "psalm", "PSA 145:6-10", "greek_vulgate" },
                    { "second_reading", "1CO 1:26-31" },
                    { "gospel", "MAT 5:1-12" },
                },
                B = {
                    { "first_reading", "DEU 18:15-20" },
                    { "psalm", "PSA 94:1-2; 94:6-9", "greek_vulgate" },
                    { "second_reading", "1CO 7:32-35" },
                    { "gospel", "MRK 1:21-28" },
                },
            },
        },
        ["ordinary-time-4-thursday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 12:18-19; 12:21-24" },
                    { "psalm", "PSA 47:1-2; 47:9-10", "greek_vulgate" },
                    { "gospel", "MRK 6:7-13" },
                },
            },
        },
        ["ordinary-time-4-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "2SA 18:9-10; 18:14; 18:24-25; 18:30" },
                    { "psalm", "PSA 21:25-27; 21:29-31", "greek_vulgate" },
                    { "gospel", "MRK 5:21-43" },
                },
            },
        },
        ["ordinary-time-4-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 12:4-7; 12:11-15" },
                    { "psalm", "PSA 102:1-4; 102:8; 102:10", "greek_vulgate" },
                    { "gospel", "MRK 6:1-6" },
                },
                II = {
                    { "first_reading", "2SA 24:2; 24:9-17" },
                    { "psalm", "PSA 102:1-4; 102:8; 102:10", "greek_vulgate" },
                    { "gospel", "MRK 6:1-6" },
                },
            },
        },
        ["ordinary-time-5-friday"] = {
            day = {
                II = {
                    { "first_reading", "1KI 11:29-32; 12:19" },
                    { "psalm", "PSA 31:1-2; 31:5-7", "greek_vulgate" },
                    { "gospel", "MRK 7:31-37" },
                },
            },
        },
        ["ordinary-time-5-monday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 1:1-19" },
                    {
                        "psalm",
                        "PSA 103:1-2; 103:5-6; 103:10; 103:12; 103:24; 103:35",
                        "greek_vulgate",
                    },
                    { "gospel", "MRK 6:53-56" },
                },
                II = {
                    { "first_reading", "1KI 8:1-7; 8:9-13" },
                    {
                        "psalm",
                        "PSA 103:1-2; 103:5-6; 103:10; 103:12; 103:24; 103:35",
                        "greek_vulgate",
                    },
                    { "gospel", "MRK 6:53-56" },
                },
            },
        },
        ["ordinary-time-5-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 58:7-10" },
                    { "psalm", "PSA 111:4-9", "greek_vulgate" },
                    { "second_reading", "1CO 2:1-5" },
                    { "gospel", "MAT 5:13-16" },
                },
                B = {
                    { "first_reading", "JOB 7:1-4; 7:6-7" },
                    { "psalm", "PSA 146:1-6", "greek_vulgate" },
                    { "second_reading", "1CO 9:16-19; 9:22-23" },
                    { "gospel", "MRK 1:29-39" },
                },
            },
        },
        ["ordinary-time-5-thursday"] = {
            day = {
                II = {
                    { "first_reading", "1KI 11:4-13" },
                    { "psalm", "PSA 127:1-5", "greek_vulgate" },
                    { "gospel", "MRK 7:24-30" },
                },
            },
        },
        ["ordinary-time-5-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 1:20-2:4" },
                    { "psalm", "PSA 8:3-8", "greek_vulgate" },
                    { "gospel", "MRK 7:1-13" },
                },
            },
        },
        ["ordinary-time-5-wednesday"] = {
            day = {
                II = {
                    { "first_reading", "1KI 10:1-10" },
                    { "psalm", "PSA 103:1-2; 103:27-30", "greek_vulgate" },
                    { "gospel", "MRK 7:14-23" },
                },
            },
        },
        ["ordinary-time-6-monday"] = {
            day = {
                II = {
                    { "first_reading", "JAS 1:1-11" },
                    { "psalm", "PSA 49:1; 49:8; 49:16-17; 49:20-21", "greek_vulgate" },
                    { "gospel", "MRK 8:11-13" },
                },
            },
        },
        ["ordinary-time-6-sunday"] = {
            day = {
                A = {
                    { "first_reading", "SIR 15:15-20" },
                    { "psalm", "PSA 118:1-2; 118:4-5; 118:17-18; 118:33-34", "greek_vulgate" },
                    { "second_reading", "1CO 2:6-10" },
                    { "gospel", "MAT 5:17-37" },
                },
            },
        },
        ["ordinary-time-6-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "JAS 1:12-18" },
                    { "psalm", "PSA 28:1-4; 28:9-10", "greek_vulgate" },
                    { "gospel", "MRK 8:14-21" },
                },
            },
        },
        ["ordinary-time-7-friday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 6:5-17" },
                    { "psalm", "PSA 118:12; 118:16; 118:18; 118:27; 118:34-35", "greek_vulgate" },
                    { "gospel", "MRK 10:1-12" },
                },
            },
        },
        ["ordinary-time-7-saturday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 17:1-15" },
                    { "psalm", "PSA 102:13-18", "greek_vulgate" },
                    { "gospel", "MRK 10:13-16" },
                },
            },
        },
        ["ordinary-time-7-thursday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 5:1-8" },
                    { "psalm", "PSA 1:1-4; 1:6", "greek_vulgate" },
                    { "gospel", "MRK 9:41-50" },
                },
            },
        },
        ["ordinary-time-7-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 2:1-11" },
                    { "psalm", "PSA 36:3-4; 36:18-19; 36:27-28; 36:39-40", "greek_vulgate" },
                    { "gospel", "MRK 9:30-37" },
                },
            },
        },
        ["ordinary-time-7-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 4:11-19" },
                    { "psalm", "PSA 118:165; 118:168; 118:171-172; 118:174-175", "greek_vulgate" },
                    { "gospel", "MRK 9:38-40" },
                },
            },
        },
        ["ordinary-time-8-friday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 44:1; 44:9-13" },
                    { "psalm", "PSA 149:1-6; 149:9", "greek_vulgate" },
                    { "gospel", "MRK 11:11-26" },
                },
                II = {
                    { "first_reading", "1PE 4:7-13" },
                    { "psalm", "PSA 149:1-6; 149:9", "greek_vulgate" },
                    { "gospel", "MRK 11:11-26" },
                },
            },
        },
        ["ordinary-time-8-monday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 17:20-24" },
                    { "psalm", "PSA 31:1-2; 31:5-7", "greek_vulgate" },
                    { "gospel", "MRK 10:17-27" },
                },
            },
        },
        ["ordinary-time-8-saturday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 51:12-20" },
                    { "psalm", "PSA 18:7-10", "greek_vulgate" },
                    { "gospel", "MRK 11:27-33" },
                },
                II = {
                    { "first_reading", "JUD 1:17; 1:20-25" },
                    { "psalm", "PSA 18:7-10", "greek_vulgate" },
                    { "gospel", "MRK 11:27-33" },
                },
            },
        },
        ["ordinary-time-8-thursday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 42:15-25" },
                    { "psalm", "PSA 32:2-9", "greek_vulgate" },
                    { "gospel", "MRK 10:46-52" },
                },
                II = {
                    { "first_reading", "1PE 2:2-5; 2:9-12" },
                    { "psalm", "PSA 32:2-9", "greek_vulgate" },
                    { "gospel", "MRK 10:46-52" },
                },
            },
        },
        ["ordinary-time-8-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 35:1-12" },
                    { "psalm", "PSA 49:5-8; 49:14; 49:23", "greek_vulgate" },
                    { "gospel", "MRK 10:28-31" },
                },
            },
        },
        ["ordinary-time-8-wednesday"] = {
            day = {
                II = {
                    { "first_reading", "1PE 1:18-25" },
                    { "psalm", "PSA 78:8-9; 78:11; 78:13", "greek_vulgate" },
                    { "gospel", "MRK 10:32-45" },
                },
            },
        },
        ["ordinary-time-9-saturday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 12:1; 12:5-15; 12:20" },
                    { "psalm", "TOB 13:2; 13:6-8", "greek_vulgate" },
                    { "gospel", "MRK 12:38-44" },
                },
                II = {
                    { "first_reading", "2TI 4:1-8" },
                    { "psalm", "TOB 13:2; 13:6-8", "greek_vulgate" },
                    { "gospel", "MRK 12:38-44" },
                },
            },
        },
        ["ordinary-time-9-thursday"] = {
            day = {
                II = {
                    { "first_reading", "2TI 2:8-15" },
                    { "psalm", "PSA 127:1-5", "greek_vulgate" },
                    { "gospel", "MRK 12:28-34" },
                },
            },
        },
        ["ordinary-time-9-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "2PE 3:12-15; 3:17-18" },
                    { "psalm", "PSA 111:1-2; 111:7-9", "greek_vulgate" },
                    { "gospel", "MRK 12:13-17" },
                },
            },
        },
        ["ordinary-time-9-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 3:1-11; 3:16-17" },
                    { "psalm", "PSA 24:2-5; 24:8-9; 24:15-16", "greek_vulgate" },
                    { "gospel", "MRK 12:18-27" },
                },
            },
        },
        ["palm-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 50:4-7" },
                    { "psalm", "PSA 21:7-8; 21:16-19; 21:22-23", "greek_vulgate" },
                    { "second_reading", "PHP 2:6-11" },
                    { "gospel", "MAT 26:14-27:66" },
                },
                B = {
                    { "first_reading", "ISA 50:4-7" },
                    { "psalm", "PSA 21:7-8; 21:16-19; 21:22-23", "greek_vulgate" },
                    { "second_reading", "PHP 2:6-11" },
                    { "gospel", "MRK 14:1-15:47" },
                },
            },
        },
        ["pentecost-sunday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "ACT 2:1-11" },
                    { "psalm", "PSA 103:1; 103:24; 103:29-31; 103:34", "greek_vulgate" },
                    { "second_reading", "1CO 12:3-7; 12:12-13" },
                    { "gospel", "JHN 20:19-23" },
                },
                ["B|I"] = {
                    { "first_reading", "ACT 2:1-11" },
                    { "psalm", "PSA 103:1; 103:24; 103:29-31; 103:34", "greek_vulgate" },
                    { "second_reading", "GAL 5:16-25" },
                    { "gospel", "JHN 20:19-23" },
                },
            },
        },
        ["saturday-after-ash-wednesday"] = {
            day = {
                { "first_reading", "ISA 58:9-14" },
                { "psalm", "PSA 85:1-6", "greek_vulgate" },
                { "gospel", "LUK 5:27-32" },
            },
        },
        ["thursday-after-ash-wednesday"] = {
            day = {
                { "first_reading", "DEU 30:15-20" },
                { "psalm", "PSA 1:1-4; 1:6", "greek_vulgate" },
                { "gospel", "LUK 9:22-25" },
            },
        },
    },
}
