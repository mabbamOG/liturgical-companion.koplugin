-- Lectionary for Mass (Missal of Paul VI): the United States edition, where its readings differ from the base.
-- Origin: USCCB daily readings pages and calendar 2026-2027; exported by parked/epub/migrate/lectionary.py.
-- temporal[<day key>][<Mass kind>] and celebration[<celebration id>][<Mass kind>] hold a
-- reading set, or reading sets by cycle: A/B/C (Sundays), I/II (weekdays) or "A|I"...
-- A reading is { slot, citation[, psalm numbering] }; see litcomp/core/citation.lua.
-- Day keys: a temporal celebration id, "MM-DD" (17-24 December, Christmas weekdays) or
-- "after-epiphany-N"; see litcomp/roman1970/lectionary.lua.
return {
    celebration = {
        ["joseph-spouse-of-mary"] = {
            day = {
                { "first_reading", "2SA 7:4-5a; 7:12-14a; 7:16" },
                { "psalm", "PSA 89:2-3; 89:4-5; 89:27; 89:29", "hebrew" },
                { "second_reading", "ROM 4:13; 4:16-18; 4:22" },
                { "acclamation", "PSA 84:5" },
                { "gospel", "MAT 1:16; 1:18-21; 1:24a | LUK 2:41-51a" },
            },
        },
        ["mary-magdalene"] = {
            day = {
                { "first_reading", "SNG 3:1-4b | 2CO 5:14-17" },
                { "psalm", "PSA 63:2; 63:3-4; 63:5-6; 63:8-9", "hebrew" },
                { "gospel", "JHN 20:1-2; 20:11-18" },
            },
        },
        ["maximilian-mary-raymund-kolbe-priest"] = {
            day = {
                { "first_reading", "EZK 16:1-15; 16:60; 16:63 | EZK 16:59-63" },
                { "psalm", "ISA 12:2-3; 12:4bcd; 12:5-6", "hebrew" },
                { "acclamation", "1TH 2:13" },
                { "gospel", "MAT 19:3-12" },
            },
        },
        ["michael-gabriel-and-raphael-archangels"] = {
            day = {
                { "first_reading", "DAN 7:9-10; 7:13-14 | REV 12:7-12ab" },
                { "psalm", "PSA 138:1-2ab; 138:2cde-3; 138:4-5", "hebrew" },
                { "acclamation", "PSA 103:21" },
                { "gospel", "JHN 1:47-51" },
            },
        },
        ["nativity-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "MIC 5:1-4a | ROM 8:28-30" },
                { "psalm", "PSA 13:6ab; 13:6c", "hebrew" },
                { "gospel", "MAT 1:1-16; 1:18-23 | MAT 1:18-23" },
            },
        },
        ["our-lady-of-sorrows"] = {
            day = {
                { "first_reading", "1CO 12:12-14; 12:27-31a" },
                { "psalm", "PSA 100:1b-2; 100:3; 100:4; 100:5", "hebrew" },
                { "acclamation", "LUK 7:16" },
                { "gospel", "JHN 19:25-27" },
            },
        },
        ["passion-of-saint-john-the-baptist"] = {
            day = {
                { "first_reading", "1CO 1:26-31" },
                { "psalm", "PSA 33:12-13; 33:18-19; 33:20-21", "hebrew" },
                { "acclamation", "MAT 5:10" },
                { "gospel", "MRK 6:17-29" },
            },
        },
        ["presentation-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "REV 11:4-12" },
                { "psalm", "PSA 144:1; 144:2; 144:9-10", "hebrew" },
                { "acclamation", "2TI 1:10" },
                { "gospel", "LUK 20:27-40" },
            },
        },
        ["timothy-of-ephesus-and-titus-of-crete-bishops"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "2TI 1:1-8 | TIT 1:1-5" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 3:22-30" },
                },
            },
        },
    },
    temporal = {
        ["12-21"] = {
            day = {
                { "first_reading", "SNG 2:8-14 | ZEP 3:14-18a" },
                { "psalm", "PSA 33:2-3; 33:11-12; 33:20-21", "hebrew" },
                { "gospel", "LUK 1:39-45" },
            },
        },
        ["ascension-of-the-lord"] = {
            day = {
                B = {
                    { "first_reading", "ACT 1:15-17; 1:20a; 1:20c-26" },
                    { "psalm", "PSA 103:1-2; 103:11-12; 103:19-20", "hebrew" },
                    { "second_reading", "1JN 4:11-16" },
                    { "acclamation", "JHN 14:18" },
                    { "gospel", "JHN 17:11b-19" },
                },
            },
        },
        ["easter-sunday"] = {
            day = {
                ["A|II"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4 | 1CO 5:6b-8" },
                    { "acclamation", "1CO 5:7" },
                    { "gospel", "JHN 20:1-9 | MAT 28:1-10 | LUK 24:13-35" },
                },
                ["B|I"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4 | 1CO 5:6b-8" },
                    { "acclamation", "1CO 5:7" },
                    { "gospel", "JHN 20:1-9 | MRK 16:1-7 | LUK 24:13-35" },
                },
            },
        },
        ["ordinary-time-15-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 55:10-11" },
                    { "psalm", "PSA 65:10; 65:11; 65:12-13; 65:14", "hebrew" },
                    { "second_reading", "ROM 8:18-23" },
                    { "gospel", "MAT 13:1-23 | MAT 13:1-9" },
                },
            },
        },
        ["ordinary-time-16-sunday"] = {
            day = {
                A = {
                    { "first_reading", "WIS 12:13; 12:16-19" },
                    { "psalm", "PSA 86:5-6; 86:9-10; 86:15-16", "hebrew" },
                    { "second_reading", "ROM 8:26-27" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 13:24-43 | MAT 13:24-30" },
                },
            },
        },
        ["ordinary-time-17-sunday"] = {
            day = {
                A = {
                    { "first_reading", "1KI 3:5; 3:7-12" },
                    { "psalm", "PSA 119:57; 119:72; 119:76-77; 119:127-128; 119:129-130", "hebrew" },
                    { "second_reading", "ROM 8:28-30" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 13:44-52 | MAT 13:44-46" },
                },
            },
        },
        ["ordinary-time-2-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 8:6-13" },
                    { "psalm", "PSA 85:8; 85:10; 85:11-12; 85:13-14", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MRK 3:13-19" },
                },
            },
        },
        ["ordinary-time-26-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EZK 18:25-28" },
                    { "psalm", "PSA 25:4-5; 25:6-7; 25:8-9", "hebrew" },
                    { "second_reading", "PHP 2:1-11 | PHP 2:1-5" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 21:28-32" },
                },
            },
        },
        ["ordinary-time-28-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 25:6-10a" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "PHP 4:12-14; 4:19-20" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MAT 22:1-14 | MAT 22:1-10" },
                },
            },
        },
        ["ordinary-time-32-sunday"] = {
            day = {
                A = {
                    { "first_reading", "WIS 6:12-16" },
                    { "psalm", "PSA 63:2; 63:3-4; 63:5-6; 63:7-8", "hebrew" },
                    { "second_reading", "1TH 4:13-18 | 1TH 4:13-14" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "MAT 25:1-13" },
                },
            },
        },
        ["ordinary-time-33-sunday"] = {
            day = {
                A = {
                    { "first_reading", "PRO 31:10-13; 31:19-20; 31:30-31" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "second_reading", "1TH 5:1-6" },
                    { "acclamation", "JHN 15:4a; 15:5b" },
                    { "gospel", "MAT 25:14-30 | MAT 25:14-15; 25:19-21" },
                },
            },
        },
        ["ordinary-time-4-monday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 11:32-40" },
                    { "psalm", "PSA 31:20; 31:21; 31:22; 31:23; 31:24", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MRK 5:1-20" },
                },
            },
        },
        ["ordinary-time-6-sunday"] = {
            day = {
                A = {
                    { "first_reading", "SIR 15:15-20" },
                    { "psalm", "PSA 119:1-2; 119:4-5; 119:17-18; 119:33-34", "hebrew" },
                    { "second_reading", "1CO 2:6-10" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 5:17-37 | MAT 5:20-22a; 5:27-28; 5:33-34a; 5:37" },
                },
            },
        },
        ["ordinary-time-9-tuesday"] = {
            day = {
                II = {
                    { "first_reading", "2PE 3:12-15a; 3:17-18" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 12:13-17" },
                    { "psalm", "PSA 90:2; 90:3-4; 90:10; 90:14; 90:16", "hebrew" },
                },
            },
        },
        ["palm-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 50:4-7" },
                    { "psalm", "PSA 22:8-9; 22:17-18; 22:19-20; 22:23-24", "hebrew" },
                    { "second_reading", "PHP 2:6-11" },
                    { "acclamation", "PHP 2:8-9" },
                    { "gospel", "MAT 21:1-11 | MAT 26:14-27:66 | MAT 27:11-54" },
                },
                B = {
                    { "first_reading", "ISA 50:4-7" },
                    { "psalm", "PSA 22:8-9; 22:17-18; 22:19-20; 22:23-24", "hebrew" },
                    { "second_reading", "PHP 2:6-11" },
                    { "acclamation", "PHP 2:8-9" },
                    { "gospel", "MRK 11:1-10 | MRK 14:1-15:47" },
                },
            },
        },
    },
}
