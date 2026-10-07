-- Lectionary for Mass (Missal of Paul VI): the Roman Lectionary as printed in the United States (Hebrew psalm numbering).
-- Origin: USCCB daily readings pages 2023-2027, learned in parked/epub/data/readings/tables/lectionary-table.json; exported by parked/epub/migrate/lectionary.py.
-- temporal[<day key>][<Mass kind>] and celebration[<celebration id>][<Mass kind>] hold a
-- reading set, or reading sets by cycle: A/B/C (Sundays), I/II (weekdays) or "A|I"...
-- A reading is { slot, citation[, psalm numbering] }; see litcomp/core/citation.lua.
-- Day keys: a temporal celebration id, "MM-DD" (17-24 December, Christmas weekdays) or
-- "after-epiphany-N"; see litcomp/roman1970/lectionary.lua.
-- Completed by tools/curation/complete_lectionary.py from the 1998/2002 Lectionary tables
-- (catholic-resources.org): the cycles the USCCB pages of 2023-2027 never showed.
return {
    celebration = {
        ["all-saints"] = {
            day = {
                { "first_reading", "REV 7:2-4; 7:9-14" },
                { "psalm", "PSA 24:1bc-2; 24:3-4ab; 24:5-6", "hebrew" },
                { "second_reading", "1JN 3:1-3" },
                { "acclamation", "MAT 11:28" },
                { "gospel", "MAT 5:1-12a" },
            },
        },
        ["andrew-apostle"] = {
            day = {
                { "first_reading", "ROM 10:9-18" },
                { "psalm", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                { "acclamation", "MAT 4:19" },
                { "gospel", "MAT 4:18-22" },
            },
        },
        ["annunciation-of-the-lord"] = {
            day = {
                { "first_reading", "ISA 7:10-14; 8:10" },
                { "psalm", "PSA 40:7-8a; 40:8b-9; 40:10; 40:11", "hebrew" },
                { "second_reading", "HEB 10:4-10" },
                { "acclamation", "JHN 1:14ab" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["assumption-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "REV 11:19a; 12:1-6a; 12:10ab" },
                { "psalm", "PSA 45:10; 45:11; 45:12; 45:16", "hebrew" },
                { "second_reading", "1CO 15:20-27" },
                { "gospel", "LUK 1:39-56" },
            },
            vigil = {
                { "first_reading", "1CH 15:3-4; 15:15-16; 16:1-2" },
                { "psalm", "PSA 132:6-7; 132:9-10; 132:13-14", "hebrew" },
                { "second_reading", "1CO 15:54b-57" },
                { "acclamation", "LUK 11:28" },
                { "gospel", "LUK 11:27-28" },
            },
        },
        ["barnabas-apostle"] = {
            day = {
                A = {
                    { "first_reading", "ACT 11:21b-26; 13:1-3" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4; 98:5-6", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 5:20-26" },
                },
                B = {
                    { "first_reading", "ACT 11:21b-26; 13:1-3" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4; 98:5-6", "hebrew" },
                    { "acclamation", "MAT 5:16" },
                    { "gospel", "MAT 5:13-16" },
                },
                C = {
                    { "first_reading", "ACT 11:21b-26; 13:1-3" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4; 98:5-6", "hebrew" },
                    { "acclamation", "PSA 25:4b; 25:5a" },
                    { "gospel", "MAT 5:17-19" },
                },
            },
        },
        ["bartholomew-apostle"] = {
            day = {
                { "first_reading", "REV 21:9b-14" },
                { "psalm", "PSA 145:10-11; 145:12-13; 145:17-18", "hebrew" },
                { "acclamation", "JHN 1:49b" },
                { "gospel", "JHN 1:45-51" },
            },
        },
        ["benedict-of-nursia-abbot-patron-of-europe"] = {
            day = {
                { "first_reading", "PRO 2:1-9" },
                { "psalm", "PSA 33:1-3; 33:5; 33:8; 33:11; 33:13-14", "greek_vulgate" },
                { "gospel", "MAT 19:27-29" },
            },
        },
        ["bridget-of-sweden-religious-copatroness-of-europe"] = {
            day = {
                { "first_reading", "GAL 2:19-20" },
                { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7; 34:8-9; 34:10-11", "hebrew" },
                { "gospel", "JHN 15:1-8" },
            },
        },
        ["catherine-of-siena-virgin-copatroness-of-europe"] = {
            day = {
                { "first_reading", "1JN 1:5-2:2" },
                { "acclamation", "MAT 11:25" },
                { "gospel", "MAT 11:25-30" },
            },
        },
        ["catherine-of-siena-virgin-copatroness-of-italy-and-europe"] = {
            day = {
                { "first_reading", "1JN 1:5-2:2" },
                { "acclamation", "MAT 11:25" },
                { "gospel", "MAT 11:25-30" },
            },
        },
        ["chair-of-saint-peter-the-apostle"] = {
            day = {
                { "first_reading", "1PE 5:1-4" },
                { "psalm", "PSA 23:1-3a; 23:4; 23:5; 23:6", "hebrew" },
                { "acclamation", "MAT 16:18" },
                { "gospel", "MAT 16:13-19" },
            },
        },
        ["commemoration-of-all-the-faithful-departed"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "WIS 3:1-9" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "ROM 6:3-9" },
                    { "acclamation", "MAT 25:34" },
                    { "gospel", "JHN 6:37-40" },
                },
                ["A|II"] = {
                    { "first_reading", "WIS 3:1-9" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "ROM 5:5-11" },
                    { "acclamation", "MAT 25:34" },
                    { "gospel", "JHN 6:37-40" },
                },
                ["B|I"] = {
                    { "first_reading", "WIS 3:1-9" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "ROM 6:3-9" },
                    { "acclamation", "MAT 25:34" },
                    { "gospel", "JHN 6:37-40" },
                },
                ["B|II"] = {
                    { "first_reading", "WIS 3:1-9" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "ROM 6:3-9" },
                    { "acclamation", "MAT 25:34" },
                    { "gospel", "JHN 6:37-40" },
                },
                ["C|I"] = {
                    { "first_reading", "WIS 3:1-9" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "ROM 5:5-11" },
                    { "acclamation", "MAT 25:34" },
                    { "gospel", "JHN 6:37-40" },
                },
                ["C|II"] = {
                    { "first_reading", "WIS 3:1-9" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "ROM 5:5-11" },
                    { "acclamation", "MAT 25:34" },
                    { "gospel", "JHN 6:37-40" },
                },
            },
        },
        ["conversion-of-saint-paul-the-apostle"] = {
            day = {
                { "first_reading", "ACT 22:3-16" },
                { "psalm", "PSA 117:1bc; 117:2", "hebrew" },
                { "acclamation", "JHN 15:16" },
                { "gospel", "MRK 16:15-18" },
            },
        },
        ["cyril-constantine-the-philosopher-monk-and-methodius-michael-of-thessaloniki-bishop-copatrons-of-europe"] = {
            day = {
                { "first_reading", "ACT 13:46-49 | ISA 52:7-10" },
                { "acclamation", "LUK 4:18cd" },
                { "gospel", "LUK 10:1-9" },
            },
        },
        ["dedication-of-the-lateran-basilica"] = {
            day = {
                { "first_reading", "EZK 47:1-2; 47:8-9; 47:12" },
                { "psalm", "PSA 46:2-3; 46:5-6; 46:8-9", "hebrew" },
                { "second_reading", "1CO 3:9c-11; 3:16-17" },
                { "acclamation", "2CH 7:16" },
                { "gospel", "JHN 2:13-22" },
            },
        },
        ["exaltation-of-the-holy-cross"] = {
            day = {
                { "first_reading", "NUM 21:4b-9" },
                { "psalm", "PSA 78:1bc-2; 78:34-35; 78:36-37; 78:38", "hebrew" },
                { "second_reading", "PHP 2:6-11" },
                { "gospel", "JHN 3:13-17" },
            },
        },
        ["francis-of-assisi-patron-of-italy"] = {
            day = {
                { "first_reading", "GAL 6:14-18" },
                { "psalm", "PSA 15:1-2; 15:5; 15:7-8; 15:11", "greek_vulgate" },
                { "gospel", "MAT 11:25-30" },
            },
        },
        ["holy-innocents-martyrs"] = {
            day = {
                { "first_reading", "1JN 1:5-2:2" },
                { "psalm", "PSA 124:2-3; 124:4-5; 124:7cd-8", "hebrew" },
                { "gospel", "MAT 2:13-18" },
            },
        },
        ["immaculate-conception-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "GEN 3:9-15; 3:20" },
                { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4", "hebrew" },
                { "second_reading", "EPH 1:3-6; 1:11-12" },
                { "acclamation", "LUK 1:28" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["immaculate-heart-of-mary"] = {
            day = {
                { "first_reading", "2CO 5:14-21" },
                { "psalm", "PSA 103:1-2; 103:3-4; 103:9-10; 103:11-12", "hebrew" },
                { "acclamation", "LUK 2:19" },
                { "gospel", "LUK 2:41-51" },
            },
        },
        ["james-apostle"] = {
            day = {
                { "first_reading", "2CO 4:7-15" },
                { "psalm", "PSA 126:1bc-2ab; 126:2cd-3; 126:4-5; 126:6", "hebrew" },
                { "acclamation", "JHN 15:16" },
                { "gospel", "MAT 20:20-28" },
            },
        },
        ["john-apostle"] = {
            day = {
                { "first_reading", "1JN 1:1-4" },
                { "psalm", "PSA 97:1-2; 97:5-6; 97:11-12", "hebrew" },
                { "gospel", "JHN 20:1a; 20:2-8" },
            },
        },
        ["joseph-spouse-of-mary"] = {
            day = {
                { "first_reading", "2SA 7:4-5a; 7:12-14a; 7:16" },
                { "psalm", "PSA 89:2-3; 89:4-5; 89:27; 89:29", "hebrew" },
                { "second_reading", "ROM 4:13; 4:16-18; 4:22" },
                { "acclamation", "PSA 84:5" },
                { "gospel", "MAT 1:16; 1:18-21; 1:24a" },
            },
        },
        ["lawrence-of-rome-deacon"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 112:1-2; 112:5-6; 112:7-8; 112:9", "hebrew" },
                    { "acclamation", "JHN 8:12bc" },
                    { "gospel", "JHN 12:24-26" },
                },
                ["A|II"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 112:1-2; 112:5-6; 112:7-8; 112:9", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "JHN 12:24-26" },
                },
                ["B|I"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 112:1-2; 112:5-6; 112:7-8; 112:9", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "JHN 12:24-26" },
                },
                ["B|II"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 112:1-2; 112:5-6; 112:7-8; 112:9", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "JHN 12:24-26" },
                },
                ["C|I"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 112:1-2; 112:5-6; 112:7-8; 112:9", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "JHN 12:24-26" },
                },
                ["C|II"] = {
                    { "first_reading", "2CO 9:6-10" },
                    { "psalm", "PSA 112:1-2; 112:5-6; 112:7-8; 112:9", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "JHN 12:24-26" },
                },
            },
        },
        ["luke-evangelist"] = {
            day = {
                { "first_reading", "2TI 4:10-17b" },
                { "psalm", "PSA 145:10-11; 145:12-13; 145:17-18", "hebrew" },
                { "acclamation", "JHN 15:16" },
                { "gospel", "LUK 10:1-9" },
            },
        },
        ["mark-evangelist"] = {
            day = {
                { "first_reading", "1PE 5:5b-14" },
                { "psalm", "PSA 89:2-3; 89:6-7; 89:16-17", "hebrew" },
                { "acclamation", "1CO 1:23a-24b" },
                { "gospel", "MRK 16:15-20" },
            },
        },
        ["mary-magdalene"] = {
            day = {
                { "first_reading", "SNG 3:1-4b" },
                { "psalm", "PSA 63:2; 63:3-4; 63:5-6; 63:8-9", "hebrew" },
                { "gospel", "JHN 20:1-2; 20:11-18" },
            },
        },
        ["mary-mother-of-the-church"] = {
            day = {
                { "first_reading", "GEN 3:9-15; 3:20" },
                { "psalm", "PSA 87:1-2; 87:3; 87:5; 87:6-7", "hebrew" },
                { "gospel", "JHN 19:25-34" },
            },
        },
        ["matthew-apostle"] = {
            day = {
                { "first_reading", "EPH 4:1-7; 4:11-13" },
                { "psalm", "PSA 19:2-3; 19:4-5", "hebrew" },
                { "gospel", "MAT 9:9-13" },
            },
        },
        ["matthias-apostle"] = {
            day = {
                { "first_reading", "ACT 1:15-17; 1:20-26" },
                { "psalm", "PSA 113:1-2; 113:3-4; 113:5-6; 113:7-8", "hebrew" },
                { "acclamation", "JHN 15:16" },
                { "gospel", "JHN 15:9-17" },
            },
        },
        ["michael-gabriel-and-raphael-archangels"] = {
            day = {
                { "first_reading", "DAN 7:9-10; 7:13-14" },
                { "psalm", "PSA 138:1-2ab; 138:2cde-3; 138:4-5", "hebrew" },
                { "acclamation", "PSA 103:21" },
                { "gospel", "JHN 1:47-51" },
            },
        },
        ["nativity-of-john-the-baptist"] = {
            day = {
                { "first_reading", "ISA 49:1-6" },
                { "psalm", "PSA 139:1b-3; 139:13-14ab; 139:14c-15", "hebrew" },
                { "second_reading", "ACT 13:22-26" },
                { "acclamation", "LUK 1:76" },
                { "gospel", "LUK 1:57-66; 1:80" },
            },
            vigil = {
                { "first_reading", "JER 1:4-10" },
                { "psalm", "PSA 71:1-2; 71:3-4a; 71:5-6ab; 71:15ab; 71:17", "hebrew" },
                { "second_reading", "1PE 1:8-12" },
                { "acclamation", "JHN 1:7; LUK 1:17" },
                { "gospel", "LUK 1:5-17" },
            },
        },
        ["nativity-of-the-blessed-virgin-mary"] = {
            day = {
                { "first_reading", "MIC 5:1-4a" },
                { "psalm", "PSA 13:6ab; 13:6c", "hebrew" },
                { "gospel", "MAT 1:1-16; 1:18-23" },
            },
        },
        ["our-lady-of-guadalupe"] = {
            day = {
                { "first_reading", "ZEC 2:14-17" },
                { "psalm", "JDT 13:18bcde; 13:19", "hebrew" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["peter-and-paul-apostles"] = {
            day = {
                { "first_reading", "ACT 12:1-11" },
                { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7; 34:8-9", "hebrew" },
                { "second_reading", "2TI 4:6-8; 4:17-18" },
                { "acclamation", "MAT 16:18" },
                { "gospel", "MAT 16:13-19" },
            },
            vigil = {
                { "first_reading", "ACT 3:1-10" },
                { "psalm", "PSA 19:2-3; 19:4-5", "hebrew" },
                { "second_reading", "GAL 1:11-20" },
                { "acclamation", "JHN 21:17" },
                { "gospel", "JHN 21:15-19" },
            },
        },
        ["philip-and-james-apostles"] = {
            day = {
                { "first_reading", "1CO 15:1-8" },
                { "psalm", "PSA 19:2-3; 19:4-5", "hebrew" },
                { "acclamation", "JHN 14:6b; 14:9c" },
                { "gospel", "JHN 14:6-14" },
            },
        },
        ["presentation-of-the-lord"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 24:7; 24:8; 24:9; 24:10", "hebrew" },
                    { "second_reading", "HEB 2:14-18" },
                    { "acclamation", "LUK 2:32" },
                    { "gospel", "LUK 2:22-40 | LUK 2:22-32" },
                },
                ["A|II"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 24:7; 24:8; 24:9; 24:10", "hebrew" },
                    { "second_reading", "HEB 2:14-18" },
                    { "acclamation", "LUK 2:32" },
                    { "gospel", "LUK 2:22-40 | LUK 2:22-32" },
                },
                ["B|I"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 24:7; 24:8; 24:9; 24:10", "hebrew" },
                    { "second_reading", "HEB 2:14-18" },
                    { "acclamation", "LUK 2:32" },
                    { "gospel", "LUK 2:22-40 | LUK 2:22-32" },
                },
                ["B|II"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 24:7; 24:8; 24:9; 24:10", "hebrew" },
                    { "second_reading", "HEB 2:14-18" },
                    { "acclamation", "LUK 2:32" },
                    { "gospel", "LUK 2:22-40" },
                },
                ["C|I"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 24:7; 24:8; 24:9; 24:10", "hebrew" },
                    { "second_reading", "HEB 2:14-18" },
                    { "acclamation", "LUK 2:32" },
                    { "gospel", "LUK 2:22-40 | LUK 2:22-32" },
                },
                ["C|II"] = {
                    { "first_reading", "MAL 3:1-4" },
                    { "psalm", "PSA 24:7; 24:8; 24:9; 24:10", "hebrew" },
                    { "second_reading", "HEB 2:14-18" },
                    { "acclamation", "LUK 2:32" },
                    { "gospel", "LUK 2:22-40 | LUK 2:22-32" },
                },
            },
        },
        ["simon-and-jude-apostles"] = {
            day = {
                { "first_reading", "EPH 2:19-22" },
                { "psalm", "PSA 19:2-3; 19:4-5", "hebrew" },
                { "gospel", "LUK 6:12-16" },
            },
        },
        ["stephen-the-first-martyr"] = {
            day = {
                { "first_reading", "ACT 6:8-10; 7:54-59" },
                { "psalm", "PSA 31:3cd-4; 31:6; 31:8ab; 31:16bc; 31:17", "hebrew" },
                { "acclamation", "PSA 118:26a; 118:27a" },
                { "gospel", "MAT 10:17-22" },
            },
        },
        ["teresa-benedicta-of-the-cross-stein-virgin-copatroness-of-europe"] = {
            day = {
                { "first_reading", "HOS 2:16b; 2:17b; 2:21-22" },
                { "psalm", "PSA 45:11-12; 45:14-15; 45:16-17", "hebrew" },
                { "gospel", "MAT 25:1-13" },
            },
        },
        ["thomas-apostle"] = {
            day = {
                { "first_reading", "EPH 2:19-22" },
                { "psalm", "PSA 117:1bc; 117:2", "hebrew" },
                { "acclamation", "JHN 20:29" },
                { "gospel", "JHN 20:24-29" },
            },
        },
        ["timothy-of-ephesus-and-titus-of-crete-bishops"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "hebrew" },
                    { "acclamation", "PSA 119:105" },
                    { "gospel", "MRK 4:21-25" },
                },
                ["A|II"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 3:22-30" },
                },
                ["B|I"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 3:31-35" },
                },
                ["B|II"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 4:26-34" },
                },
                ["C|I"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 3:31-35" },
                },
                ["C|II"] = {
                    { "first_reading", "2TI 1:1-8" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 3:31-35" },
                },
            },
        },
        ["transfiguration-of-the-lord"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 97:1-2; 97:5-6; 97:9", "hebrew" },
                    { "second_reading", "2PE 1:16-19" },
                    { "acclamation", "MAT 17:5c" },
                    { "gospel", "MAT 17:1-9" },
                },
                ["A|II"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 97:1-2; 97:5-6; 97:9", "hebrew" },
                    { "second_reading", "2PE 1:16-19" },
                    { "acclamation", "MAT 17:5" },
                    { "gospel", "MAT 17:1-9" },
                },
                ["B|I"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 97:1-2; 97:5-6; 97:9", "hebrew" },
                    { "second_reading", "2PE 1:16-19" },
                    { "acclamation", "MAT 17:5" },
                    { "gospel", "MRK 9:2-10" },
                },
                ["B|II"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 97:1-2; 97:5-6; 97:9", "hebrew" },
                    { "second_reading", "2PE 1:16-19" },
                    { "acclamation", "MAT 17:5" },
                    { "gospel", "MRK 9:2-10" },
                },
                ["C|I"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 97:1-2; 97:5-6; 97:9", "hebrew" },
                    { "second_reading", "2PE 1:16-19" },
                    { "acclamation", "MAT 17:5c" },
                    { "gospel", "LUK 9:28b-36" },
                },
                ["C|II"] = {
                    { "first_reading", "DAN 7:9-10; 7:13-14" },
                    { "psalm", "PSA 97:1-2; 97:5-6; 97:9", "hebrew" },
                    { "second_reading", "2PE 1:16-19" },
                    { "acclamation", "MAT 17:5c" },
                    { "gospel", "LUK 9:28b-36" },
                },
            },
        },
        ["visitation-of-mary"] = {
            day = {
                { "first_reading", "ZEP 3:14-18a" },
                { "psalm", "ISA 12:2-3; 12:4bcd; 12:5-6", "hebrew" },
                { "acclamation", "LUK 1:45" },
                { "gospel", "LUK 1:39-56" },
            },
        },
    },
    temporal = {
        ["01-02"] = {
            day = {
                { "first_reading", "1JN 2:22-28" },
                { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4", "hebrew" },
                { "acclamation", "HEB 1:1-2" },
                { "gospel", "JHN 1:19-28" },
            },
        },
        ["01-03"] = {
            day = {
                { "first_reading", "1JN 2:29-3:6" },
                { "psalm", "PSA 98:1; 98:3cd-4; 98:5-6", "hebrew" },
                { "acclamation", "JHN 1:14a; 1:12a" },
                { "gospel", "JHN 1:29-34" },
            },
        },
        ["01-04"] = {
            day = {
                { "first_reading", "1JN 3:7-10" },
                { "psalm", "PSA 98:1; 98:7-8; 98:9", "hebrew" },
                { "acclamation", "HEB 1:1-2" },
                { "gospel", "JHN 1:35-42" },
            },
        },
        ["01-05"] = {
            day = {
                { "first_reading", "1JN 3:11-21" },
                { "psalm", "PSA 100:1b-2; 100:3; 100:4; 100:5", "hebrew" },
                { "gospel", "JHN 1:43-51" },
            },
        },
        ["01-06"] = {
            day = {
                { "first_reading", "1JN 5:5-13" },
                { "psalm", "PSA 147:12-13; 147:14-15; 147:19-20", "hebrew" },
                { "acclamation", "MRK 9:6" },
                { "gospel", "MRK 1:7-11" },
            },
        },
        ["01-07"] = {
            day = {
                I = {
                    { "first_reading", "1JN 5:14-21" },
                    { "psalm", "PSA 149:1-2; 149:3-4; 149:5; 149:6a; 149:9b", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "JHN 2:1-11" },
                },
                II = {
                    { "first_reading", "1JN 5:14-21" },
                    { "psalm", "PSA 149:1-2; 149:3-4; 149:5; 149:6a; 149:9b", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "JHN 2:1-11" },
                },
            },
        },
        ["12-17"] = {
            day = {
                { "first_reading", "GEN 49:2; 49:8-10" },
                { "psalm", "PSA 72:1-2; 72:3-4ab; 72:7-8; 72:17", "hebrew" },
                { "gospel", "MAT 1:1-17" },
            },
        },
        ["12-18"] = {
            day = {
                { "first_reading", "JER 23:5-8" },
                { "psalm", "PSA 72:1-2; 72:12-13; 72:18-19", "hebrew" },
                { "gospel", "MAT 1:18-25" },
            },
        },
        ["12-19"] = {
            day = {
                { "first_reading", "JDG 13:2-7; 13:24-25a" },
                { "psalm", "PSA 71:3-4a; 71:5-6ab; 71:16-17", "hebrew" },
                { "gospel", "LUK 1:5-25" },
            },
        },
        ["12-20"] = {
            day = {
                { "first_reading", "ISA 7:10-14" },
                { "psalm", "PSA 24:1-2; 24:3-4ab; 24:5-6", "hebrew" },
                { "gospel", "LUK 1:26-38" },
            },
        },
        ["12-21"] = {
            day = {
                { "first_reading", "SNG 2:8-14" },
                { "psalm", "PSA 33:2-3; 33:11-12; 33:20-21", "hebrew" },
                { "gospel", "LUK 1:39-45" },
            },
        },
        ["12-22"] = {
            day = {
                { "first_reading", "1SA 1:24-28" },
                { "psalm", "1SA 2:1; 2:4-5; 2:6-7; 2:8abcd", "hebrew" },
                { "gospel", "LUK 1:46-56" },
            },
        },
        ["12-23"] = {
            day = {
                { "first_reading", "MAL 3:1-4; 3:23-24" },
                { "psalm", "PSA 25:4-5ab; 25:8-9; 25:10; 25:14", "hebrew" },
                { "gospel", "LUK 1:57-66" },
            },
        },
        ["12-24"] = {
            day = {
                { "first_reading", "2SA 7:1-5; 7:8b-12; 7:14a; 7:16" },
                { "psalm", "PSA 89:2-3; 89:4-5; 89:27; 89:29", "hebrew" },
                { "gospel", "LUK 1:67-79" },
            },
        },
        ["12-26"] = {
            day = {
                { "first_reading", "ACT 6:8-10; 7:54-59" },
                { "psalm", "PSA 31:3cd-4; 31:6ab; 31:8a; 31:16bc; 31:17", "hebrew" },
                { "acclamation", "PSA 118:26a; 118:27a" },
                { "gospel", "MAT 10:17-22" },
            },
        },
        ["12-27"] = {
            day = {
                { "first_reading", "1JN 1:1-4" },
                { "psalm", "PSA 97:1-2; 97:5-6; 97:11-12", "hebrew" },
                { "gospel", "JHN 20:1a; 20:2-8" },
            },
        },
        ["12-28"] = {
            day = {
                { "first_reading", "1JN 1:5-2:2" },
                { "psalm", "PSA 124:2-3; 124:4-5; 124:7cd-8", "hebrew" },
                { "gospel", "MAT 2:13-18" },
            },
        },
        ["12-29"] = {
            day = {
                { "first_reading", "1JN 2:3-11" },
                { "psalm", "PSA 96:1-2a; 96:2b-3; 96:5b-6", "hebrew" },
                { "acclamation", "LUK 2:32" },
                { "gospel", "LUK 2:22-35" },
            },
        },
        ["12-30"] = {
            day = {
                { "first_reading", "1JN 2:12-17" },
                { "psalm", "PSA 96:7-8a; 96:8b-9; 96:10", "hebrew" },
                { "gospel", "LUK 2:36-40" },
            },
        },
        ["12-31"] = {
            day = {
                { "first_reading", "1JN 2:18-21" },
                { "psalm", "PSA 96:1-2; 96:11-12; 96:13", "hebrew" },
                { "acclamation", "JHN 1:14a; 1:12a" },
                { "gospel", "JHN 1:1-18" },
            },
        },
        ["advent-1-friday"] = {
            day = {
                { "first_reading", "ISA 29:17-24" },
                { "psalm", "PSA 27:1; 27:4; 27:13-14", "hebrew" },
                { "gospel", "MAT 9:27-31" },
            },
        },
        ["advent-1-monday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "ISA 2:1-5" },
                    { "psalm", "PSA 122:1-2; 122:3-4b; 122:4cd-5; 122:6-7; 122:8-9", "hebrew" },
                    { "acclamation", "PSA 80:4" },
                    { "gospel", "MAT 8:5-11" },
                },
                ["A|II"] = {
                    { "first_reading", "ISA 4:2-6" },
                    { "psalm", "PSA 122:1-2; 122:3-4b; 122:4cd-5; 122:6-7; 122:8-9", "hebrew" },
                    { "acclamation", "PSA 80:4" },
                    { "gospel", "MAT 8:5-11" },
                },
                ["B|I"] = {
                    { "first_reading", "ISA 2:1-5" },
                    { "psalm", "PSA 122:1-2; 122:3-4b; 122:4cd-5; 122:6-7; 122:8-9", "hebrew" },
                    { "acclamation", "PSA 80:4" },
                    { "gospel", "MAT 8:5-11" },
                },
                ["B|II"] = {
                    { "first_reading", "ISA 2:1-5" },
                    { "psalm", "PSA 122:1-2; 122:3-4b; 122:4cd-5; 122:6-7; 122:8-9", "hebrew" },
                    { "acclamation", "PSA 80:4" },
                    { "gospel", "MAT 8:5-11" },
                },
                ["C|I"] = {
                    { "first_reading", "ISA 2:1-5" },
                    { "psalm", "PSA 122:1-2; 122:3-4b; 122:4cd-5; 122:6-7; 122:8-9", "hebrew" },
                    { "acclamation", "PSA 80:4" },
                    { "gospel", "MAT 8:5-11" },
                },
                ["C|II"] = {
                    { "first_reading", "ISA 2:1-5" },
                    { "psalm", "PSA 122:1-2; 122:3-4b; 122:4cd-5; 122:6-7; 122:8-9", "hebrew" },
                    { "acclamation", "PSA 80:4" },
                    { "gospel", "MAT 8:5-11" },
                },
            },
        },
        ["advent-1-saturday"] = {
            day = {
                { "first_reading", "ISA 30:19-21; 30:23-26" },
                { "psalm", "PSA 147:1-2; 147:3-4; 147:5-6", "hebrew" },
                { "acclamation", "ISA 33:22" },
                { "gospel", "MAT 9:35-10:1; 9:5a; 9:6-8" },
            },
        },
        ["advent-1-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 2:1-5" },
                    { "psalm", "PSA 122:1-2; 122:3-4; 122:4-5; 122:6-7; 122:8-9", "hebrew" },
                    { "second_reading", "ROM 13:11-14" },
                    { "acclamation", "PSA 85:8" },
                    { "gospel", "MAT 24:37-44" },
                },
                B = {
                    { "first_reading", "ISA 63:16b-17; 63:19b; 64:2-7" },
                    { "psalm", "PSA 80:2-3; 80:15-16; 80:18-19", "hebrew" },
                    { "second_reading", "1CO 1:3-9" },
                    { "acclamation", "PSA 85:8" },
                    { "gospel", "MRK 13:33-37" },
                },
                C = {
                    { "first_reading", "JER 33:14-16" },
                    { "psalm", "PSA 25:4-5; 25:8-9; 25:10; 25:14", "hebrew" },
                    { "second_reading", "1TH 3:12-4:2" },
                    { "acclamation", "PSA 85:8" },
                    { "gospel", "LUK 21:25-28; 21:34-36" },
                },
            },
        },
        ["advent-1-thursday"] = {
            day = {
                { "first_reading", "ISA 26:1-6" },
                { "psalm", "PSA 118:1; 118:8-9; 118:19-21; 118:25-27a", "hebrew" },
                { "acclamation", "ISA 55:6" },
                { "gospel", "MAT 7:21; 7:24-27" },
            },
        },
        ["advent-1-tuesday"] = {
            day = {
                { "first_reading", "ISA 11:1-10" },
                { "psalm", "PSA 72:1-2; 72:7-8; 72:12-13; 72:17", "hebrew" },
                { "gospel", "LUK 10:21-24" },
            },
        },
        ["advent-1-wednesday"] = {
            day = {
                { "first_reading", "ISA 25:6-10a" },
                { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                { "gospel", "MAT 15:29-37" },
            },
        },
        ["advent-2-friday"] = {
            day = {
                { "first_reading", "ISA 48:17-19" },
                { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                { "gospel", "MAT 11:16-19" },
            },
        },
        ["advent-2-monday"] = {
            day = {
                { "first_reading", "ISA 35:1-10" },
                { "psalm", "PSA 85:9ab; 85:10; 85:11-12; 85:13-14", "hebrew" },
                { "gospel", "LUK 5:17-26" },
            },
        },
        ["advent-2-saturday"] = {
            day = {
                { "first_reading", "SIR 48:1-4; 48:9-11" },
                { "psalm", "PSA 80:2ac; 80:3b; 80:15-16; 80:18-19", "hebrew" },
                { "acclamation", "LUK 3:4; 3:6" },
                { "gospel", "MAT 17:9a; 17:10-13" },
            },
        },
        ["advent-2-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 11:1-10" },
                    { "psalm", "PSA 72:1-2; 72:7-8; 72:12-13; 72:17", "hebrew" },
                    { "second_reading", "ROM 15:4-9" },
                    { "acclamation", "LUK 3:4; 3:6" },
                    { "gospel", "MAT 3:1-12" },
                },
                B = {
                    { "first_reading", "ISA 40:1-5; 40:9-11" },
                    { "psalm", "PSA 85:9-10; 85:11-12; 85:13-14", "hebrew" },
                    { "second_reading", "2PE 3:8-14" },
                    { "acclamation", "LUK 3:4; 3:6" },
                    { "gospel", "MRK 1:1-8" },
                },
                C = {
                    { "first_reading", "BAR 5:1-9" },
                    { "psalm", "PSA 126:1-2; 126:2-3; 126:4-5; 126:6", "hebrew" },
                    { "second_reading", "PHP 1:4-6; 1:8-11" },
                    { "acclamation", "LUK 3:4; 3:6" },
                    { "gospel", "LUK 3:1-6" },
                },
            },
        },
        ["advent-2-thursday"] = {
            day = {
                { "first_reading", "ISA 41:13-20" },
                { "psalm", "PSA 145:1; 145:9; 145:10-11; 145:12-13ab", "hebrew" },
                { "acclamation", "ISA 45:8" },
                { "gospel", "MAT 11:11-15" },
            },
        },
        ["advent-2-tuesday"] = {
            day = {
                { "first_reading", "ISA 40:1-11" },
                { "psalm", "PSA 96:1-2; 96:3; 96:10ac; 96:11-12; 96:13", "hebrew" },
                { "gospel", "MAT 18:12-14" },
            },
        },
        ["advent-2-wednesday"] = {
            day = {
                { "first_reading", "ISA 40:25-31" },
                { "psalm", "PSA 103:1-2; 103:3-4; 103:8; 103:10", "hebrew" },
                { "gospel", "MAT 11:28-30" },
            },
        },
        ["advent-3-friday"] = {
            day = {
                { "first_reading", "ISA 56:1-3a; 56:6-8" },
                { "psalm", "PSA 67:2-3; 67:5; 67:7-8", "hebrew" },
                { "gospel", "JHN 5:33-36" },
            },
        },
        ["advent-3-monday"] = {
            day = {
                { "first_reading", "NUM 24:2-7; 24:15-17a" },
                { "psalm", "PSA 25:4-5ab; 25:6; 25:7bc; 25:8-9", "hebrew" },
                { "acclamation", "PSA 85:8" },
                { "gospel", "MAT 21:23-27" },
            },
        },
        ["advent-3-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 35:1-6a; 35:10" },
                    { "psalm", "PSA 146:6-7; 146:8-9; 146:9-10", "hebrew" },
                    { "second_reading", "JAS 5:7-10" },
                    { "acclamation", "ISA 61:1" },
                    { "gospel", "MAT 11:2-11" },
                },
                B = {
                    { "first_reading", "ISA 61:1-2a; 61:10-11" },
                    { "psalm", "LUK 1:46-48; 1:49-50; 1:53-54", "hebrew" },
                    { "second_reading", "1TH 5:16-24" },
                    { "acclamation", "ISA 61:1" },
                    { "gospel", "JHN 1:6-8; 1:19-28" },
                },
                C = {
                    { "first_reading", "ZEP 3:14-18a" },
                    { "psalm", "ISA 12:2-3; 12:4; 12:5-6", "hebrew" },
                    { "second_reading", "PHP 4:4-7" },
                    { "acclamation", "ISA 61:1" },
                    { "gospel", "LUK 3:10-18" },
                },
            },
        },
        ["advent-3-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ISA 54:1-10" },
                    { "psalm", "PSA 30:2; 30:4; 30:5-6; 30:11-12a; 30:13b", "hebrew" },
                    { "acclamation", "LUK 3:4; 3:6" },
                    { "gospel", "LUK 7:24-30" },
                },
                II = {
                    { "first_reading", "ISA 54:1-10" },
                    { "psalm", "PSA 30:2; 30:4; 30:5-6; 30:11-12a; 30:13b", "hebrew" },
                    { "acclamation", "LUK 3:4; 3:6" },
                    { "gospel", "LUK 7:24-30" },
                },
            },
        },
        ["advent-3-tuesday"] = {
            day = {
                { "first_reading", "ZEP 3:1-2; 3:9-13" },
                { "psalm", "PSA 34:2-3; 34:6-7; 34:17-18; 34:19; 34:23", "hebrew" },
                { "gospel", "MAT 21:28-32" },
            },
        },
        ["advent-3-wednesday"] = {
            day = {
                { "first_reading", "ISA 45:6c-8; 45:18; 45:21c-25" },
                { "psalm", "PSA 85:9ab; 85:10; 85:11-12; 85:13-14", "hebrew" },
                { "acclamation", "ISA 40:9-10" },
                { "gospel", "LUK 7:18b-23" },
            },
        },
        ["advent-4-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 7:10-14" },
                    { "psalm", "PSA 24:1-2; 24:3-4; 24:5-6", "hebrew" },
                    { "second_reading", "ROM 1:1-7" },
                    { "acclamation", "MAT 1:23" },
                    { "gospel", "MAT 1:18-24" },
                },
                B = {
                    { "first_reading", "2SA 7:1-5; 7:8b-12; 7:14a; 7:16" },
                    { "psalm", "PSA 89:2-3; 89:4-5; 89:27; 89:29", "hebrew" },
                    { "second_reading", "ROM 16:25-27" },
                    { "acclamation", "LUK 1:38" },
                    { "gospel", "LUK 1:26-38" },
                },
                C = {
                    { "first_reading", "MIC 5:1-4a" },
                    { "psalm", "PSA 80:2-3; 80:15-16; 80:18-19", "hebrew" },
                    { "second_reading", "HEB 10:5-10" },
                    { "acclamation", "LUK 1:38" },
                    { "gospel", "LUK 1:39-45" },
                },
            },
        },
        ["after-epiphany-1"] = {
            day = {
                { "first_reading", "1JN 3:22-4:6" },
                { "psalm", "PSA 2:7bc-8; 2:10-12a", "hebrew" },
                { "acclamation", "MAT 4:23" },
                { "gospel", "MAT 4:12-17; 4:23-25" },
            },
        },
        ["after-epiphany-2"] = {
            day = {
                { "first_reading", "1JN 4:7-10" },
                { "psalm", "PSA 72:1-2; 72:3-4; 72:7-8", "hebrew" },
                { "acclamation", "LUK 4:18" },
                { "gospel", "MRK 6:34-44" },
            },
        },
        ["after-epiphany-3"] = {
            day = {
                { "first_reading", "1JN 4:11-18" },
                { "psalm", "PSA 72:1-2; 72:10; 72:12-13", "hebrew" },
                { "acclamation", "1TI 3:16" },
                { "gospel", "MRK 6:45-52" },
            },
        },
        ["after-epiphany-4"] = {
            day = {
                { "first_reading", "1JN 4:19-5:4" },
                { "psalm", "PSA 72:1-2; 72:14; 72:15bc; 72:17", "hebrew" },
                { "acclamation", "LUK 4:18" },
                { "gospel", "LUK 4:14-22" },
            },
        },
        ["after-epiphany-5"] = {
            day = {
                { "first_reading", "1JN 5:5-13" },
                { "psalm", "PSA 147:12-13; 147:14-15; 147:19-20", "hebrew" },
                { "acclamation", "MAT 4:23" },
                { "gospel", "LUK 5:12-16" },
            },
        },
        ["after-epiphany-6"] = {
            day = {
                { "first_reading", "1JN 5:14-21" },
                { "psalm", "PSA 149:1-2; 149:3-4; 149:5-6a; 149:9b", "hebrew" },
                { "acclamation", "MAT 4:16" },
                { "gospel", "JHN 3:22-30" },
            },
        },
        ["ascension-of-the-lord"] = {
            day = {
                A = {
                    { "first_reading", "ACT 1:1-11" },
                    { "psalm", "PSA 47:2-3; 47:6-7; 47:8-9", "hebrew" },
                    { "second_reading", "EPH 1:17-23" },
                    { "acclamation", "MAT 28:19a; 28:20b" },
                    { "gospel", "MAT 28:16-20" },
                },
                B = {
                    { "first_reading", "ACT 1:1-11" },
                    { "psalm", "PSA 47:2-3; 47:6-7; 47:8-9", "hebrew" },
                    { "second_reading", "EPH 1:17-23" },
                    { "acclamation", "MAT 28:19a; 28:20b" },
                    { "gospel", "MRK 16:15-20" },
                },
                C = {
                    { "first_reading", "ACT 1:1-11" },
                    { "psalm", "PSA 47:2-3; 47:6-7; 47:8-9", "hebrew" },
                    { "second_reading", "HEB 9:24-28; 10:19-23" },
                    { "acclamation", "MAT 28:19a; 28:20b" },
                    { "gospel", "LUK 24:46-53" },
                },
            },
            vigil = "day",
        },
        ["ash-wednesday"] = {
            day = {
                { "first_reading", "JOL 2:12-18" },
                { "psalm", "PSA 51:3-4; 51:5-6ab; 51:12-13; 51:14; 51:17", "hebrew" },
                { "second_reading", "2CO 5:20-6:2" },
                { "acclamation", "PSA 95:8" },
                { "gospel", "MAT 6:1-6; 6:16-18" },
            },
        },
        ["baptism-of-the-lord"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "ISA 42:1-4; 42:6-7" },
                    { "psalm", "PSA 29:1-2; 29:3-4; 29:3; 29:9-10", "hebrew" },
                    { "acclamation", "MRK 9:7" },
                    { "gospel", "MAT 3:13-17" },
                },
                ["A|II"] = {
                    { "first_reading", "ISA 42:1-4; 42:6-7" },
                    { "psalm", "PSA 29:1-2; 29:3-4; 29:3; 29:9-10", "hebrew" },
                    { "second_reading", "ACT 10:34-38" },
                    { "acclamation", "MRK 9:7" },
                    { "gospel", "MAT 3:13-17" },
                },
                ["B|I"] = {
                    { "first_reading", "ISA 42:1-4; 42:6-7" },
                    { "psalm", "PSA 29:1-2; 29:3-4; 29:3; 29:9-10", "hebrew" },
                    { "second_reading", "ACT 10:34-38" },
                    { "acclamation", "MRK 9:7" },
                    { "gospel", "MRK 1:7-11" },
                },
                ["B|II"] = {
                    { "first_reading", "ISA 42:1-4; 42:6-7" },
                    { "psalm", "PSA 29:1-2; 29:3-4; 29:3; 29:9-10", "hebrew" },
                    { "acclamation", "JHN 1:29" },
                    { "gospel", "MRK 1:7-11" },
                },
                ["C|I"] = {
                    { "first_reading", "ISA 42:1-4; 42:6-7" },
                    { "psalm", "PSA 29:1-2; 29:3-4; 29:3; 29:9-10", "hebrew" },
                    { "second_reading", "ACT 10:34-38" },
                    { "acclamation", "MRK 9:7" },
                    { "gospel", "LUK 3:15-16; 3:21-22" },
                },
                ["C|II"] = {
                    { "first_reading", "ISA 42:1-4; 42:6-7" },
                    { "psalm", "PSA 29:1-2; 29:3-4; 29:3; 29:9-10", "hebrew" },
                    { "second_reading", "ACT 10:34-38" },
                    { "acclamation", "MRK 9:7" },
                    { "gospel", "LUK 3:15-16; 3:21-22" },
                },
            },
        },
        ["christ-the-king"] = {
            day = {
                A = {
                    { "first_reading", "EZK 34:11-12; 34:15-17" },
                    { "psalm", "PSA 23:1-2; 23:2-3; 23:5-6", "hebrew" },
                    { "second_reading", "1CO 15:20-26; 15:28" },
                    { "acclamation", "MRK 11:9; 11:10" },
                    { "gospel", "MAT 25:31-46" },
                },
                B = {
                    { "first_reading", "DAN 7:13-14" },
                    { "psalm", "PSA 93:1; 93:1-2; 93:5", "hebrew" },
                    { "second_reading", "REV 1:5-8" },
                    { "acclamation", "MRK 11:9; 11:10" },
                    { "gospel", "JHN 18:33b-37" },
                },
                C = {
                    { "first_reading", "2SA 5:1-3" },
                    { "psalm", "PSA 122:1-2; 122:3-4; 122:4-5", "hebrew" },
                    { "second_reading", "COL 1:12-20" },
                    { "acclamation", "MRK 11:9; 11:10" },
                    { "gospel", "LUK 23:35-43" },
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
                    { "first_reading", "DEU 8:2-3; 8:14b-16a" },
                    { "psalm", "PSA 147:12-13; 147:14-15; 147:19-20", "hebrew" },
                    { "second_reading", "1CO 10:16-17" },
                    { "acclamation", "JHN 6:51" },
                    { "gospel", "JHN 6:51-58" },
                },
                B = {
                    { "first_reading", "EXO 24:3-8" },
                    { "psalm", "PSA 116:12-13; 116:15-16; 116:17-18", "hebrew" },
                    { "second_reading", "HEB 9:11-15" },
                    { "acclamation", "JHN 6:51" },
                    { "gospel", "MRK 14:12-16; 14:22-26" },
                },
                C = {
                    { "first_reading", "GEN 14:18-20" },
                    { "psalm", "PSA 110:1; 110:2; 110:3; 110:4", "hebrew" },
                    { "second_reading", "1CO 11:23-26" },
                    { "acclamation", "JHN 6:51" },
                    { "gospel", "LUK 9:11b-17" },
                },
            },
        },
        ["easter-1-friday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 118:1-2; 118:4; 118:22-24; 118:25-27a", "hebrew" },
                    { "acclamation", "PSA 118:24" },
                    { "gospel", "JHN 21:1-14" },
                },
                ["A|II"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 118:1-2; 118:4; 118:22-24; 118:25-27a", "hebrew" },
                    { "acclamation", "PSA 118:24" },
                    { "gospel", "JHN 21:1-14" },
                },
                ["B|I"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 118:1-2; 118:4; 118:22-24; 118:25-27a", "hebrew" },
                    { "acclamation", "PSA 118:24" },
                    { "gospel", "JHN 21:1-14" },
                },
                ["B|II"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 118:1-2; 118:4; 118:22-24; 118:25-27a", "hebrew" },
                    { "gospel", "JHN 21:1-14" },
                },
                ["C|I"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 118:1-2; 118:4; 118:22-24; 118:25-27a", "hebrew" },
                    { "acclamation", "PSA 118:24" },
                    { "gospel", "JHN 21:1-14" },
                },
                ["C|II"] = {
                    { "first_reading", "ACT 4:1-12" },
                    { "psalm", "PSA 118:1-2; 118:4; 118:22-24; 118:25-27a", "hebrew" },
                    { "acclamation", "PSA 118:24" },
                    { "gospel", "JHN 21:1-14" },
                },
            },
        },
        ["easter-1-monday"] = {
            day = {
                { "first_reading", "ACT 2:14; 2:22-33" },
                { "psalm", "PSA 16:1-2a; 16:5; 16:7-8; 16:9-10; 16:11", "hebrew" },
                { "acclamation", "PSA 118:24" },
                { "gospel", "MAT 28:8-15" },
            },
        },
        ["easter-1-saturday"] = {
            day = {
                { "first_reading", "ACT 4:13-21" },
                { "psalm", "PSA 118:1; 118:14-15ab; 118:16-18; 118:19-21", "hebrew" },
                { "acclamation", "PSA 118:24" },
                { "gospel", "MRK 16:9-15" },
            },
        },
        ["easter-1-thursday"] = {
            day = {
                { "first_reading", "ACT 3:11-26" },
                { "psalm", "PSA 8:2ab; 8:5; 8:6-7; 8:8-9", "hebrew" },
                { "acclamation", "PSA 118:24" },
                { "gospel", "LUK 24:35-48" },
            },
        },
        ["easter-1-tuesday"] = {
            day = {
                { "first_reading", "ACT 2:36-41" },
                { "psalm", "PSA 33:4-5; 33:18-19; 33:20; 33:22", "hebrew" },
                { "acclamation", "PSA 118:24" },
                { "gospel", "JHN 20:11-18" },
            },
        },
        ["easter-1-wednesday"] = {
            day = {
                { "first_reading", "ACT 3:1-10" },
                { "psalm", "PSA 105:1-2; 105:3-4; 105:6-7; 105:8-9", "hebrew" },
                { "acclamation", "PSA 118:24" },
                { "gospel", "LUK 24:13-35" },
            },
        },
        ["easter-2-friday"] = {
            day = {
                { "first_reading", "ACT 5:34-42" },
                { "psalm", "PSA 27:1; 27:4; 27:13-14", "hebrew" },
                { "acclamation", "MAT 4:4b" },
                { "gospel", "JHN 6:1-15" },
            },
        },
        ["easter-2-monday"] = {
            day = {
                { "first_reading", "ACT 4:23-31" },
                { "psalm", "PSA 2:1-3; 2:4-7a; 2:7b-9", "hebrew" },
                { "acclamation", "COL 3:1" },
                { "gospel", "JHN 3:1-8" },
            },
        },
        ["easter-2-saturday"] = {
            day = {
                { "first_reading", "ACT 6:1-7" },
                { "psalm", "PSA 33:1-2; 33:4-5; 33:18-19", "hebrew" },
                { "gospel", "JHN 6:16-21" },
            },
        },
        ["easter-2-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 2:42-47" },
                    { "psalm", "PSA 118:2-4; 118:13-15; 118:22-24", "hebrew" },
                    { "second_reading", "1PE 1:3-9" },
                    { "acclamation", "JHN 20:29" },
                    { "gospel", "JHN 20:19-31" },
                },
                B = {
                    { "first_reading", "ACT 4:32-35" },
                    { "psalm", "PSA 118:2-4; 118:13-15; 118:22-24", "hebrew" },
                    { "second_reading", "1JN 5:1-6" },
                    { "acclamation", "JHN 20:29" },
                    { "gospel", "JHN 20:19-31" },
                },
                C = {
                    { "first_reading", "ACT 5:12-16" },
                    { "psalm", "PSA 118:2-4; 118:13-15; 118:22-24", "hebrew" },
                    { "second_reading", "REV 1:9-11a; 1:12-13; 1:17-19" },
                    { "acclamation", "JHN 20:29" },
                    { "gospel", "JHN 20:19-31" },
                },
            },
        },
        ["easter-2-thursday"] = {
            day = {
                { "first_reading", "ACT 5:27-33" },
                { "psalm", "PSA 34:2; 34:9; 34:17-18; 34:19-20", "hebrew" },
                { "acclamation", "JHN 20:29" },
                { "gospel", "JHN 3:31-36" },
            },
        },
        ["easter-2-tuesday"] = {
            day = {
                { "first_reading", "ACT 4:32-37" },
                { "psalm", "PSA 93:1ab; 93:1cd-2; 93:5", "hebrew" },
                { "acclamation", "JHN 3:14-15" },
                { "gospel", "JHN 3:7b-15" },
            },
        },
        ["easter-2-wednesday"] = {
            day = {
                { "first_reading", "ACT 5:17-26" },
                { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7; 34:8-9", "hebrew" },
                { "acclamation", "JHN 3:16" },
                { "gospel", "JHN 3:16-21" },
            },
        },
        ["easter-3-friday"] = {
            day = {
                { "first_reading", "ACT 9:1-20" },
                { "psalm", "PSA 117:1bc; 117:2", "hebrew" },
                { "acclamation", "JHN 6:56" },
                { "gospel", "JHN 6:52-59" },
            },
        },
        ["easter-3-monday"] = {
            day = {
                { "first_reading", "ACT 6:8-15" },
                { "psalm", "PSA 119:23-24; 119:26-27; 119:29-30", "hebrew" },
                { "acclamation", "MAT 4:4b" },
                { "gospel", "JHN 6:22-29" },
            },
        },
        ["easter-3-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ACT 9:31-42" },
                    { "psalm", "PSA 116:12-13; 116:14-15; 116:16-17", "hebrew" },
                    { "acclamation", "JHN 6:63c; 6:68c" },
                    { "gospel", "JHN 6:60-69" },
                },
                II = {
                    { "first_reading", "ACT 9:31-42" },
                    { "psalm", "PSA 116:12-13; 116:14-15; 116:16-17", "hebrew" },
                    { "gospel", "JHN 6:60-69" },
                },
            },
        },
        ["easter-3-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 2:14; 2:22-33" },
                    { "psalm", "PSA 16:1-2; 16:5; 16:7-8; 16:9-10; 16:11", "hebrew" },
                    { "second_reading", "1PE 1:17-21" },
                    { "acclamation", "LUK 24:32" },
                    { "gospel", "LUK 24:13-35" },
                },
                B = {
                    { "first_reading", "ACT 3:13-15; 3:17-19" },
                    { "psalm", "PSA 4:2; 4:4; 4:7-8; 4:9", "hebrew" },
                    { "second_reading", "1JN 2:1-5a" },
                    { "acclamation", "LUK 24:32" },
                    { "gospel", "LUK 24:35-48" },
                },
                C = {
                    { "first_reading", "ACT 5:27-32; 5:40b-41" },
                    { "psalm", "PSA 30:2; 30:4; 30:5-6; 30:11-12; 30:13", "hebrew" },
                    { "second_reading", "REV 5:11-14" },
                    { "gospel", "JHN 21:1-19" },
                },
            },
        },
        ["easter-3-thursday"] = {
            day = {
                { "first_reading", "ACT 8:26-40" },
                { "psalm", "PSA 66:8-9; 66:16-17; 66:20", "hebrew" },
                { "acclamation", "JHN 6:51" },
                { "gospel", "JHN 6:44-51" },
            },
        },
        ["easter-3-tuesday"] = {
            day = {
                { "first_reading", "ACT 7:51-8:1a" },
                { "psalm", "PSA 31:3cd-4; 31:6; 31:7b; 31:8a; 31:17; 31:21ab", "hebrew" },
                { "acclamation", "JHN 6:35ab" },
                { "gospel", "JHN 6:30-35" },
            },
        },
        ["easter-3-wednesday"] = {
            day = {
                { "first_reading", "ACT 8:1b-8" },
                { "psalm", "PSA 66:1-3a; 66:4-5; 66:6-7a", "hebrew" },
                { "acclamation", "JHN 6:40" },
                { "gospel", "JHN 6:35-40" },
            },
        },
        ["easter-4-friday"] = {
            day = {
                { "first_reading", "ACT 13:26-33" },
                { "psalm", "PSA 2:6-7; 2:8-9; 2:10-11ab", "hebrew" },
                { "acclamation", "JHN 14:6" },
                { "gospel", "JHN 14:1-6" },
            },
        },
        ["easter-4-monday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 11:1-18" },
                    { "psalm", "PSA 42:2-3; 43:3; 43:4", "hebrew" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "JHN 10:11-18" },
                },
                B = {
                    { "first_reading", "ACT 11:1-18" },
                    { "psalm", "PSA 42:2-3; 43:3; 43:4", "hebrew" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "JHN 10:1-10" },
                },
                C = {
                    { "first_reading", "ACT 11:1-18" },
                    { "psalm", "PSA 42:2-3; 43:3; 43:4", "hebrew" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "JHN 10:1-10" },
                },
            },
        },
        ["easter-4-saturday"] = {
            day = {
                { "first_reading", "ACT 13:44-52" },
                { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4", "hebrew" },
                { "acclamation", "JHN 8:31b-32" },
                { "gospel", "JHN 14:7-14" },
            },
        },
        ["easter-4-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 2:14a; 2:36-41" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "1PE 2:20b-25" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "JHN 10:1-10" },
                },
                B = {
                    { "first_reading", "ACT 4:8-12" },
                    { "psalm", "PSA 118:1; 118:8-9; 118:21-23; 118:26; 118:28; 118:29", "hebrew" },
                    { "second_reading", "1JN 3:1-2" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "JHN 10:11-18" },
                },
                C = {
                    { "first_reading", "ACT 13:14; 13:43-52" },
                    { "psalm", "PSA 100:1-2; 100:3; 100:5", "hebrew" },
                    { "second_reading", "REV 7:9; 7:14b-17" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "JHN 10:27-30" },
                },
            },
        },
        ["easter-4-thursday"] = {
            day = {
                { "first_reading", "ACT 13:13-25" },
                { "psalm", "PSA 89:2-3; 89:21-22; 89:25; 89:27", "hebrew" },
                { "acclamation", "REV 1:5ab" },
                { "gospel", "JHN 13:16-20" },
            },
        },
        ["easter-4-tuesday"] = {
            day = {
                { "first_reading", "ACT 11:19-26" },
                { "psalm", "PSA 87:1b-3; 87:4-5; 87:6-7", "hebrew" },
                { "acclamation", "JHN 10:27" },
                { "gospel", "JHN 10:22-30" },
            },
        },
        ["easter-4-wednesday"] = {
            day = {
                { "first_reading", "ACT 12:24-13:5a" },
                { "psalm", "PSA 67:2-3; 67:5; 67:6; 67:8", "hebrew" },
                { "acclamation", "JHN 8:12" },
                { "gospel", "JHN 12:44-50" },
            },
        },
        ["easter-5-friday"] = {
            day = {
                { "first_reading", "ACT 15:22-31" },
                { "psalm", "PSA 57:8-9; 57:10; 57:12", "hebrew" },
                { "acclamation", "JHN 15:15b" },
                { "gospel", "JHN 15:12-17" },
            },
        },
        ["easter-5-monday"] = {
            day = {
                { "first_reading", "ACT 14:5-18" },
                { "psalm", "PSA 115:1-2; 115:3-4; 115:15-16", "hebrew" },
                { "acclamation", "JHN 14:26" },
                { "gospel", "JHN 14:21-26" },
            },
        },
        ["easter-5-saturday"] = {
            day = {
                { "first_reading", "ACT 16:1-10" },
                { "psalm", "PSA 100:1b-2; 100:3; 100:5", "hebrew" },
                { "acclamation", "COL 3:1" },
                { "gospel", "JHN 15:18-21" },
            },
        },
        ["easter-5-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 6:1-7" },
                    { "psalm", "PSA 33:1-2; 33:4-5; 33:18-19", "hebrew" },
                    { "second_reading", "1PE 2:4-9" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "JHN 14:1-12" },
                },
                B = {
                    { "first_reading", "ACT 9:26-31" },
                    { "psalm", "PSA 22:26-27; 22:28; 22:30; 22:31-32", "hebrew" },
                    { "second_reading", "1JN 3:18-24" },
                    { "acclamation", "JHN 15:4a; 15:5b" },
                    { "gospel", "JHN 15:1-8" },
                },
                C = {
                    { "first_reading", "ACT 14:21-27" },
                    { "psalm", "PSA 145:8-9; 145:10-11; 145:12-13", "hebrew" },
                    { "second_reading", "REV 21:1-5a" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "JHN 13:31-33a; 13:34-35" },
                },
            },
        },
        ["easter-5-thursday"] = {
            day = {
                { "first_reading", "ACT 15:7-21" },
                { "psalm", "PSA 96:1-2a; 96:2b-3; 96:10", "hebrew" },
                { "acclamation", "JHN 10:27" },
                { "gospel", "JHN 15:9-11" },
            },
        },
        ["easter-5-tuesday"] = {
            day = {
                { "first_reading", "ACT 14:19-28" },
                { "psalm", "PSA 145:10-11; 145:12-13ab; 145:21", "hebrew" },
                { "acclamation", "LUK 24:46; 24:26" },
                { "gospel", "JHN 14:27-31a" },
            },
        },
        ["easter-5-wednesday"] = {
            day = {
                { "first_reading", "ACT 15:1-6" },
                { "psalm", "PSA 122:1-2; 122:3-4ab; 122:4cd-5", "hebrew" },
                { "acclamation", "JHN 15:4a; 15:5b" },
                { "gospel", "JHN 15:1-8" },
            },
        },
        ["easter-6-friday"] = {
            day = {
                { "first_reading", "ACT 18:9-18" },
                { "psalm", "PSA 47:2-3; 47:4-5; 47:6-7", "hebrew" },
                { "acclamation", "LUK 24:46; 24:26" },
                { "gospel", "JHN 16:20-23" },
            },
        },
        ["easter-6-monday"] = {
            day = {
                { "first_reading", "ACT 16:11-15" },
                { "psalm", "PSA 149:1b-2; 149:3-4; 149:5-6a; 149:9b", "hebrew" },
                { "acclamation", "JHN 15:26b; 15:27a" },
                { "gospel", "JHN 15:26-16:4a" },
            },
        },
        ["easter-6-saturday"] = {
            day = {
                { "first_reading", "ACT 18:23-28" },
                { "psalm", "PSA 47:2-3; 47:8-9; 47:10", "hebrew" },
                { "acclamation", "JHN 16:28" },
                { "gospel", "JHN 16:23b-28" },
            },
        },
        ["easter-6-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 8:5-8; 8:14-17" },
                    { "psalm", "PSA 66:1-3; 66:4-5; 66:6-7; 66:16; 66:20", "hebrew" },
                    { "second_reading", "1PE 3:15-18" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "JHN 14:15-21" },
                },
                B = {
                    { "first_reading", "ACT 10:25-26; 10:34-35; 10:44-48" },
                    { "psalm", "PSA 98:1; 98:2-3; 98:3-4", "hebrew" },
                    { "second_reading", "1JN 4:7-10" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "JHN 15:9-17" },
                },
                C = {
                    { "first_reading", "ACT 15:1-2; 15:22-29" },
                    { "psalm", "PSA 67:2-3; 67:5; 67:6; 67:8", "hebrew" },
                    { "second_reading", "REV 21:10-14; 21:22-23" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "JHN 14:23-29" },
                },
            },
        },
        ["easter-6-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ACT 18:1-8" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4", "hebrew" },
                    { "acclamation", "JHN 14:18" },
                    { "gospel", "JHN 16:16-20" },
                },
                II = {
                    { "first_reading", "ACT 18:1-8" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4", "hebrew" },
                    { "acclamation", "JHN 14:18" },
                    { "gospel", "JHN 16:16-20" },
                },
            },
        },
        ["easter-6-tuesday"] = {
            day = {
                { "first_reading", "ACT 16:22-34" },
                { "psalm", "PSA 138:1-2ab; 138:2cde-3; 138:7c-8", "hebrew" },
                { "acclamation", "JHN 16:7; 16:13" },
                { "gospel", "JHN 16:5-11" },
            },
        },
        ["easter-6-wednesday"] = {
            day = {
                { "first_reading", "ACT 17:15; 17:22-18:1" },
                { "psalm", "PSA 148:1-2; 148:11-12; 148:13; 148:14", "hebrew" },
                { "acclamation", "JHN 14:16" },
                { "gospel", "JHN 16:12-15" },
            },
        },
        ["easter-7-friday"] = {
            day = {
                { "first_reading", "ACT 25:13b-21" },
                { "psalm", "PSA 103:1-2; 103:11-12; 103:19-20ab", "hebrew" },
                { "acclamation", "JHN 14:26" },
                { "gospel", "JHN 21:15-19" },
            },
        },
        ["easter-7-monday"] = {
            day = {
                { "first_reading", "ACT 19:1-8" },
                { "psalm", "PSA 68:2-3ab; 68:4-5acd; 68:6-7ab", "hebrew" },
                { "acclamation", "COL 3:1" },
                { "gospel", "JHN 16:29-33" },
            },
        },
        ["easter-7-saturday"] = {
            day = {
                { "first_reading", "ACT 28:16-20; 28:30-31" },
                { "psalm", "PSA 11:4; 11:5; 11:7", "hebrew" },
                { "acclamation", "JHN 16:7; 16:13" },
                { "gospel", "JHN 21:20-25" },
            },
        },
        ["easter-7-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ACT 1:12-14" },
                    { "psalm", "PSA 27:1; 27:4; 27:7-8", "hebrew" },
                    { "second_reading", "1PE 4:13-16" },
                    { "acclamation", "JHN 14:18" },
                    { "gospel", "JHN 17:1-11a" },
                },
                B = {
                    { "first_reading", "ACT 1:15-17; 1:20a; 1:20c-26" },
                    { "psalm", "PSA 103:1-2; 103:11-12; 103:19-20", "hebrew" },
                    { "second_reading", "1JN 4:11-16" },
                    { "acclamation", "JHN 14:18" },
                    { "gospel", "JHN 17:11b-19" },
                },
                C = {
                    { "first_reading", "ACT 7:55-60" },
                    { "psalm", "PSA 97:1-2; 97:6-7; 97:9", "hebrew" },
                    { "second_reading", "REV 22:12-14; 22:16-17; 22:20" },
                    { "acclamation", "JHN 14:18" },
                    { "gospel", "JHN 17:20-26" },
                },
            },
        },
        ["easter-7-thursday"] = {
            day = {
                { "first_reading", "ACT 22:30; 23:6-11" },
                { "psalm", "PSA 16:1-2a; 16:5; 16:7-8; 16:9-10; 16:11", "hebrew" },
                { "acclamation", "JHN 17:21" },
                { "gospel", "JHN 17:20-26" },
            },
        },
        ["easter-7-tuesday"] = {
            day = {
                { "first_reading", "ACT 20:17-27" },
                { "psalm", "PSA 68:10-11; 68:20-21", "hebrew" },
                { "acclamation", "JHN 14:16" },
                { "gospel", "JHN 17:1-11a" },
            },
        },
        ["easter-7-wednesday"] = {
            day = {
                { "first_reading", "ACT 20:28-38" },
                { "psalm", "PSA 68:29-30; 68:33-35a; 68:35bc-36ab", "hebrew" },
                { "acclamation", "JHN 17:17b; 17:17a" },
                { "gospel", "JHN 17:11b-19" },
            },
        },
        ["easter-sunday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4" },
                    { "acclamation", "1CO 5:7" },
                    { "gospel", "JHN 20:1-9" },
                },
                ["A|II"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4" },
                    { "acclamation", "1CO 5:7" },
                    { "gospel", "JHN 20:1-9" },
                },
                ["B|I"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4" },
                    { "acclamation", "1CO 5:7" },
                    { "gospel", "JHN 20:1-9" },
                },
                ["B|II"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4" },
                    { "acclamation", "1CO 5:7b-8a" },
                    { "gospel", "JHN 20:1-9" },
                },
                ["C|I"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4" },
                    { "acclamation", "1CO 5:7" },
                    { "gospel", "JHN 20:1-9" },
                },
                ["C|II"] = {
                    { "first_reading", "ACT 10:34a; 10:37-43" },
                    { "psalm", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "second_reading", "COL 3:1-4" },
                    { "acclamation", "1CO 5:7" },
                    { "gospel", "JHN 20:1-9" },
                },
            },
        },
        ["epiphany-of-the-lord"] = {
            day = {
                { "first_reading", "ISA 60:1-6" },
                { "psalm", "PSA 72:1-2; 72:7-8; 72:10-11; 72:12-13", "hebrew" },
                { "second_reading", "EPH 3:2-3a; 3:5-6" },
                { "acclamation", "MAT 2:2" },
                { "gospel", "MAT 2:1-12" },
            },
            vigil = "day",
        },
        ["friday-after-ash-wednesday"] = {
            day = {
                { "first_reading", "ISA 58:1-9a" },
                { "psalm", "PSA 51:3-4; 51:5-6ab; 51:18-19", "hebrew" },
                { "acclamation", "AMO 5:14" },
                { "gospel", "MAT 9:14-15" },
            },
        },
        ["good-friday"] = {
            day = {
                { "first_reading", "ISA 52:13-53:12" },
                { "psalm", "PSA 31:2; 31:6; 31:12-13; 31:15-16; 31:17; 31:25", "hebrew" },
                { "second_reading", "HEB 4:14-16; 5:7-9" },
                { "acclamation", "PHP 2:8-9" },
                { "gospel", "JHN 18:1-19:42" },
            },
        },
        ["holy-family"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "SIR 3:2-6; 3:12-14" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "second_reading", "COL 3:12-21 | COL 3:12-17" },
                    { "acclamation", "COL 3:15a; 3:16a" },
                    { "gospel", "MAT 2:13-15; 2:19-23" },
                },
                ["A|II"] = {
                    { "first_reading", "SIR 3:2-6; 3:12-14" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "second_reading", "COL 3:12-21 | COL 3:12-17" },
                    { "acclamation", "COL 3:15a; 3:16a" },
                    { "gospel", "MAT 2:13-15; 2:19-23" },
                },
                ["B|I"] = {
                    { "first_reading", "SIR 3:2-6; 3:12-14" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "second_reading", "COL 3:12-21" },
                    { "acclamation", "COL 3:15a; 3:16a" },
                    { "gospel", "LUK 2:22-40" },
                },
                ["B|II"] = {
                    { "first_reading", "SIR 3:2-6; 3:12-14" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "second_reading", "COL 3:12-21 | COL 3:12-17" },
                    { "acclamation", "COL 3:15a; 3:16a" },
                    { "gospel", "LUK 2:22-40" },
                },
                ["C|I"] = {
                    { "first_reading", "SIR 3:2-6; 3:12-14" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "second_reading", "COL 3:12-21 | COL 3:12-17" },
                    { "acclamation", "COL 3:15a; 3:16a" },
                    { "gospel", "LUK 2:41-52" },
                },
                ["C|II"] = {
                    { "first_reading", "SIR 3:2-6; 3:12-14" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "second_reading", "COL 3:12-21 | COL 3:12-17" },
                    { "acclamation", "COL 3:15a; 3:16a" },
                    { "gospel", "LUK 2:41-52" },
                },
            },
        },
        ["holy-saturday"] = {
            day = {
                A = {
                    { "first_reading", "GEN 1:1-2:2" },
                    {
                        "psalm",
                        "PSA 104:1-2; 104:5-6; 104:10; 104:12; 104:13-14; 104:24; 104:35",
                        "hebrew",
                    },
                    { "second_reading", "GEN 22:1-18" },
                    { "psalm_2", "PSA 16:5; 16:8; 16:9-10; 16:11", "hebrew" },
                    { "third_reading", "EXO 14:15-15:1" },
                    { "psalm_3", "EXO 15:1-2; 15:3-4; 15:5-6; 15:17-18", "hebrew" },
                    { "fourth_reading", "ISA 54:5-14" },
                    { "psalm_4", "PSA 30:2; 30:4; 30:5-6; 30:11-12; 30:13", "hebrew" },
                    { "fifth_reading", "ISA 55:1-11" },
                    { "psalm_5", "ISA 12:2-3; 12:4; 12:5-6", "hebrew" },
                    { "sixth_reading", "BAR 3:9-15; 3:32-4:4" },
                    { "psalm_6", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "seventh_reading", "EZK 36:16-17a; 36:18-28" },
                    { "psalm_7", "PSA 42:3; 42:5; 43:3; 43:4", "hebrew" },
                    { "epistle", "ROM 6:3-11" },
                    { "psalm_epistle", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "gospel", "MAT 28:1-10" },
                },
                B = {
                    { "first_reading", "GEN 1:1-2:2" },
                    {
                        "psalm",
                        "PSA 104:1-2; 104:5-6; 104:10; 104:12; 104:13-14; 104:24; 104:35",
                        "hebrew",
                    },
                    { "second_reading", "GEN 22:1-18" },
                    { "psalm_2", "PSA 16:5; 16:8; 16:9-10; 16:11", "hebrew" },
                    { "third_reading", "EXO 14:15-15:1" },
                    { "psalm_3", "EXO 15:1-2; 15:3-4; 15:5-6; 15:17-18", "hebrew" },
                    { "fourth_reading", "ISA 54:5-14" },
                    { "psalm_4", "PSA 30:2; 30:4; 30:5-6; 30:11-12; 30:13", "hebrew" },
                    { "fifth_reading", "ISA 55:1-11" },
                    { "psalm_5", "ISA 12:2-3; 12:4; 12:5-6", "hebrew" },
                    { "sixth_reading", "BAR 3:9-15; 3:32-4:4" },
                    { "psalm_6", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "seventh_reading", "EZK 36:16-17a; 36:18-28" },
                    { "psalm_7", "PSA 42:3; 42:5; 43:3; 43:4", "hebrew" },
                    { "epistle", "ROM 6:3-11" },
                    { "psalm_epistle", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "gospel", "MRK 16:1-7" },
                },
                C = {
                    { "first_reading", "GEN 1:1-2:2" },
                    {
                        "psalm",
                        "PSA 104:1-2; 104:5-6; 104:10; 104:12; 104:13-14; 104:24; 104:35",
                        "hebrew",
                    },
                    { "second_reading", "GEN 22:1-18" },
                    { "psalm_2", "PSA 16:5; 16:8; 16:9-10; 16:11", "hebrew" },
                    { "third_reading", "EXO 14:15-15:1" },
                    { "psalm_3", "EXO 15:1-2; 15:3-4; 15:5-6; 15:17-18", "hebrew" },
                    { "fourth_reading", "ISA 54:5-14" },
                    { "psalm_4", "PSA 30:2; 30:4; 30:5-6; 30:11-12; 30:13", "hebrew" },
                    { "fifth_reading", "ISA 55:1-11" },
                    { "psalm_5", "ISA 12:2-3; 12:4; 12:5-6", "hebrew" },
                    { "sixth_reading", "BAR 3:9-15; 3:32-4:4" },
                    { "psalm_6", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "seventh_reading", "EZK 36:16-17a; 36:18-28" },
                    { "psalm_7", "PSA 42:3; 42:5; 43:3; 43:4", "hebrew" },
                    { "epistle", "ROM 6:3-11" },
                    { "psalm_epistle", "PSA 118:1-2; 118:16-17; 118:22-23", "hebrew" },
                    { "gospel", "LUK 24:1-12" },
                },
            },
        },
        ["holy-thursday"] = {
            chrism = {
                { "first_reading", "ISA 61:1-3a; 61:6a; 61:8b-9" },
                { "psalm", "PSA 89:21-22; 89:25; 89:27", "hebrew" },
                { "second_reading", "REV 1:5-8" },
                { "acclamation", "ISA 61:1" },
                { "gospel", "LUK 4:16-21" },
            },
            evening = {
                { "first_reading", "EXO 12:1-8; 12:11-14" },
                { "psalm", "PSA 116:12-13; 116:15-16bc; 116:17-18", "hebrew" },
                { "second_reading", "1CO 11:23-26" },
                { "acclamation", "JHN 13:34" },
                { "gospel", "JHN 13:1-15" },
            },
        },
        ["lent-1-friday"] = {
            day = {
                { "first_reading", "EZK 18:21-28" },
                { "psalm", "PSA 130:1-2; 130:3-4; 130:5-7a; 130:7bc-8", "hebrew" },
                { "acclamation", "EZK 18:31" },
                { "gospel", "MAT 5:20-26" },
            },
        },
        ["lent-1-monday"] = {
            day = {
                { "first_reading", "LEV 19:1-2; 19:11-18" },
                { "psalm", "PSA 19:8; 19:9; 19:10; 19:15", "hebrew" },
                { "acclamation", "2CO 6:2b" },
                { "gospel", "MAT 25:31-46" },
            },
        },
        ["lent-1-saturday"] = {
            day = {
                { "first_reading", "DEU 26:16-19" },
                { "psalm", "PSA 119:1-2; 119:4-5; 119:7-8", "hebrew" },
                { "acclamation", "2CO 6:2b" },
                { "gospel", "MAT 5:43-48" },
            },
        },
        ["lent-1-sunday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "GEN 2:7-9; 3:1-7" },
                    { "psalm", "PSA 51:3-4; 51:5-6; 51:12-13; 51:14; 51:17", "hebrew" },
                    { "second_reading", "ROM 5:12-19" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "MAT 4:1-11" },
                },
                ["A|II"] = {
                    { "first_reading", "GEN 2:7-9; 3:1-7" },
                    { "psalm", "PSA 51:3-4; 51:5-6; 51:12-13; 51:17", "hebrew" },
                    { "second_reading", "ROM 5:12-19 | ROM 5:12; 5:17-19" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "MAT 4:1-11" },
                },
                ["B|I"] = {
                    { "first_reading", "GEN 9:8-15" },
                    { "psalm", "PSA 25:4-5; 25:6-7; 25:8-9", "hebrew" },
                    { "second_reading", "1PE 3:18-22" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "MRK 1:12-15" },
                },
                ["B|II"] = {
                    { "first_reading", "GEN 9:8-15" },
                    { "psalm", "PSA 25:4-5; 25:6-7; 25:8-9", "hebrew" },
                    { "second_reading", "1PE 3:18-22" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "MRK 1:12-15" },
                },
                ["C|I"] = {
                    { "first_reading", "DEU 26:4-10" },
                    { "psalm", "PSA 91:1-2; 91:10-11; 91:12-13; 91:14-15", "hebrew" },
                    { "second_reading", "ROM 10:8-13" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "LUK 4:1-13" },
                },
                ["C|II"] = {
                    { "first_reading", "DEU 26:4-10" },
                    { "psalm", "PSA 91:1-2; 91:10-11; 91:12-13; 91:14-15", "hebrew" },
                    { "second_reading", "ROM 10:8-13" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "LUK 4:1-13" },
                },
            },
        },
        ["lent-1-thursday"] = {
            day = {
                { "first_reading", "EST 4:17n; 4:17p-17r; 4:17aa-17bb; 4:17gg-17hh" },
                { "psalm", "PSA 138:1-2ab; 138:2cde-3; 138:7c-8", "hebrew" },
                { "acclamation", "PSA 51:12a; 51:14a" },
                { "gospel", "MAT 7:7-12" },
            },
        },
        ["lent-1-tuesday"] = {
            day = {
                { "first_reading", "ISA 55:10-11" },
                { "psalm", "PSA 34:4-5; 34:6-7; 34:16-17; 34:18-19", "hebrew" },
                { "acclamation", "MAT 4:4b" },
                { "gospel", "MAT 6:7-15" },
            },
        },
        ["lent-1-wednesday"] = {
            day = {
                { "first_reading", "JON 3:1-10" },
                { "psalm", "PSA 51:3-4; 51:12-13; 51:18-19", "hebrew" },
                { "acclamation", "JOL 2:12-13" },
                { "gospel", "LUK 11:29-32" },
            },
        },
        ["lent-2-friday"] = {
            day = {
                { "first_reading", "GEN 37:3-4; 37:12-13a; 37:17b-28a" },
                { "psalm", "PSA 105:16-17; 105:18-19; 105:20-21", "hebrew" },
                { "acclamation", "JHN 3:16" },
                { "gospel", "MAT 21:33-43; 21:45-46" },
            },
        },
        ["lent-2-monday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 9:4b-10" },
                    { "psalm", "PSA 79:8; 79:9; 79:11; 79:13", "hebrew" },
                    { "gospel", "LUK 6:36-38" },
                },
                II = {
                    { "first_reading", "DAN 9:4b-10" },
                    { "psalm", "PSA 79:8; 79:9; 79:11; 79:13", "hebrew" },
                    { "acclamation", "JHN 6:63c; 6:68c" },
                    { "gospel", "LUK 6:36-38" },
                },
            },
        },
        ["lent-2-saturday"] = {
            day = {
                { "first_reading", "MIC 7:14-15; 7:18-20" },
                { "psalm", "PSA 103:1-2; 103:3-4; 103:9-10; 103:11-12", "hebrew" },
                { "acclamation", "LUK 15:18" },
                { "gospel", "LUK 15:1-3; 15:11-32" },
            },
        },
        ["lent-2-sunday"] = {
            day = {
                A = {
                    { "first_reading", "GEN 12:1-4a" },
                    { "psalm", "PSA 33:4-5; 33:18-19; 33:20; 33:22", "hebrew" },
                    { "second_reading", "2TI 1:8b-10" },
                    { "acclamation", "MAT 17:5" },
                    { "gospel", "MAT 17:1-9" },
                },
                B = {
                    { "first_reading", "GEN 22:1-2; 22:9a; 22:10-13; 22:15-18" },
                    { "psalm", "PSA 116:10; 116:15; 116:16-17; 116:18-19", "hebrew" },
                    { "second_reading", "ROM 8:31b-34" },
                    { "acclamation", "MAT 17:5" },
                    { "gospel", "MRK 9:2-10" },
                },
                C = {
                    { "first_reading", "GEN 15:5-12; 15:17-18" },
                    { "psalm", "PSA 27:1; 27:7-8; 27:8-9; 27:13-14", "hebrew" },
                    { "second_reading", "PHP 3:17-4:1" },
                    { "acclamation", "MAT 17:5" },
                    { "gospel", "LUK 9:28b-36" },
                },
            },
        },
        ["lent-2-thursday"] = {
            day = {
                { "first_reading", "JER 17:5-10" },
                { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                { "acclamation", "LUK 8:15" },
                { "gospel", "LUK 16:19-31" },
            },
        },
        ["lent-2-tuesday"] = {
            day = {
                { "first_reading", "ISA 1:10; 1:16-20" },
                { "psalm", "PSA 50:8-9; 50:16bc-17; 50:21; 50:23", "hebrew" },
                { "acclamation", "EZK 18:31" },
                { "gospel", "MAT 23:1-12" },
            },
        },
        ["lent-2-wednesday"] = {
            day = {
                { "first_reading", "JER 18:18-20" },
                { "psalm", "PSA 31:5-6; 31:14; 31:15-16", "hebrew" },
                { "acclamation", "JHN 8:12" },
                { "gospel", "MAT 20:17-28" },
            },
        },
        ["lent-3-friday"] = {
            day = {
                { "first_reading", "HOS 14:2-10" },
                { "psalm", "PSA 81:6c-8a; 81:8bc-9; 81:10-11ab; 81:14; 81:17", "hebrew" },
                { "acclamation", "MAT 4:17" },
                { "gospel", "MRK 12:28-34" },
            },
        },
        ["lent-3-monday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "2KI 5:1-15ab" },
                    { "psalm", "PSA 42:2; 42:3; 43:3; 43:4", "hebrew" },
                    { "acclamation", "PSA 130:5; 130:7" },
                    { "gospel", "LUK 4:24-30" },
                },
                ["A|II"] = {
                    { "first_reading", "2KI 5:1-15ab" },
                    { "psalm", "PSA 42:2; 42:3; 43:3; 43:4", "hebrew" },
                    { "gospel", "LUK 4:24-30" },
                },
                ["B|I"] = {
                    { "first_reading", "2KI 5:1-15ab" },
                    { "psalm", "PSA 42:2; 42:3; 43:3; 43:4", "hebrew" },
                    { "gospel", "LUK 4:24-30" },
                },
                ["B|II"] = {
                    { "first_reading", "2KI 5:1-15ab" },
                    { "psalm", "PSA 42:2; 42:3; 43:3; 43:4", "hebrew" },
                    { "gospel", "LUK 4:24-30" },
                },
                ["C|I"] = {
                    { "first_reading", "2KI 5:1-15ab" },
                    { "psalm", "PSA 42:2; 42:3; 43:3; 43:4", "hebrew" },
                    { "acclamation", "PSA 130:5; 130:7" },
                    { "gospel", "LUK 4:24-30" },
                },
                ["C|II"] = {
                    { "first_reading", "2KI 5:1-15ab" },
                    { "psalm", "PSA 42:2; 42:3; 43:3; 43:4", "hebrew" },
                    { "gospel", "LUK 4:24-30" },
                },
            },
        },
        ["lent-3-saturday"] = {
            day = {
                { "first_reading", "HOS 6:1-6" },
                { "psalm", "PSA 51:3-4; 51:18-19; 51:20-21ab", "hebrew" },
                { "acclamation", "PSA 95:8" },
                { "gospel", "LUK 18:9-14" },
            },
        },
        ["lent-3-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EXO 17:3-7" },
                    { "psalm", "PSA 95:1-2; 95:6-7; 95:8-9", "hebrew" },
                    { "second_reading", "ROM 5:1-2; 5:5-8" },
                    { "acclamation", "JHN 4:42; 4:15" },
                    { "gospel", "JHN 4:5-42" },
                },
                B = {
                    { "first_reading", "EXO 20:1-17" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "second_reading", "1CO 1:22-25" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "JHN 2:13-25" },
                },
                C = {
                    { "first_reading", "EXO 3:1-8a; 3:13-15" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:6-7; 103:8; 103:11", "hebrew" },
                    { "second_reading", "1CO 10:1-6; 10:10-12" },
                    { "acclamation", "MAT 4:17" },
                    { "gospel", "LUK 13:1-9" },
                },
            },
        },
        ["lent-3-thursday"] = {
            day = {
                { "first_reading", "JER 7:23-28" },
                { "psalm", "PSA 95:1-2; 95:6-7; 95:8-9", "hebrew" },
                { "acclamation", "JOL 2:12-13" },
                { "gospel", "LUK 11:14-23" },
            },
        },
        ["lent-3-tuesday"] = {
            day = {
                { "first_reading", "DAN 3:25; 3:34-43" },
                { "psalm", "PSA 25:4-5ab; 25:6; 25:7bc; 25:8-9", "hebrew" },
                { "acclamation", "JOL 2:12-13" },
                { "gospel", "MAT 18:21-35" },
            },
        },
        ["lent-3-wednesday"] = {
            day = {
                { "first_reading", "DEU 4:1; 4:5-9" },
                { "psalm", "PSA 147:12-13; 147:15-16; 147:19-20", "hebrew" },
                { "acclamation", "JHN 6:63c; 6:68c" },
                { "gospel", "MAT 5:17-19" },
            },
        },
        ["lent-4-friday"] = {
            day = {
                { "first_reading", "WIS 2:1a; 2:12-22" },
                { "psalm", "PSA 34:17-18; 34:19-20; 34:21; 34:23", "hebrew" },
                { "acclamation", "MAT 4:4b" },
                { "gospel", "JHN 7:1-2; 7:10; 7:25-30" },
            },
        },
        ["lent-4-monday"] = {
            day = {
                { "first_reading", "ISA 65:17-21" },
                { "psalm", "PSA 30:2; 30:4; 30:5-6; 30:11-12a; 30:13b", "hebrew" },
                { "acclamation", "AMO 5:14" },
                { "gospel", "JHN 4:43-54" },
            },
        },
        ["lent-4-saturday"] = {
            day = {
                { "first_reading", "JER 11:18-20" },
                { "psalm", "PSA 7:2-3; 7:9bc-10; 7:11-12", "hebrew" },
                { "acclamation", "LUK 8:15" },
                { "gospel", "JHN 7:40-53" },
            },
        },
        ["lent-4-sunday"] = {
            day = {
                A = {
                    { "first_reading", "1SA 16:1b; 16:6-7; 16:10-13a" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "EPH 5:8-14" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "JHN 9:1-41" },
                },
                B = {
                    { "first_reading", "2CH 36:14-16; 36:19-23" },
                    { "psalm", "PSA 137:1-2; 137:3; 137:4-5; 137:6", "hebrew" },
                    { "second_reading", "EPH 2:4-10" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "JHN 3:14-21" },
                },
                C = {
                    { "first_reading", "JOS 5:9a; 5:10-12" },
                    { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7", "hebrew" },
                    { "second_reading", "2CO 5:17-21" },
                    { "acclamation", "LUK 15:18" },
                    { "gospel", "LUK 15:1-3; 15:11-32" },
                },
            },
        },
        ["lent-4-thursday"] = {
            day = {
                { "first_reading", "EXO 32:7-14" },
                { "psalm", "PSA 106:19-20; 106:21-22; 106:23", "hebrew" },
                { "acclamation", "JHN 3:16" },
                { "gospel", "JHN 5:31-47" },
            },
        },
        ["lent-4-tuesday"] = {
            day = {
                { "first_reading", "EZK 47:1-9; 47:12" },
                { "psalm", "PSA 46:2-3; 46:5-6; 46:8-9", "hebrew" },
                { "acclamation", "PSA 51:12a; 51:14a" },
                { "gospel", "JHN 5:1-16" },
            },
        },
        ["lent-4-wednesday"] = {
            day = {
                { "first_reading", "ISA 49:8-15" },
                { "psalm", "PSA 145:8-9; 145:13cd-14; 145:17-18", "hebrew" },
                { "acclamation", "JHN 11:25a; 11:26" },
                { "gospel", "JHN 5:17-30" },
            },
        },
        ["lent-5-friday"] = {
            day = {
                { "first_reading", "JER 20:10-13" },
                { "psalm", "PSA 18:2-3a; 18:3bc-4; 18:5-6; 18:7", "hebrew" },
                { "acclamation", "JHN 6:63c; 6:68c" },
                { "gospel", "JHN 10:31-42" },
            },
        },
        ["lent-5-monday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62 | DAN 13:41c-62" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "JHN 8:1-11" },
                },
                ["A|II"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62 | DAN 13:41c-62" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "JHN 8:1-11" },
                },
                ["B|I"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62 | DAN 13:41c-62" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "JHN 8:1-11" },
                },
                ["B|II"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62 | DAN 13:41c-62" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "JHN 8:1-11" },
                },
                ["C|I"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62 | DAN 13:41c-62" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "JHN 8:12-20" },
                },
                ["C|II"] = {
                    { "first_reading", "DAN 13:1-9; 13:15-17; 13:19-30; 13:33-62 | DAN 13:41c-62" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "JHN 8:1-11" },
                },
            },
        },
        ["lent-5-saturday"] = {
            day = {
                { "first_reading", "EZK 37:21-28" },
                { "psalm", "JER 31:10; 31:11-12abcd; 31:13", "hebrew" },
                { "acclamation", "EZK 18:31" },
                { "gospel", "JHN 11:45-56" },
            },
        },
        ["lent-5-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EZK 37:12-14" },
                    { "psalm", "PSA 130:1-2; 130:3-4; 130:5-6; 130:7-8", "hebrew" },
                    { "second_reading", "ROM 8:8-11" },
                    { "acclamation", "JHN 11:25a; 11:26" },
                    { "gospel", "JHN 11:1-45" },
                },
                B = {
                    { "first_reading", "JER 31:31-34" },
                    { "psalm", "PSA 51:3-4; 51:12-13; 51:14-15", "hebrew" },
                    { "second_reading", "HEB 5:7-9" },
                    { "acclamation", "JHN 12:26" },
                    { "gospel", "JHN 12:20-33" },
                },
                C = {
                    { "first_reading", "ISA 43:16-21" },
                    { "psalm", "PSA 126:1-2a; 126:2b-3; 126:4-5; 126:6", "hebrew" },
                    { "second_reading", "PHP 3:8-14" },
                    { "acclamation", "JOL 2:12-13" },
                    { "gospel", "JHN 8:1-11" },
                },
            },
        },
        ["lent-5-thursday"] = {
            day = {
                { "first_reading", "GEN 17:3-9" },
                { "psalm", "PSA 105:4-5; 105:6-7; 105:8-9", "hebrew" },
                { "acclamation", "PSA 95:8" },
                { "gospel", "JHN 8:51-59" },
            },
        },
        ["lent-5-tuesday"] = {
            day = {
                { "first_reading", "NUM 21:4-9" },
                { "psalm", "PSA 102:2-3; 102:16-18; 102:19-21", "hebrew" },
                { "gospel", "JHN 8:21-30" },
            },
        },
        ["lent-5-wednesday"] = {
            day = {
                { "first_reading", "DAN 3:14-20; 3:91-92; 3:95" },
                { "psalm", "DAN 3:52; 3:53; 3:54; 3:55; 3:56", "hebrew" },
                { "acclamation", "LUK 8:15" },
                { "gospel", "JHN 8:31-42" },
            },
        },
        ["lent-6-monday"] = {
            day = {
                { "first_reading", "ISA 42:1-7" },
                { "psalm", "PSA 27:1; 27:2; 27:3; 27:13-14", "hebrew" },
                { "gospel", "JHN 12:1-11" },
            },
        },
        ["lent-6-tuesday"] = {
            day = {
                { "first_reading", "ISA 49:1-6" },
                { "psalm", "PSA 71:1-2; 71:3-4a; 71:5ab-6ab; 71:15; 71:17", "hebrew" },
                { "gospel", "JHN 13:21-33; 13:36-38" },
            },
        },
        ["lent-6-wednesday"] = {
            day = {
                { "first_reading", "ISA 50:4-9a" },
                { "psalm", "PSA 69:8-10; 69:21-22; 69:31; 69:33-34", "hebrew" },
                { "gospel", "MAT 26:14-25" },
            },
        },
        ["mary-mother-of-god"] = {
            day = {
                { "first_reading", "NUM 6:22-27" },
                { "psalm", "PSA 67:2-3; 67:5; 67:6; 67:8", "hebrew" },
                { "second_reading", "GAL 4:4-7" },
                { "acclamation", "HEB 1:1-2" },
                { "gospel", "LUK 2:16-21" },
            },
        },
        ["most-holy-trinity"] = {
            day = {
                A = {
                    { "first_reading", "EXO 34:4b-6; 34:8-9" },
                    { "psalm", "DAN 3:52; 3:53; 3:54; 3:55; 3:56", "hebrew" },
                    { "second_reading", "2CO 13:11-13" },
                    { "acclamation", "REV 1:8" },
                    { "gospel", "JHN 3:16-18" },
                },
                B = {
                    { "first_reading", "DEU 4:32-34; 4:39-40" },
                    { "psalm", "PSA 33:4-5; 33:6; 33:9; 33:18-19; 33:20; 33:22", "hebrew" },
                    { "second_reading", "ROM 8:14-17" },
                    { "acclamation", "REV 1:8" },
                    { "gospel", "MAT 28:16-20" },
                },
                C = {
                    { "first_reading", "PRO 8:22-31" },
                    { "psalm", "PSA 8:4-5; 8:6-7; 8:8-9", "hebrew" },
                    { "second_reading", "ROM 5:1-5" },
                    { "acclamation", "REV 1:8" },
                    { "gospel", "JHN 16:12-15" },
                },
            },
        },
        ["most-sacred-heart-of-jesus"] = {
            day = {
                A = {
                    { "first_reading", "DEU 7:6-11" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:6-7; 103:8; 103:10", "hebrew" },
                    { "second_reading", "1JN 4:7-16" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "MAT 11:25-30" },
                },
                B = {
                    { "first_reading", "HOS 11:1; 11:3-4; 11:8c-9" },
                    { "psalm", "ISA 12:2-3; 12:4; 12:5-6", "hebrew" },
                    { "second_reading", "EPH 3:8-12; 3:14-19" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "JHN 19:31-37" },
                },
                C = {
                    { "first_reading", "EZK 34:11-16" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "ROM 5:5b-11" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "LUK 15:3-7" },
                },
            },
        },
        ["nativity-of-the-lord"] = {
            dawn = {
                { "first_reading", "ISA 62:11-12" },
                { "psalm", "PSA 97:1; 97:6; 97:11-12", "hebrew" },
                { "second_reading", "TIT 3:4-7" },
                { "acclamation", "LUK 2:14" },
                { "gospel", "LUK 2:15-20" },
            },
            day = {
                { "first_reading", "ISA 52:7-10" },
                { "psalm", "PSA 98:1; 98:2-3; 98:3-4; 98:5-6", "hebrew" },
                { "second_reading", "HEB 1:1-6" },
                { "gospel", "JHN 1:1-18" },
            },
            night = {
                { "first_reading", "ISA 9:1-6" },
                { "psalm", "PSA 96:1-2; 96:2-3; 96:11-12; 96:13", "hebrew" },
                { "second_reading", "TIT 2:11-14" },
                { "acclamation", "LUK 2:10-11" },
                { "gospel", "LUK 2:1-14" },
            },
            vigil = {
                { "first_reading", "ISA 62:1-5" },
                { "psalm", "PSA 89:4-5; 89:16-17; 89:27; 89:29", "hebrew" },
                { "second_reading", "ACT 13:16-17; 13:22-25" },
                { "gospel", "MAT 1:1-25" },
            },
        },
        ["ordinary-time-1-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 4:1-5; 4:11" },
                    { "psalm", "PSA 78:3; 78:4bc; 78:6c-7; 78:8", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MRK 2:1-12" },
                },
                II = {
                    { "first_reading", "1SA 8:4-7; 8:10-22a" },
                    { "psalm", "PSA 89:16-17; 89:18-19", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MRK 2:1-12" },
                },
            },
        },
        ["ordinary-time-1-monday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 1:1-6" },
                    { "psalm", "PSA 97:1; 97:2b; 97:6; 97:7c; 97:9", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MRK 1:14-20" },
                },
                II = {
                    { "first_reading", "1SA 1:1-8" },
                    { "psalm", "PSA 116:12-13; 116:14-17; 116:18-19", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MRK 1:14-20" },
                },
            },
        },
        ["ordinary-time-1-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 4:12-16" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:15", "hebrew" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "MRK 2:13-17" },
                },
                II = {
                    { "first_reading", "1SA 9:1-4; 9:17-19; 10:1" },
                    { "psalm", "PSA 21:2-3; 21:4-5; 21:6-7", "hebrew" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "MRK 2:13-17" },
                },
            },
        },
        ["ordinary-time-1-thursday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 3:7-14" },
                    { "psalm", "PSA 95:6-7c; 95:8-9; 95:10-11", "hebrew" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MRK 1:40-45" },
                },
                II = {
                    { "first_reading", "1SA 4:1-11" },
                    { "psalm", "PSA 44:10-11; 44:14-15; 44:24-25", "hebrew" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MRK 1:40-45" },
                },
            },
        },
        ["ordinary-time-1-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 2:5-12" },
                    { "psalm", "PSA 8:2ab; 8:5; 8:6-7; 8:8-9", "hebrew" },
                    { "acclamation", "1TH 2:13" },
                    { "gospel", "MRK 1:21-28" },
                },
                II = {
                    { "first_reading", "1SA 1:9-20" },
                    { "psalm", "1SA 2:1; 2:4-5; 2:6-7; 2:8abcd", "hebrew" },
                    { "acclamation", "1TH 2:13" },
                    { "gospel", "MRK 1:21-28" },
                },
            },
        },
        ["ordinary-time-1-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 2:14-18" },
                    { "psalm", "PSA 105:1-2; 105:3-4; 105:6-7; 105:8-9", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MRK 1:29-39" },
                },
                II = {
                    { "first_reading", "1SA 3:1-10; 3:19-20" },
                    { "psalm", "PSA 40:2; 40:5; 40:7-8a; 40:8b-9; 40:10", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MRK 1:29-39" },
                },
            },
        },
        ["ordinary-time-10-friday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 4:7-15" },
                    { "psalm", "PSA 116:10-11; 116:15-16; 116:17-18", "hebrew" },
                    { "acclamation", "PHP 2:15d; 2:16a" },
                    { "gospel", "MAT 5:27-32" },
                },
                II = {
                    { "first_reading", "1KI 19:9a; 19:11-16" },
                    { "psalm", "PSA 27:7-8a; 27:8b-9abc; 27:13-14", "hebrew" },
                    { "acclamation", "PHP 2:15d; 2:16a" },
                    { "gospel", "MAT 5:27-32" },
                },
            },
        },
        ["ordinary-time-10-monday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 1:1-7" },
                    { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7; 34:8-9", "hebrew" },
                    { "acclamation", "MAT 5:12a" },
                    { "gospel", "MAT 5:1-12" },
                },
                II = {
                    { "first_reading", "1KI 17:1-6" },
                    { "psalm", "PSA 121:1bc-2; 121:3-4; 121:5-6; 121:7-8", "hebrew" },
                    { "acclamation", "MAT 5:12a" },
                    { "gospel", "MAT 5:1-12" },
                },
            },
        },
        ["ordinary-time-10-saturday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 5:14-21" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:9-10; 103:11-12", "hebrew" },
                    { "acclamation", "PSA 119:36a; 119:29b" },
                    { "gospel", "MAT 5:33-37" },
                },
                II = {
                    { "first_reading", "1KI 19:19-21" },
                    { "psalm", "PSA 16:1b-2a; 16:5; 16:7-8; 16:9-10", "hebrew" },
                    { "acclamation", "PSA 119:36a; 119:29b" },
                    { "gospel", "MAT 5:33-37" },
                },
            },
        },
        ["ordinary-time-10-sunday"] = {
            day = {
                A = {
                    { "first_reading", "HOS 6:3-6" },
                    { "psalm", "PSA 50:1; 50:8; 50:12-13; 50:14-15", "hebrew" },
                    { "second_reading", "ROM 4:18-25" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "MAT 9:9-13" },
                },
                B = {
                    { "first_reading", "GEN 3:9-15" },
                    { "psalm", "PSA 130:1-2; 130:3-4; 130:5-6; 130:7-8", "hebrew" },
                    { "second_reading", "2CO 4:13-5:1" },
                    { "acclamation", "JHN 12:31b-32" },
                    { "gospel", "MRK 3:20-35" },
                },
                C = {
                    { "first_reading", "1KI 17:17-24" },
                    { "psalm", "PSA 30:2; 30:4; 30:5-6; 30:11-12a; 30:13b", "hebrew" },
                    { "second_reading", "GAL 1:11-19" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "LUK 7:11-17" },
                },
            },
        },
        ["ordinary-time-10-thursday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 3:15-4:1; 3:3-6" },
                    { "psalm", "PSA 85:9ab; 85:10; 85:11-12; 85:13-14", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 5:20-26" },
                },
                II = {
                    { "first_reading", "1KI 18:41-46" },
                    { "psalm", "PSA 65:10; 65:11; 65:12-13", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 5:20-26" },
                },
            },
        },
        ["ordinary-time-10-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 1:18-22" },
                    {
                        "psalm",
                        "PSA 119:129; 119:130; 119:131; 119:132; 119:133; 119:135",
                        "hebrew",
                    },
                    { "acclamation", "MAT 5:16" },
                    { "gospel", "MAT 5:13-16" },
                },
                II = {
                    { "first_reading", "1KI 17:7-16" },
                    { "psalm", "PSA 4:2-3; 4:4-5; 4:7b-8", "hebrew" },
                    { "acclamation", "MAT 5:16" },
                    { "gospel", "MAT 5:13-16" },
                },
            },
        },
        ["ordinary-time-10-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 3:4-11" },
                    { "psalm", "PSA 99:5; 99:6; 99:7; 99:8; 99:9", "hebrew" },
                    { "acclamation", "PSA 25:4b; 25:5a" },
                    { "gospel", "MAT 5:17-19" },
                },
                II = {
                    { "first_reading", "1KI 18:20-39" },
                    { "psalm", "PSA 16:1b-2ab; 16:4; 16:5ab; 16:8; 16:11", "hebrew" },
                    { "acclamation", "PSA 25:4b; 25:5a" },
                    { "gospel", "MAT 5:17-19" },
                },
            },
        },
        ["ordinary-time-11-friday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 11:18; 11:21-30" },
                    { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MAT 6:19-23" },
                },
                II = {
                    { "first_reading", "2KI 11:1-4; 11:9-18; 11:20" },
                    { "psalm", "PSA 132:11; 132:12; 132:13-14; 132:17-18", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MAT 6:19-23" },
                },
            },
        },
        ["ordinary-time-11-monday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 6:1-10" },
                    { "psalm", "PSA 98:1; 98:2b; 98:3ab; 98:3cd-4", "hebrew" },
                    { "acclamation", "PSA 119:105" },
                    { "gospel", "MAT 5:38-42" },
                },
                II = {
                    { "first_reading", "1KI 21:1-16" },
                    { "psalm", "PSA 5:2-3ab; 5:4b-6a; 5:6b-7", "hebrew" },
                    { "acclamation", "PSA 119:105" },
                    { "gospel", "MAT 5:38-42" },
                },
            },
        },
        ["ordinary-time-11-saturday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 12:1-10" },
                    { "psalm", "PSA 34:8-9; 34:10-11; 34:12-13", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "MAT 6:24-34" },
                },
                II = {
                    { "first_reading", "2CH 24:17-25" },
                    { "psalm", "PSA 89:4-5; 89:29-30; 89:31-32; 89:33-34", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "MAT 6:24-34" },
                },
            },
        },
        ["ordinary-time-11-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EXO 19:2-6a" },
                    { "psalm", "PSA 100:1-2; 100:3; 100:5", "hebrew" },
                    { "second_reading", "ROM 5:6-11" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MAT 9:36-10:8" },
                },
                B = {
                    { "first_reading", "EZK 17:22-24" },
                    { "psalm", "PSA 92:2-3; 92:13-14; 92:15-16", "hebrew" },
                    { "second_reading", "2CO 5:6-10" },
                    { "gospel", "MRK 4:26-34" },
                },
                C = {
                    { "first_reading", "2SA 12:7-10; 12:13" },
                    { "psalm", "PSA 32:1-2; 32:5; 32:7; 32:11", "hebrew" },
                    { "second_reading", "GAL 2:16; 2:19-21" },
                    { "acclamation", "1JN 4:10b" },
                    { "gospel", "LUK 7:36-8:3 | LUK 7:36-50" },
                },
            },
        },
        ["ordinary-time-11-thursday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 11:1-11" },
                    { "psalm", "PSA 111:1b-2; 111:3-4; 111:7-8", "hebrew" },
                    { "acclamation", "ROM 8:15bc" },
                    { "gospel", "MAT 6:7-15" },
                },
                II = {
                    { "first_reading", "SIR 48:1-14" },
                    { "psalm", "PSA 97:1-2; 97:3-4; 97:5-6; 97:7", "hebrew" },
                    { "acclamation", "ROM 8:15bc" },
                    { "gospel", "MAT 6:7-15" },
                },
            },
        },
        ["ordinary-time-11-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 8:1-9" },
                    { "psalm", "PSA 146:2; 146:5-6ab; 146:6c-7; 146:8-9a", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 5:43-48" },
                },
                II = {
                    { "first_reading", "1KI 21:17-29" },
                    { "psalm", "PSA 51:3-4; 51:5-6ab; 51:11; 51:16", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 5:43-48" },
                },
            },
        },
        ["ordinary-time-11-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "2CO 9:6-11" },
                    { "psalm", "PSA 112:1bc-2; 112:3-4; 112:9", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MAT 6:1-6; 6:16-18" },
                },
                II = {
                    { "first_reading", "2KI 2:1; 2:6-14" },
                    { "psalm", "PSA 31:20; 31:21; 31:24", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MAT 6:1-6; 6:16-18" },
                },
            },
        },
        ["ordinary-time-12-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 17:1; 17:9-10; 17:15-22" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "acclamation", "MAT 8:17" },
                    { "gospel", "MAT 8:1-4" },
                },
                II = {
                    { "first_reading", "2KI 25:1-12" },
                    { "psalm", "PSA 137:1-2; 137:3; 137:4-5; 137:6", "hebrew" },
                    { "acclamation", "MAT 8:17" },
                    { "gospel", "MAT 8:1-4" },
                },
            },
        },
        ["ordinary-time-12-monday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 12:1-9" },
                    { "psalm", "PSA 33:12-13; 33:18-19; 33:20; 33:22", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MAT 7:1-5" },
                },
                II = {
                    { "first_reading", "2KI 17:5-8; 17:13-15a; 17:18" },
                    { "psalm", "PSA 60:3; 60:4-5; 60:12-13", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MAT 7:1-5" },
                },
            },
        },
        ["ordinary-time-12-saturday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 18:1-15" },
                    { "psalm", "LUK 1:46-47; 1:48-49; 1:50; 1:53; 1:54-55", "hebrew" },
                    { "acclamation", "MAT 8:17" },
                    { "gospel", "MAT 8:5-17" },
                },
                II = {
                    { "first_reading", "LAM 2:2; 2:10-14; 2:18-19" },
                    { "psalm", "PSA 74:1b-2; 74:3-5; 74:6-7; 74:20-21", "hebrew" },
                    { "acclamation", "MAT 8:17" },
                    { "gospel", "MAT 8:5-17" },
                },
            },
        },
        ["ordinary-time-12-sunday"] = {
            day = {
                A = {
                    { "first_reading", "JER 20:10-13" },
                    { "psalm", "PSA 69:8-10; 69:14; 69:17; 69:33-35", "hebrew" },
                    { "second_reading", "ROM 5:12-15" },
                    { "acclamation", "JHN 15:26b; 15:27a" },
                    { "gospel", "MAT 10:26-33" },
                },
                B = {
                    { "first_reading", "JOB 38:1; 38:8-11" },
                    { "psalm", "PSA 107:23-24; 107:25-26; 107:28-29; 107:30-31", "hebrew" },
                    { "second_reading", "2CO 5:14-17" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MRK 4:35-41" },
                },
                C = {
                    { "first_reading", "ZEC 12:10-11; 13:1" },
                    { "psalm", "PSA 63:2; 63:3-4; 63:5-6; 63:8-9", "hebrew" },
                    { "second_reading", "GAL 3:26-29" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 9:18-24" },
                },
            },
        },
        ["ordinary-time-12-thursday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 16:1-12; 16:15-16" },
                    { "psalm", "PSA 106:1b-2; 106:3-4a; 106:4b-5", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MAT 7:21-29" },
                },
                II = {
                    { "first_reading", "2KI 24:8-17" },
                    { "psalm", "PSA 79:1b-2; 79:3-5; 79:8; 79:9", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MAT 7:21-29" },
                },
            },
        },
        ["ordinary-time-12-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 13:2; 13:5-18" },
                    { "psalm", "PSA 15:2-3a; 15:3bc-4ab; 15:5", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "MAT 7:6; 7:12-14" },
                },
                II = {
                    { "first_reading", "2KI 19:9b-11; 19:14-21; 19:31-35a; 19:36" },
                    { "psalm", "PSA 48:2-3ab; 48:3cd-4; 48:10-11", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "MAT 7:6; 7:12-14" },
                },
            },
        },
        ["ordinary-time-12-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 15:1-12; 15:17-18" },
                    { "psalm", "PSA 105:1-2; 105:3-4; 105:6-7; 105:8-9", "hebrew" },
                    { "acclamation", "JHN 15:4a; 15:5b" },
                    { "gospel", "MAT 7:15-20" },
                },
                II = {
                    { "first_reading", "2KI 22:8-13; 23:1-3" },
                    { "psalm", "PSA 119:33; 119:34; 119:35; 119:36; 119:37; 119:40", "hebrew" },
                    { "acclamation", "JHN 15:4a; 15:5b" },
                    { "gospel", "MAT 7:15-20" },
                },
            },
        },
        ["ordinary-time-13-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 23:1-4; 23:19; 24:1-8; 24:62-67" },
                    { "psalm", "PSA 106:1b-2; 106:3-4a; 106:4b-5", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "MAT 9:9-13" },
                },
                II = {
                    { "first_reading", "AMO 8:4-6; 8:9-12" },
                    { "psalm", "PSA 119:2; 119:10; 119:20; 119:30; 119:40; 119:131", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "MAT 9:9-13" },
                },
            },
        },
        ["ordinary-time-13-monday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 18:16-33" },
                    { "psalm", "PSA 103:1b-2; 103:3-4; 103:8-9; 103:10-11", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 8:18-22" },
                },
                II = {
                    { "first_reading", "AMO 2:6-10; 2:13-16" },
                    { "psalm", "PSA 50:16bc-17; 50:18-19; 50:20-21; 50:22-23", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 8:18-22" },
                },
            },
        },
        ["ordinary-time-13-saturday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "GEN 27:1-5; 27:15-29" },
                    { "psalm", "PSA 135:1b-2; 135:3-4; 135:5-6", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 9:14-17" },
                },
                ["A|II"] = {
                    { "first_reading", "AMO 9:11-15" },
                    { "psalm", "PSA 85:9; 85:10; 85:11-12; 85:13-14", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 9:14-17" },
                },
                ["B|I"] = {
                    { "first_reading", "GEN 27:1-5; 27:15-29" },
                    { "psalm", "PSA 135:1b-2; 135:3-4; 135:5-6", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 9:14-17" },
                },
                ["B|II"] = {
                    { "first_reading", "AMO 9:11-15" },
                    { "psalm", "PSA 85:9ab; 85:10; 85:11-12; 85:13-14", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 9:14-17" },
                },
                ["C|I"] = {
                    { "first_reading", "GEN 27:1-5; 27:15-29" },
                    { "psalm", "PSA 135:1b-2; 135:3-4; 135:5-6", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 9:14-17" },
                },
                ["C|II"] = {
                    { "first_reading", "GEN 27:1-5; 27:15-29" },
                    { "psalm", "PSA 135:1b-2; 135:3-4; 135:5-6", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 9:14-17" },
                },
            },
        },
        ["ordinary-time-13-sunday"] = {
            day = {
                A = {
                    { "first_reading", "2KI 4:8-11; 4:14-16a" },
                    { "psalm", "PSA 89:2-3; 89:16-17; 89:18-19", "hebrew" },
                    { "second_reading", "ROM 6:3-4; 6:8-11" },
                    { "acclamation", "1PE 2:9" },
                    { "gospel", "MAT 10:37-42" },
                },
                B = {
                    { "first_reading", "WIS 1:13-15; 2:23-24" },
                    { "psalm", "PSA 30:2; 30:4; 30:5-6; 30:11; 30:12; 30:13", "hebrew" },
                    { "second_reading", "2CO 8:7; 8:9; 8:13-15" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 5:21-43 | MRK 5:21-24; 5:35b-43" },
                },
                C = {
                    { "first_reading", "1KI 19:16b; 19:19-21" },
                    { "psalm", "PSA 16:1-2a; 16:5; 16:7-8; 16:9-10; 16:11", "hebrew" },
                    { "second_reading", "GAL 5:1; 5:13-18" },
                    { "acclamation", "1SA 3:9; JHN 6:68c" },
                    { "gospel", "LUK 9:51-62" },
                },
            },
        },
        ["ordinary-time-13-thursday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 22:1b-19" },
                    { "psalm", "PSA 115:1-2; 115:3-4; 115:5-6; 115:8-9", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MAT 9:1-8" },
                },
                II = {
                    { "first_reading", "AMO 7:10-17" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MAT 9:1-8" },
                },
            },
        },
        ["ordinary-time-13-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 19:15-29" },
                    { "psalm", "PSA 26:2-3; 26:9-10; 26:11-12", "hebrew" },
                    { "acclamation", "PSA 130:5" },
                    { "gospel", "MAT 8:23-27" },
                },
                II = {
                    { "first_reading", "AMO 3:1-8; 4:11-12" },
                    { "psalm", "PSA 5:4b-6a; 5:6b-7; 5:8", "hebrew" },
                    { "acclamation", "PSA 130:5" },
                    { "gospel", "MAT 8:23-27" },
                },
            },
        },
        ["ordinary-time-13-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 21:5; 21:8-20a" },
                    { "psalm", "PSA 34:7-8; 34:10-11; 34:12-13", "hebrew" },
                    { "acclamation", "JAS 1:18" },
                    { "gospel", "MAT 8:28-34" },
                },
                II = {
                    { "first_reading", "AMO 5:14-15; 5:21-24" },
                    { "psalm", "PSA 50:7; 50:8-9; 50:10-11; 50:12-13; 50:16bc-17", "hebrew" },
                    { "acclamation", "JAS 1:18" },
                    { "gospel", "MAT 8:28-34" },
                },
            },
        },
        ["ordinary-time-14-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 46:1-7; 46:28-30" },
                    { "psalm", "PSA 37:3-4; 37:18-19; 37:27-28; 37:39-40", "hebrew" },
                    { "acclamation", "JHN 16:13a; 14:26d" },
                    { "gospel", "MAT 10:16-23" },
                },
                II = {
                    { "first_reading", "HOS 14:2-10" },
                    { "psalm", "PSA 51:3-4; 51:8-9; 51:12-13; 51:14; 51:17", "hebrew" },
                    { "acclamation", "JHN 16:13a; 14:26d" },
                    { "gospel", "MAT 10:16-23" },
                },
            },
        },
        ["ordinary-time-14-monday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 28:10-22a" },
                    { "psalm", "PSA 91:1-2; 91:3-4; 91:14-15ab", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MAT 9:18-26" },
                },
                II = {
                    { "first_reading", "HOS 2:16; 2:17c-18; 2:21-22" },
                    { "psalm", "PSA 145:2-3; 145:4-5; 145:6-7; 145:8-9", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MAT 9:18-26" },
                },
            },
        },
        ["ordinary-time-14-saturday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 49:29-32; 50:15-26a" },
                    { "psalm", "PSA 105:1-2; 105:3-4; 105:6-7", "hebrew" },
                    { "acclamation", "1PE 4:14" },
                    { "gospel", "MAT 10:24-33" },
                },
                II = {
                    { "first_reading", "ISA 6:1-8" },
                    { "psalm", "PSA 93:1ab; 93:1cd-2; 93:5", "hebrew" },
                    { "acclamation", "1PE 4:14" },
                    { "gospel", "MAT 10:24-33" },
                },
            },
        },
        ["ordinary-time-14-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ZEC 9:9-10" },
                    { "psalm", "PSA 145:1-2; 145:8-9; 145:10-11; 145:13-14", "hebrew" },
                    { "second_reading", "ROM 8:9; 8:11-13" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 11:25-30" },
                },
                B = {
                    { "first_reading", "EZK 2:2-5" },
                    { "psalm", "PSA 123:1-2; 123:2; 123:3-4", "hebrew" },
                    { "second_reading", "2CO 12:7-10" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "MRK 6:1-6" },
                },
                C = {
                    { "first_reading", "ISA 66:10-14c" },
                    { "psalm", "PSA 66:1-3; 66:4-5; 66:6-7; 66:16; 66:20", "hebrew" },
                    { "second_reading", "GAL 6:14-18" },
                    { "acclamation", "COL 3:15a; 3:16a" },
                    { "gospel", "LUK 10:1-12; 10:17-20" },
                },
            },
        },
        ["ordinary-time-14-thursday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 44:18-21; 44:23b-29; 45:1-5" },
                    { "psalm", "PSA 105:16-17; 105:18-19; 105:20-21", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MAT 10:7-15" },
                },
                II = {
                    { "first_reading", "HOS 11:1-4; 11:8e-9" },
                    { "psalm", "PSA 80:2ac; 80:3b; 80:15-16", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MAT 10:7-15" },
                },
            },
        },
        ["ordinary-time-14-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 32:23-33" },
                    { "psalm", "PSA 17:1b; 17:2-3; 17:6-7ab; 17:8b; 17:15", "hebrew" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "MAT 9:32-38" },
                },
                II = {
                    { "first_reading", "HOS 8:4-7; 8:11-13" },
                    { "psalm", "PSA 115:3-4; 115:5-6; 115:7ab-8; 115:9-10", "hebrew" },
                    { "acclamation", "JHN 10:14" },
                    { "gospel", "MAT 9:32-38" },
                },
            },
        },
        ["ordinary-time-14-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 41:55-57; 42:5-7a; 42:17-24a" },
                    { "psalm", "PSA 33:2-3; 33:10-11; 33:18-19", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MAT 10:1-7" },
                },
                II = {
                    { "first_reading", "HOS 10:1-3; 10:7-8; 10:12" },
                    { "psalm", "PSA 105:2-3; 105:4-5; 105:6-7", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MAT 10:1-7" },
                },
            },
        },
        ["ordinary-time-15-friday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 11:10-12:14" },
                    { "psalm", "PSA 116:12-13; 116:15; 116:16bc; 116:17-18", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 12:1-8" },
                },
                II = {
                    { "first_reading", "ISA 38:1-6; 38:21-22; 38:7-8" },
                    { "psalm", "ISA 38:10; 38:11; 38:12abcd; 38:16", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 12:1-8" },
                },
            },
        },
        ["ordinary-time-15-monday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 1:8-14; 1:22" },
                    { "psalm", "PSA 124:1b-3; 124:4-6; 124:7-8", "hebrew" },
                    { "acclamation", "MAT 5:10" },
                    { "gospel", "MAT 10:34-11:1" },
                },
                II = {
                    { "first_reading", "ISA 1:10-17" },
                    { "psalm", "PSA 50:8-9; 50:16bc-17; 50:21; 50:23", "hebrew" },
                    { "acclamation", "MAT 5:10" },
                    { "gospel", "MAT 10:34-11:1" },
                },
            },
        },
        ["ordinary-time-15-saturday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 12:37-42" },
                    { "psalm", "PSA 136:1; 136:23-24; 136:10-12; 136:13-15", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MAT 12:14-21" },
                },
                II = {
                    { "first_reading", "MIC 2:1-5" },
                    { "psalm", "PSA 10:1-2; 10:3-4; 10:7-8; 10:14", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MAT 12:14-21" },
                },
            },
        },
        ["ordinary-time-15-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 55:10-11" },
                    { "psalm", "PSA 65:10; 65:11; 65:12-13; 65:14", "hebrew" },
                    { "second_reading", "ROM 8:18-23" },
                    { "gospel", "MAT 13:1-23" },
                },
                B = {
                    { "first_reading", "AMO 7:12-15" },
                    { "psalm", "PSA 85:9-10; 85:11-12; 85:13-14", "hebrew" },
                    { "second_reading", "EPH 1:3-14 | EPH 1:3-10" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 6:7-13" },
                },
                C = {
                    { "first_reading", "DEU 30:10-14" },
                    { "psalm", "PSA 69:14; 69:17; 69:30-31; 69:33-34; 69:36; 69:37", "hebrew" },
                    { "second_reading", "COL 1:15-20" },
                    { "acclamation", "JHN 6:63c; 6:68c" },
                    { "gospel", "LUK 10:25-37" },
                },
            },
        },
        ["ordinary-time-15-thursday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 3:13-20" },
                    { "psalm", "PSA 105:1; 105:5; 105:8-9; 105:24-25; 105:26-27", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "MAT 11:28-30" },
                },
                II = {
                    { "first_reading", "ISA 26:7-9; 26:12; 26:16-19" },
                    { "psalm", "PSA 102:13-14ab; 102:15; 102:16-18; 102:19-21", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "MAT 11:28-30" },
                },
            },
        },
        ["ordinary-time-15-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 2:1-15a" },
                    { "psalm", "PSA 69:3; 69:14; 69:30-31; 69:33-34", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 11:20-24" },
                },
                II = {
                    { "first_reading", "ISA 7:1-9" },
                    { "psalm", "PSA 48:2-3a; 48:3b-4; 48:5-6; 48:7-8", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 11:20-24" },
                },
            },
        },
        ["ordinary-time-15-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 3:1-6; 3:9-12" },
                    { "psalm", "PSA 103:1b-2; 103:3-4; 103:6-7", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 11:25-27" },
                },
                II = {
                    { "first_reading", "ISA 10:5-7; 10:13b-16" },
                    { "psalm", "PSA 94:5-6; 94:7-8; 94:9-10; 94:14-15", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 11:25-27" },
                },
            },
        },
        ["ordinary-time-16-friday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 20:1-17" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "acclamation", "LUK 8:15" },
                    { "gospel", "MAT 13:18-23" },
                },
                II = {
                    { "first_reading", "JER 3:14-17" },
                    { "psalm", "JER 31:10; 31:11-12abcd; 31:13", "hebrew" },
                    { "acclamation", "LUK 8:15" },
                    { "gospel", "MAT 13:18-23" },
                },
            },
        },
        ["ordinary-time-16-monday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 14:5-18" },
                    { "psalm", "EXO 15:1bc-2; 15:3-4; 15:5-6", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 12:38-42" },
                },
                II = {
                    { "first_reading", "MIC 6:1-4; 6:6-8" },
                    { "psalm", "PSA 50:5-6; 50:8-9; 50:16bc-17; 50:21; 50:23", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 12:38-42" },
                },
            },
        },
        ["ordinary-time-16-saturday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "EXO 24:3-8" },
                    { "psalm", "PSA 50:1b-2; 50:5-6; 50:14-15", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "MAT 13:24-30" },
                },
                ["A|II"] = {
                    { "first_reading", "JER 7:1-11" },
                    { "psalm", "PSA 84:3; 84:4; 84:5-6a; 84:8a; 84:11", "hebrew" },
                    { "acclamation", "JAS 1:21bc" },
                    { "gospel", "MAT 13:24-30" },
                },
                ["B|I"] = {
                    { "first_reading", "JER 7:1-11" },
                    { "psalm", "PSA 84:3; 84:4; 84:5-6a; 84:8a; 84:11", "hebrew" },
                    { "acclamation", "JAS 1:21bc" },
                    { "gospel", "MAT 13:24-30" },
                },
                ["B|II"] = {
                    { "first_reading", "JER 7:1-11" },
                    { "psalm", "PSA 84:3; 84:4; 84:5-6a; 84:8a; 84:11", "hebrew" },
                    { "acclamation", "JAS 1:21bc" },
                    { "gospel", "MAT 13:24-30" },
                },
                ["C|I"] = {
                    { "first_reading", "EXO 24:3-8" },
                    { "psalm", "PSA 50:1b-2; 50:5-6; 50:14-15", "hebrew" },
                    { "acclamation", "JAS 1:21bc" },
                    { "gospel", "MAT 13:24-30" },
                },
                ["C|II"] = {
                    { "first_reading", "JER 7:1-11" },
                    { "psalm", "PSA 84:3; 84:4; 84:5-6a; 84:8a; 84:11", "hebrew" },
                    { "acclamation", "JAS 1:21bc" },
                    { "gospel", "MAT 13:24-30" },
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
                    { "gospel", "MAT 13:24-43" },
                },
                B = {
                    { "first_reading", "JER 23:1-6" },
                    { "psalm", "PSA 23:1-3; 23:3-4; 23:5; 23:6", "hebrew" },
                    { "second_reading", "EPH 2:13-18" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MRK 6:30-34" },
                },
                C = {
                    { "first_reading", "GEN 18:1-10a" },
                    { "psalm", "PSA 15:2-3; 15:3-4; 15:5", "hebrew" },
                    { "second_reading", "COL 1:24-28" },
                    { "acclamation", "LUK 8:15" },
                    { "gospel", "LUK 10:38-42" },
                },
            },
        },
        ["ordinary-time-16-thursday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 19:1-2; 19:9-11; 19:16-20b" },
                    { "psalm", "DAN 3:52; 3:53; 3:54; 3:55; 3:56", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 13:10-17" },
                },
                II = {
                    { "first_reading", "JER 2:1-3; 2:7-8; 2:12-13" },
                    { "psalm", "PSA 36:6-7ab; 36:8-9; 36:10-11", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 13:10-17" },
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
                    { "first_reading", "MIC 7:14-15; 7:18-20" },
                    { "psalm", "PSA 85:2-4; 85:5-6; 85:7-8", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MAT 12:46-50" },
                },
            },
        },
        ["ordinary-time-16-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 16:1-5; 16:9-15" },
                    { "psalm", "PSA 78:18-19; 78:23-24; 78:25-26; 78:27-28", "hebrew" },
                    { "gospel", "MAT 13:1-9" },
                },
                II = {
                    { "first_reading", "JER 1:1; 1:4-10" },
                    { "psalm", "PSA 71:1-2; 71:3-4a; 71:5-6ab; 71:15; 71:17", "hebrew" },
                    { "gospel", "MAT 13:1-9" },
                },
            },
        },
        ["ordinary-time-17-friday"] = {
            day = {
                I = {
                    { "first_reading", "LEV 23:1; 23:4-11; 23:15-16; 23:27; 23:34b-37" },
                    { "psalm", "PSA 81:3-4; 81:5-6; 81:10-11ab", "hebrew" },
                    { "acclamation", "1PE 1:25" },
                    { "gospel", "MAT 13:54-58" },
                },
                II = {
                    { "first_reading", "JER 26:1-9" },
                    { "psalm", "PSA 69:5; 69:8-10; 69:14", "hebrew" },
                    { "acclamation", "1PE 1:25" },
                    { "gospel", "MAT 13:54-58" },
                },
            },
        },
        ["ordinary-time-17-monday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 32:15-24; 32:30-34" },
                    { "psalm", "PSA 106:19-20; 106:21-22; 106:23", "hebrew" },
                    { "acclamation", "JAS 1:18" },
                    { "gospel", "MAT 13:31-35" },
                },
                II = {
                    { "first_reading", "JER 13:1-11" },
                    { "psalm", "DEU 32:18-19; 32:20; 32:21", "hebrew" },
                    { "acclamation", "JAS 1:18" },
                    { "gospel", "MAT 13:31-35" },
                },
            },
        },
        ["ordinary-time-17-saturday"] = {
            day = {
                I = {
                    { "first_reading", "LEV 25:1; 25:8-17" },
                    { "psalm", "PSA 67:2-3; 67:5; 67:7-8", "hebrew" },
                    { "acclamation", "MAT 5:10" },
                    { "gospel", "MAT 14:1-12" },
                },
                II = {
                    { "first_reading", "JER 26:11-16; 26:24" },
                    { "psalm", "PSA 69:15-16; 69:30-31; 69:33-34", "hebrew" },
                    { "acclamation", "MAT 5:10" },
                    { "gospel", "MAT 14:1-12" },
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
                    { "gospel", "MAT 13:44-52" },
                },
                B = {
                    { "first_reading", "2KI 4:42-44" },
                    { "psalm", "PSA 145:10-11; 145:15-16; 145:17-18", "hebrew" },
                    { "second_reading", "EPH 4:1-6" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "JHN 6:1-15" },
                },
                C = {
                    { "first_reading", "GEN 18:20-32" },
                    { "psalm", "PSA 138:1-2; 138:2-3; 138:6-7; 138:7-8", "hebrew" },
                    { "second_reading", "COL 2:12-14" },
                    { "acclamation", "ROM 8:15bc" },
                    { "gospel", "LUK 11:1-13" },
                },
            },
        },
        ["ordinary-time-17-thursday"] = {
            day = {
                I = {
                    { "first_reading", "EXO 40:16-21; 40:34-38" },
                    { "psalm", "PSA 84:3; 84:4; 84:5-6a; 84:8a; 84:11", "hebrew" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "MAT 13:47-53" },
                },
                II = {
                    { "first_reading", "JER 18:1-6" },
                    { "psalm", "PSA 146:1b-2; 146:3-4; 146:5-6ab", "hebrew" },
                    { "acclamation", "ACT 16:14" },
                    { "gospel", "MAT 13:47-53" },
                },
            },
        },
        ["ordinary-time-17-tuesday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "EXO 33:7-11; 34:5b-9; 34:28" },
                    { "psalm", "PSA 103:6-7; 103:8-9; 103:10-11; 103:12-13", "hebrew" },
                    { "gospel", "MAT 13:36-43" },
                },
                ["A|II"] = {
                    { "first_reading", "JER 14:17-22" },
                    { "psalm", "PSA 79:8; 79:9; 79:11; 79:13", "hebrew" },
                    { "gospel", "MAT 13:36-43" },
                },
                ["B|I"] = {
                    { "first_reading", "JER 14:17-22" },
                    { "psalm", "PSA 79:8; 79:9; 79:11; 79:13", "hebrew" },
                    { "gospel", "MAT 13:36-43" },
                },
                ["B|II"] = {
                    { "first_reading", "JER 14:17-22" },
                    { "psalm", "PSA 79:8; 79:9; 79:11; 79:13", "hebrew" },
                    { "gospel", "MAT 13:36-43" },
                },
                ["C|I"] = {
                    { "first_reading", "EXO 33:7-11; 34:5b-9; 34:28" },
                    { "psalm", "PSA 103:6-7; 103:8-9; 103:10-11; 103:12-13", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "JHN 11:19-27" },
                },
                ["C|II"] = {
                    { "first_reading", "JER 14:17-22" },
                    { "psalm", "PSA 79:8; 79:9; 79:11; 79:13", "hebrew" },
                    { "gospel", "MAT 13:36-43" },
                },
            },
        },
        ["ordinary-time-17-wednesday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "EXO 34:29-35" },
                    { "psalm", "PSA 99:5; 99:6; 99:7; 99:9", "hebrew" },
                    { "acclamation", "JHN 15:15b" },
                    { "gospel", "MAT 13:44-46" },
                },
                ["A|II"] = {
                    { "first_reading", "JER 15:10; 15:16-21" },
                    { "psalm", "PSA 59:2-3; 59:4; 59:10-11; 59:17; 59:18", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "MAT 13:44-46" },
                },
                ["B|I"] = {
                    { "first_reading", "EXO 34:29-35" },
                    { "psalm", "PSA 99:5; 99:6; 99:7; 99:9", "hebrew" },
                    { "acclamation", "JHN 15:15b" },
                    { "gospel", "MAT 13:44-46" },
                },
                ["B|II"] = {
                    { "first_reading", "JER 15:10; 15:16-21" },
                    { "psalm", "PSA 59:2-3; 59:4; 59:10-11; 59:17; 59:18", "hebrew" },
                    { "acclamation", "JHN 15:15b" },
                    { "gospel", "MAT 13:44-46" },
                },
                ["C|I"] = {
                    { "first_reading", "EXO 34:29-35" },
                    { "psalm", "PSA 99:5; 99:6; 99:7; 99:9", "hebrew" },
                    { "acclamation", "JHN 15:15b" },
                    { "gospel", "MAT 13:44-46" },
                },
                ["C|II"] = {
                    { "first_reading", "EXO 34:29-35" },
                    { "psalm", "PSA 99:5; 99:6; 99:7; 99:9", "hebrew" },
                    { "acclamation", "JHN 15:15b" },
                    { "gospel", "MAT 13:44-46" },
                },
            },
        },
        ["ordinary-time-18-friday"] = {
            day = {
                I = {
                    { "first_reading", "DEU 4:32-40" },
                    { "psalm", "PSA 77:12-13; 77:14-15; 77:16; 77:21", "hebrew" },
                    { "acclamation", "MAT 5:10" },
                    { "gospel", "MAT 16:24-28" },
                },
                II = {
                    { "first_reading", "NAM 2:1; 2:3; 3:1-3; 3:6-7" },
                    { "psalm", "DEU 32:35cd-36ab; 32:39abcd; 32:41", "hebrew" },
                    { "acclamation", "MAT 5:10" },
                    { "gospel", "MAT 16:24-28" },
                },
            },
        },
        ["ordinary-time-18-monday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "NUM 11:4b-15" },
                    { "psalm", "PSA 81:12-13; 81:14-15; 81:16-17", "hebrew" },
                    { "acclamation", "MAT 4:4" },
                    { "gospel", "MAT 14:13-21" },
                },
                ["A|II"] = {
                    { "first_reading", "JER 28:1-17" },
                    { "psalm", "PSA 119:29; 119:43; 119:79; 119:80; 119:95; 119:102", "hebrew" },
                    { "acclamation", "JHN 1:49b" },
                    { "gospel", "MAT 14:22-36" },
                },
                ["B|I"] = {
                    { "first_reading", "NUM 11:4b-15" },
                    { "psalm", "PSA 81:12-13; 81:14-15; 81:16-17", "hebrew" },
                    { "acclamation", "MAT 4:4" },
                    { "gospel", "MAT 14:13-21" },
                },
                ["B|II"] = {
                    { "first_reading", "JER 28:1-17" },
                    { "psalm", "PSA 119:29; 119:43; 119:79; 119:80; 119:95; 119:102", "hebrew" },
                    { "acclamation", "MAT 4:4" },
                    { "gospel", "MAT 14:13-21" },
                },
                ["C|I"] = {
                    { "first_reading", "NUM 11:4b-15" },
                    { "psalm", "PSA 81:12-13; 81:14-15; 81:16-17", "hebrew" },
                    { "acclamation", "MAT 4:4" },
                    { "gospel", "MAT 14:13-21" },
                },
                ["C|II"] = {
                    { "first_reading", "NUM 11:4b-15" },
                    { "psalm", "PSA 81:12-13; 81:14-15; 81:16-17", "hebrew" },
                    { "acclamation", "MAT 4:4" },
                    { "gospel", "MAT 14:13-21" },
                },
            },
        },
        ["ordinary-time-18-saturday"] = {
            day = {
                I = {
                    { "first_reading", "DEU 6:4-13" },
                    { "psalm", "PSA 18:2-3a; 18:3bc-4; 18:47; 18:51", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MAT 17:14-20" },
                },
                II = {
                    { "first_reading", "HAB 1:12-2:4" },
                    { "psalm", "PSA 9:8-9; 9:10-11; 9:12-13", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MAT 17:14-20" },
                },
            },
        },
        ["ordinary-time-18-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 55:1-3" },
                    { "psalm", "PSA 145:8-9; 145:15-16; 145:17-18", "hebrew" },
                    { "second_reading", "ROM 8:35; 8:37-39" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "MAT 14:13-21" },
                },
                B = {
                    { "first_reading", "EXO 16:2-4; 16:12-15" },
                    { "psalm", "PSA 78:3-4; 78:23-24; 78:25; 78:54", "hebrew" },
                    { "second_reading", "EPH 4:17; 4:20-24" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "JHN 6:24-35" },
                },
                C = {
                    { "first_reading", "ECC 1:2; 2:21-23" },
                    { "psalm", "PSA 90:3-4; 90:5-6; 90:12-13; 90:14; 90:17", "hebrew" },
                    { "second_reading", "COL 3:1-5; 3:9-11" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "LUK 12:13-21" },
                },
            },
        },
        ["ordinary-time-18-thursday"] = {
            day = {
                I = {
                    { "first_reading", "NUM 20:1-13" },
                    { "psalm", "PSA 95:1-2; 95:6-7; 95:8-9", "hebrew" },
                    { "acclamation", "MAT 16:18" },
                    { "gospel", "MAT 16:13-23" },
                },
                II = {
                    { "first_reading", "JER 31:31-34" },
                    { "psalm", "PSA 51:12-13; 51:14-15; 51:18-19", "hebrew" },
                    { "acclamation", "MAT 16:18" },
                    { "gospel", "MAT 16:13-23" },
                },
            },
        },
        ["ordinary-time-18-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "NUM 12:1-13" },
                    { "psalm", "PSA 51:3-4; 51:5-6ab; 51:6cd-7; 51:12-13", "hebrew" },
                    { "acclamation", "JHN 1:49b" },
                    { "gospel", "MAT 14:22-36" },
                },
                II = {
                    { "first_reading", "JER 30:1-2; 30:12-15; 30:18-22" },
                    { "psalm", "PSA 102:16-18; 102:19-21; 102:29; 102:22-23", "hebrew" },
                    { "acclamation", "JHN 1:49b" },
                    { "gospel", "MAT 14:22-36" },
                },
            },
        },
        ["ordinary-time-18-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "NUM 13:1-2; 13:25-14:1; 14:26a-29a; 14:34-35" },
                    { "psalm", "PSA 106:6-7ab; 106:13-14; 106:21-22; 106:23", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MAT 15:21-28" },
                },
                II = {
                    { "first_reading", "JER 31:1-7" },
                    { "psalm", "JER 31:10; 31:11-12ab; 31:13", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MAT 15:21-28" },
                },
            },
        },
        ["ordinary-time-19-friday"] = {
            day = {
                I = {
                    { "first_reading", "JOS 24:1-13" },
                    { "psalm", "PSA 136:1-3; 136:16-18; 136:21-22; 136:24", "hebrew" },
                    { "acclamation", "1TH 2:13" },
                    { "gospel", "MAT 19:3-12" },
                },
                II = {
                    { "first_reading", "EZK 16:1-15; 16:60; 16:63" },
                    { "psalm", "ISA 12:2-3; 12:4bcd; 12:5-6", "hebrew" },
                    { "acclamation", "1TH 2:13" },
                    { "gospel", "MAT 19:3-12" },
                },
            },
        },
        ["ordinary-time-19-monday"] = {
            day = {
                I = {
                    { "first_reading", "DEU 10:12-22" },
                    { "psalm", "PSA 147:12-13; 147:14-15; 147:19-20", "hebrew" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "MAT 17:22-27" },
                },
                II = {
                    { "first_reading", "EZK 1:2-5; 1:24-28c" },
                    { "psalm", "PSA 148:1-2; 148:11-12; 148:13; 148:14", "hebrew" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "MAT 17:22-27" },
                },
            },
        },
        ["ordinary-time-19-saturday"] = {
            day = {
                I = {
                    { "first_reading", "JOS 24:14-29" },
                    { "psalm", "PSA 16:1-2a; 16:5; 16:7-8; 16:11", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 19:13-15" },
                },
                II = {
                    { "first_reading", "EZK 18:1-10; 18:13b; 18:30-32" },
                    { "psalm", "PSA 51:12-13; 51:14-15; 51:18-19", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MAT 19:13-15" },
                },
            },
        },
        ["ordinary-time-19-sunday"] = {
            day = {
                A = {
                    { "first_reading", "1KI 19:9a; 19:11-13a" },
                    { "psalm", "PSA 85:9; 85:10; 85:11-12; 85:13-14", "hebrew" },
                    { "second_reading", "ROM 9:1-5" },
                    { "acclamation", "PSA 130:5" },
                    { "gospel", "MAT 14:22-33" },
                },
                B = {
                    { "first_reading", "1KI 19:4-8" },
                    { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7; 34:8-9", "hebrew" },
                    { "second_reading", "EPH 4:30-5:2" },
                    { "acclamation", "JHN 6:51" },
                    { "gospel", "JHN 6:41-51" },
                },
                C = {
                    { "first_reading", "WIS 18:6-9" },
                    { "psalm", "PSA 33:1; 33:12; 33:18-19; 33:20-22", "hebrew" },
                    { "second_reading", "HEB 11:1-2; 11:8-19" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "LUK 12:32-48" },
                },
            },
        },
        ["ordinary-time-19-thursday"] = {
            day = {
                I = {
                    { "first_reading", "JOS 3:7-10a; 3:11; 3:13-17" },
                    { "psalm", "PSA 114:1-2; 114:3-4; 114:5-6", "hebrew" },
                    { "acclamation", "PSA 119:135" },
                    { "gospel", "MAT 18:21-19:1" },
                },
                II = {
                    { "first_reading", "EZK 12:1-12" },
                    { "psalm", "PSA 78:56-57; 78:58-59; 78:61-62", "hebrew" },
                    { "acclamation", "PSA 119:135" },
                    { "gospel", "MAT 18:21-19:1" },
                },
            },
        },
        ["ordinary-time-19-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "DEU 31:1-8" },
                    { "psalm", "DEU 32:3-4ab; 32:7; 32:8; 32:9; 32:12", "hebrew" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "MAT 18:1-5; 18:10; 18:12-14" },
                },
                II = {
                    { "first_reading", "EZK 2:8-3:4" },
                    { "psalm", "PSA 119:14; 119:24; 119:72; 119:103; 119:111; 119:131", "hebrew" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "MAT 18:1-5; 18:10; 18:12-14" },
                },
            },
        },
        ["ordinary-time-19-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "DEU 34:1-12" },
                    { "psalm", "PSA 66:1-3a; 66:5; 66:8; 66:16-17", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MAT 18:15-20" },
                },
                II = {
                    { "first_reading", "EZK 9:1-7; 10:18-22" },
                    { "psalm", "PSA 113:1-2; 113:3-4; 113:5-6", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MAT 18:15-20" },
                },
            },
        },
        ["ordinary-time-2-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 8:6-13" },
                    { "psalm", "PSA 85:8; 85:10; 85:11-12; 85:13-14", "hebrew" },
                    { "gospel", "MRK 3:13-19" },
                },
                II = {
                    { "first_reading", "1SA 24:3-21" },
                    { "psalm", "PSA 57:2; 57:3-4; 57:6; 57:11", "hebrew" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MRK 3:13-19" },
                },
            },
        },
        ["ordinary-time-2-monday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "HEB 5:1-10" },
                    { "psalm", "PSA 110:1; 110:2; 110:3; 110:4", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MRK 2:18-22" },
                },
                ["A|II"] = {
                    { "first_reading", "1SA 15:16-23" },
                    { "psalm", "PSA 50:8-9; 50:16bc-17; 50:21; 50:23", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MRK 2:18-22" },
                },
                ["B|I"] = {
                    { "first_reading", "HEB 5:1-10" },
                    { "psalm", "PSA 110:1; 110:2; 110:3; 110:4", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MRK 2:18-22" },
                },
                ["B|II"] = {
                    { "first_reading", "1SA 15:16-23" },
                    { "psalm", "PSA 50:8-9; 50:16bc-17; 50:21; 50:23", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MRK 2:18-22" },
                },
                ["C|I"] = {
                    { "first_reading", "HEB 5:1-10" },
                    { "psalm", "PSA 110:1; 110:2; 110:3; 110:4", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MRK 2:18-22" },
                },
                ["C|II"] = {
                    { "first_reading", "HEB 5:1-10" },
                    { "psalm", "PSA 110:1; 110:2; 110:3; 110:4", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MRK 2:18-22" },
                },
            },
        },
        ["ordinary-time-2-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 9:2-3; 9:11-14" },
                    { "psalm", "PSA 47:2-3; 47:6-7; 47:8-9", "hebrew" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "MRK 3:20-21" },
                },
                II = {
                    { "first_reading", "2SA 1:1-4; 1:11-12; 1:19; 1:23-27" },
                    { "psalm", "PSA 80:2-3; 80:5-7", "hebrew" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "MRK 3:20-21" },
                },
            },
        },
        ["ordinary-time-2-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 49:3; 49:5-6" },
                    { "psalm", "PSA 40:2; 40:4; 40:7-8; 40:8-9; 40:10", "hebrew" },
                    { "second_reading", "1CO 1:1-3" },
                    { "acclamation", "JHN 1:14a; 1:12a" },
                    { "gospel", "JHN 1:29-34" },
                },
                B = {
                    { "first_reading", "1SA 3:3b-10; 3:19" },
                    { "psalm", "PSA 40:2; 40:4; 40:7-8; 40:8-9; 40:10", "hebrew" },
                    { "second_reading", "1CO 6:13c-15a; 6:17-20" },
                    { "acclamation", "JHN 1:41; 1:17b" },
                    { "gospel", "JHN 1:35-42" },
                },
                C = {
                    { "first_reading", "ISA 62:1-5" },
                    { "psalm", "PSA 96:1-2; 96:2-3; 96:7-8; 96:9-10", "hebrew" },
                    { "second_reading", "1CO 12:4-11" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "JHN 2:1-11" },
                },
            },
        },
        ["ordinary-time-2-thursday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 7:25-8:6" },
                    { "psalm", "PSA 40:7-8a; 40:8b-9; 40:10; 40:17", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 3:7-12" },
                },
                II = {
                    { "first_reading", "1SA 18:6-9; 19:1-7" },
                    { "psalm", "PSA 56:2-3; 56:9-10a; 56:10b-11; 56:12-13", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 3:7-12" },
                },
            },
        },
        ["ordinary-time-2-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 6:10-20" },
                    { "psalm", "PSA 111:1-2; 111:4-5; 111:9; 111:10c", "hebrew" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 2:23-28" },
                },
                II = {
                    { "first_reading", "1SA 16:1-13" },
                    { "psalm", "PSA 89:20; 89:21-22; 89:27-28", "hebrew" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 2:23-28" },
                },
            },
        },
        ["ordinary-time-2-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 7:1-3; 7:15-17" },
                    { "psalm", "PSA 110:1; 110:2; 110:3; 110:4", "hebrew" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MRK 3:1-6" },
                },
                II = {
                    { "first_reading", "1SA 17:32-33; 17:37; 17:40-51" },
                    { "psalm", "PSA 144:1b; 144:2; 144:9-10", "hebrew" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MRK 3:1-6" },
                },
            },
        },
        ["ordinary-time-20-friday"] = {
            day = {
                I = {
                    { "first_reading", "RUT 1:1; 1:3-6; 1:14b-16; 1:22" },
                    { "psalm", "PSA 146:5-6ab; 146:6c-7; 146:8-9a; 146:9bc-10", "hebrew" },
                    { "acclamation", "PSA 25:4b; 25:5a" },
                    { "gospel", "MAT 22:34-40" },
                },
                II = {
                    { "first_reading", "EZK 37:1-14" },
                    { "psalm", "PSA 107:2-3; 107:4-5; 107:6-7; 107:8-9", "hebrew" },
                    { "acclamation", "PSA 25:4b; 25:5a" },
                    { "gospel", "MAT 22:34-40" },
                },
            },
        },
        ["ordinary-time-20-monday"] = {
            day = {
                I = {
                    { "first_reading", "JDG 2:11-19" },
                    { "psalm", "PSA 106:34-35; 106:36-37; 106:39-40; 106:43ab; 106:44", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MAT 19:16-22" },
                },
                II = {
                    { "first_reading", "EZK 24:15-23" },
                    { "psalm", "DEU 32:18-19; 32:20; 32:21", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MAT 19:16-22" },
                },
            },
        },
        ["ordinary-time-20-saturday"] = {
            day = {
                I = {
                    { "first_reading", "RUT 2:1-3; 2:8-11; 4:13-17" },
                    { "psalm", "PSA 128:1b-2; 128:3; 128:4; 128:5", "hebrew" },
                    { "acclamation", "MAT 23:9b; 23:10b" },
                    { "gospel", "MAT 23:1-12" },
                },
                II = {
                    { "first_reading", "EZK 43:1-7ab" },
                    { "psalm", "PSA 85:9ab; 85:10; 85:11-12; 85:13-14", "hebrew" },
                    { "acclamation", "MAT 23:9b; 23:10b" },
                    { "gospel", "MAT 23:1-12" },
                },
            },
        },
        ["ordinary-time-20-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 56:1; 56:6-7" },
                    { "psalm", "PSA 67:2-3; 67:5; 67:6; 67:8", "hebrew" },
                    { "second_reading", "ROM 11:13-15; 11:29-32" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MAT 15:21-28" },
                },
                B = {
                    { "first_reading", "PRO 9:1-6" },
                    { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7", "hebrew" },
                    { "second_reading", "EPH 5:15-20" },
                    { "acclamation", "JHN 6:56" },
                    { "gospel", "JHN 6:51-58" },
                },
                C = {
                    { "first_reading", "JER 38:4-6; 38:8-10" },
                    { "psalm", "PSA 40:2; 40:3; 40:4; 40:18", "hebrew" },
                    { "second_reading", "HEB 12:1-4" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 12:49-53" },
                },
            },
        },
        ["ordinary-time-20-thursday"] = {
            day = {
                I = {
                    { "first_reading", "JDG 11:29-39a" },
                    { "psalm", "PSA 40:5; 40:7-8a; 40:8b-9; 40:10", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 22:1-14" },
                },
                II = {
                    { "first_reading", "EZK 36:23-28" },
                    { "psalm", "PSA 51:12-13; 51:14-15; 51:18-19", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "MAT 22:1-14" },
                },
            },
        },
        ["ordinary-time-20-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "JDG 6:11-24a" },
                    { "psalm", "PSA 85:9; 85:11-12; 85:13-14", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "MAT 19:23-30" },
                },
                II = {
                    { "first_reading", "EZK 28:1-10" },
                    { "psalm", "DEU 32:26-27ab; 32:27cd-28; 32:30; 32:35cd-36ab", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "MAT 19:23-30" },
                },
            },
        },
        ["ordinary-time-20-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "JDG 9:6-15" },
                    { "psalm", "PSA 21:2-3; 21:4-5; 21:6-7", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MAT 20:1-16" },
                },
                II = {
                    { "first_reading", "EZK 34:1-11" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MAT 20:1-16" },
                },
            },
        },
        ["ordinary-time-21-friday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 4:1-8" },
                    { "psalm", "PSA 97:1; 97:2b; 97:5-6; 97:10; 97:11-12", "hebrew" },
                    { "acclamation", "LUK 21:36" },
                    { "gospel", "MAT 25:1-13" },
                },
                II = {
                    { "first_reading", "1CO 1:17-25" },
                    { "psalm", "PSA 33:1-2; 33:4-5; 33:10-11", "hebrew" },
                    { "acclamation", "LUK 21:36" },
                    { "gospel", "MAT 25:1-13" },
                },
            },
        },
        ["ordinary-time-21-monday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 1:1-5; 1:8b-10" },
                    { "psalm", "PSA 149:1b-2; 149:3-4; 149:5-6a; 149:9b", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 23:13-22" },
                },
                II = {
                    { "first_reading", "2TH 1:1-5; 1:11-12" },
                    { "psalm", "PSA 96:1-2a; 96:2b-3; 96:4-5", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 23:13-22" },
                },
            },
        },
        ["ordinary-time-21-saturday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 4:9-11" },
                    { "psalm", "PSA 98:1; 98:7-8; 98:9", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 25:14-30" },
                },
                II = {
                    { "first_reading", "1CO 1:26-31" },
                    { "psalm", "PSA 33:12-13; 33:18-19; 33:20-21", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 25:14-30" },
                },
            },
        },
        ["ordinary-time-21-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 22:19-23" },
                    { "psalm", "PSA 138:1-2; 138:2-3; 138:6; 138:8", "hebrew" },
                    { "second_reading", "ROM 11:33-36" },
                    { "acclamation", "MAT 16:18" },
                    { "gospel", "MAT 16:13-20" },
                },
                B = {
                    { "first_reading", "JOS 24:1-2a; 24:15-17; 24:18b" },
                    { "psalm", "PSA 34:2-3; 34:16-17; 34:18-19; 34:20-21", "hebrew" },
                    { "second_reading", "EPH 5:21-32 | EPH 5:2a; 5:25-32" },
                    { "acclamation", "JHN 6:63c; 6:68c" },
                    { "gospel", "JHN 6:60-69" },
                },
                C = {
                    { "first_reading", "ISA 66:18-21" },
                    { "psalm", "PSA 117:1; 117:2", "hebrew" },
                    { "second_reading", "HEB 12:5-7; 12:11-13" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "LUK 13:22-30" },
                },
            },
        },
        ["ordinary-time-21-thursday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "1TH 3:7-13" },
                    { "psalm", "PSA 90:3-5a; 90:12-13; 90:14; 90:17", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "MAT 24:42-51" },
                },
                ["A|II"] = {
                    { "first_reading", "1CO 1:1-9" },
                    { "psalm", "PSA 145:2-3; 145:4-5; 145:6-7", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "MAT 24:42-51" },
                },
                ["B|I"] = {
                    { "first_reading", "1TH 3:7-13" },
                    { "psalm", "PSA 90:3-5a; 90:12-13; 90:14; 90:17", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "MAT 24:42-51" },
                },
                ["B|II"] = {
                    { "first_reading", "1CO 1:1-9" },
                    { "psalm", "PSA 145:2-3; 145:4-5; 145:6-7", "hebrew" },
                    { "acclamation", "MAT 5:10" },
                    { "gospel", "MRK 6:17-29" },
                },
                ["C|I"] = {
                    { "first_reading", "1TH 3:7-13" },
                    { "psalm", "PSA 90:3-5a; 90:12-13; 90:14; 90:17", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "MAT 24:42-51" },
                },
                ["C|II"] = {
                    { "first_reading", "1TH 3:7-13" },
                    { "psalm", "PSA 90:3-5a; 90:12-13; 90:14; 90:17", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "MAT 24:42-51" },
                },
            },
        },
        ["ordinary-time-21-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 2:1-8" },
                    { "psalm", "PSA 139:1-3; 139:4-6", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MAT 23:23-26" },
                },
                II = {
                    { "first_reading", "2TH 2:1-3a; 2:14-17" },
                    { "psalm", "PSA 96:10; 96:11-12; 96:13", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MAT 23:23-26" },
                },
            },
        },
        ["ordinary-time-21-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 2:9-13" },
                    { "psalm", "PSA 139:7-8; 139:9-10; 139:11-12ab", "hebrew" },
                    { "acclamation", "1JN 2:5" },
                    { "gospel", "MAT 23:27-32" },
                },
                II = {
                    { "first_reading", "2TH 3:6-10; 3:16-18" },
                    { "psalm", "PSA 128:1-2; 128:4-5", "hebrew" },
                    { "acclamation", "1JN 2:5" },
                    { "gospel", "MAT 23:27-32" },
                },
            },
        },
        ["ordinary-time-22-friday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:15-20" },
                    { "psalm", "PSA 100:1b-2; 100:3; 100:4; 100:5", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "LUK 5:33-39" },
                },
                II = {
                    { "first_reading", "1CO 4:1-5" },
                    { "psalm", "PSA 37:3-4; 37:5-6; 37:27-28; 37:39-40", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "LUK 5:33-39" },
                },
            },
        },
        ["ordinary-time-22-monday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 4:13-18" },
                    { "psalm", "PSA 96:1; 96:3; 96:4-5; 96:11-12; 96:13", "hebrew" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "LUK 4:16-30" },
                },
                II = {
                    { "first_reading", "1CO 2:1-5" },
                    { "psalm", "PSA 119:97; 119:98; 119:99; 119:100; 119:101; 119:102", "hebrew" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "LUK 4:16-30" },
                },
            },
        },
        ["ordinary-time-22-saturday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:21-23" },
                    { "psalm", "PSA 54:3-4; 54:6; 54:8", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "LUK 6:1-5" },
                },
                II = {
                    { "first_reading", "1CO 4:6b-15" },
                    { "psalm", "PSA 145:17-18; 145:19-20; 145:21", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "LUK 6:1-5" },
                },
            },
        },
        ["ordinary-time-22-sunday"] = {
            day = {
                A = {
                    { "first_reading", "JER 20:7-9" },
                    { "psalm", "PSA 63:2; 63:3-4; 63:5-6; 63:8-9", "hebrew" },
                    { "second_reading", "ROM 12:1-2" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MAT 16:21-27" },
                },
                B = {
                    { "first_reading", "DEU 4:1-2; 4:6-8" },
                    { "psalm", "PSA 15:2-3; 15:3-4; 15:4-5", "hebrew" },
                    { "second_reading", "JAS 1:17-18; 1:21b-22; 1:27" },
                    { "acclamation", "JAS 1:18" },
                    { "gospel", "MRK 7:1-8; 7:14-15; 7:21-23" },
                },
                C = {
                    { "first_reading", "SIR 3:17-18; 3:20; 3:28-29" },
                    { "psalm", "PSA 68:4-5; 68:6-7; 68:10-11", "hebrew" },
                    { "second_reading", "HEB 12:18-19; 12:22-24a" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "LUK 14:1; 14:7-14" },
                },
            },
        },
        ["ordinary-time-22-thursday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:9-14" },
                    { "psalm", "PSA 98:2-3ab; 98:3cd-4; 98:5-6", "hebrew" },
                    { "acclamation", "MAT 4:19" },
                    { "gospel", "LUK 5:1-11" },
                },
                II = {
                    { "first_reading", "1CO 3:18-23" },
                    { "psalm", "PSA 24:1bc-2; 24:3-4ab; 24:5-6", "hebrew" },
                    { "acclamation", "MAT 4:19" },
                    { "gospel", "LUK 5:1-11" },
                },
            },
        },
        ["ordinary-time-22-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "1TH 5:1-6; 5:9-11" },
                    { "psalm", "PSA 27:1; 27:4; 27:13-14", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "LUK 4:31-37" },
                },
                II = {
                    { "first_reading", "1CO 2:10b-16" },
                    { "psalm", "PSA 145:8-9; 145:10-11; 145:12-13ab; 145:13cd-14", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "LUK 4:31-37" },
                },
            },
        },
        ["ordinary-time-22-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:1-8" },
                    { "psalm", "PSA 52:10; 52:11", "hebrew" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "LUK 4:38-44" },
                },
                II = {
                    { "first_reading", "1CO 3:1-9" },
                    { "psalm", "PSA 33:12-13; 33:14-15; 33:20-21", "hebrew" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "LUK 4:38-44" },
                },
            },
        },
        ["ordinary-time-23-friday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 1:1-2; 1:12-14" },
                    { "psalm", "PSA 16:1b-2a; 16:5; 16:7-8; 16:11", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "LUK 6:39-42" },
                },
                II = {
                    { "first_reading", "1CO 9:16-19; 9:22b-27" },
                    { "psalm", "PSA 84:3; 84:4; 84:5-6; 84:12", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "LUK 6:39-42" },
                },
            },
        },
        ["ordinary-time-23-monday"] = {
            day = {
                I = {
                    { "first_reading", "COL 1:24-2:3" },
                    { "psalm", "PSA 62:6-7; 62:9", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 6:6-11" },
                },
                II = {
                    { "first_reading", "1CO 5:1-8" },
                    { "psalm", "PSA 5:5-6; 5:7; 5:12", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 6:6-11" },
                },
            },
        },
        ["ordinary-time-23-saturday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 1:15-17" },
                    { "psalm", "PSA 113:1b-2; 113:3-4; 113:5; 113:6-7", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "LUK 6:43-49" },
                },
                II = {
                    { "first_reading", "1CO 10:14-22" },
                    { "psalm", "PSA 116:12-13; 116:17-18", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "LUK 6:43-49" },
                },
            },
        },
        ["ordinary-time-23-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EZK 33:7-9" },
                    { "psalm", "PSA 95:1-2; 95:6-7; 95:8-9", "hebrew" },
                    { "second_reading", "ROM 13:8-10" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "MAT 18:15-20" },
                },
                B = {
                    { "first_reading", "ISA 35:4-7a" },
                    { "psalm", "PSA 146:6-7; 146:8-9; 146:9-10", "hebrew" },
                    { "second_reading", "JAS 2:1-5" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MRK 7:31-37" },
                },
                C = {
                    { "first_reading", "WIS 9:13-18b" },
                    { "psalm", "PSA 90:3-4; 90:5-6; 90:12-13; 90:14; 90:17", "hebrew" },
                    { "second_reading", "PHM 1:9-10; 1:12-17" },
                    { "acclamation", "PSA 119:135" },
                    { "gospel", "LUK 14:25-33" },
                },
            },
        },
        ["ordinary-time-23-thursday"] = {
            day = {
                I = {
                    { "first_reading", "COL 3:12-17" },
                    { "psalm", "PSA 150:1b-2; 150:3-4; 150:5-6", "hebrew" },
                    { "acclamation", "1JN 4:12" },
                    { "gospel", "LUK 6:27-38" },
                },
                II = {
                    { "first_reading", "1CO 8:1b-7; 8:11-13" },
                    { "psalm", "PSA 139:1b-3; 139:13-14ab; 139:23-24", "hebrew" },
                    { "acclamation", "1JN 4:12" },
                    { "gospel", "LUK 6:27-38" },
                },
            },
        },
        ["ordinary-time-23-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "COL 2:6-15" },
                    { "psalm", "PSA 145:1b-2; 145:8-9; 145:10-11", "hebrew" },
                    { "acclamation", "JHN 15:16" },
                    { "gospel", "LUK 6:12-19" },
                },
                II = {
                    { "first_reading", "1CO 6:1-11" },
                    { "psalm", "PSA 149:1b-2; 149:3-4; 149:5-6a; 149:9b", "hebrew" },
                    { "acclamation", "JHN 15:16" },
                    { "gospel", "LUK 6:12-19" },
                },
            },
        },
        ["ordinary-time-23-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "COL 3:1-11" },
                    { "psalm", "PSA 145:2-3; 145:10-11; 145:12-13ab", "hebrew" },
                    { "acclamation", "LUK 6:23ab" },
                    { "gospel", "LUK 6:20-26" },
                },
                II = {
                    { "first_reading", "1CO 7:25-31" },
                    { "psalm", "PSA 45:11-12; 45:14-15; 45:16-17", "hebrew" },
                    { "acclamation", "LUK 6:23ab" },
                    { "gospel", "LUK 6:20-26" },
                },
            },
        },
        ["ordinary-time-24-friday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 6:2c-12" },
                    { "psalm", "PSA 49:6-7; 49:8-10; 49:17-18; 49:19-20", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 8:1-3" },
                },
                II = {
                    { "first_reading", "1CO 15:12-20" },
                    { "psalm", "PSA 17:1bcd; 17:6-7; 17:8b; 17:15", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 8:1-3" },
                },
            },
        },
        ["ordinary-time-24-monday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 2:1-8" },
                    { "psalm", "PSA 28:2; 28:7; 28:8-9", "hebrew" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "LUK 7:1-10" },
                },
                II = {
                    { "first_reading", "1CO 11:17-26; 11:33" },
                    { "psalm", "PSA 40:7-8a; 40:8b-9; 40:10; 40:17", "hebrew" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "LUK 7:1-10" },
                },
            },
        },
        ["ordinary-time-24-saturday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 6:13-16" },
                    { "psalm", "PSA 100:1b-2; 100:3; 100:4; 100:5", "hebrew" },
                    { "acclamation", "LUK 8:15" },
                    { "gospel", "LUK 8:4-15" },
                },
                II = {
                    { "first_reading", "1CO 15:35-37; 15:42-49" },
                    { "psalm", "PSA 56:10c-12; 56:13-14", "hebrew" },
                    { "acclamation", "LUK 8:15" },
                    { "gospel", "LUK 8:4-15" },
                },
            },
        },
        ["ordinary-time-24-sunday"] = {
            day = {
                A = {
                    { "first_reading", "SIR 27:30-28:7" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:9-10; 103:11-12", "hebrew" },
                    { "second_reading", "ROM 14:7-9" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "MAT 18:21-35" },
                },
                B = {
                    { "first_reading", "ISA 50:5-9a" },
                    { "psalm", "PSA 116:1-2; 116:3-4; 116:5-6; 116:8-9", "hebrew" },
                    { "second_reading", "JAS 2:14-18" },
                    { "acclamation", "GAL 6:14" },
                    { "gospel", "MRK 8:27-35" },
                },
                C = {
                    { "first_reading", "EXO 32:7-11; 32:13-14" },
                    { "psalm", "PSA 51:3-4; 51:12-13; 51:17; 51:19", "hebrew" },
                    { "second_reading", "1TI 1:12-17" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "LUK 15:1-32 | LUK 15:1-10" },
                },
            },
        },
        ["ordinary-time-24-thursday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 4:12-16" },
                    { "psalm", "PSA 111:7-8; 111:9; 111:10", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "LUK 7:36-50" },
                },
                II = {
                    { "first_reading", "1CO 15:1-11" },
                    { "psalm", "PSA 118:1b-2; 118:16ab-17; 118:28", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "LUK 7:36-50" },
                },
            },
        },
        ["ordinary-time-24-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 3:1-13" },
                    { "psalm", "PSA 101:1b-2ab; 101:2cd-3ab; 101:5; 101:6", "hebrew" },
                    { "gospel", "LUK 7:11-17" },
                },
                II = {
                    { "first_reading", "1CO 12:12-14; 12:27-31a" },
                    { "psalm", "PSA 100:1b-2; 100:3; 100:4; 100:5", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "LUK 7:11-17" },
                },
            },
        },
        ["ordinary-time-24-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "1TI 3:14-16" },
                    { "psalm", "PSA 111:1-2; 111:3-4; 111:5-6", "hebrew" },
                    { "acclamation", "JHN 6:63c; 6:68c" },
                    { "gospel", "LUK 7:31-35" },
                },
                II = {
                    { "first_reading", "1CO 12:31-13:13" },
                    { "psalm", "PSA 33:2-3; 33:4-5; 33:12; 33:22", "hebrew" },
                    { "acclamation", "JHN 6:63c; 6:68c" },
                    { "gospel", "LUK 7:31-35" },
                },
            },
        },
        ["ordinary-time-25-friday"] = {
            day = {
                I = {
                    { "first_reading", "HAG 2:1-9" },
                    { "psalm", "PSA 43:1; 43:2; 43:3; 43:4", "hebrew" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "LUK 9:18-22" },
                },
                II = {
                    { "first_reading", "ECC 3:1-11" },
                    { "psalm", "PSA 144:1b; 144:2abc; 144:3-4", "hebrew" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "LUK 9:18-22" },
                },
            },
        },
        ["ordinary-time-25-monday"] = {
            day = {
                I = {
                    { "first_reading", "EZR 1:1-6" },
                    { "psalm", "PSA 126:1b-2ab; 126:2cd-3; 126:4-5; 126:6", "hebrew" },
                    { "acclamation", "MAT 5:16" },
                    { "gospel", "LUK 8:16-18" },
                },
                II = {
                    { "first_reading", "PRO 3:27-34" },
                    { "psalm", "PSA 15:2-3a; 15:3bc-4ab; 15:5", "hebrew" },
                    { "acclamation", "MAT 5:16" },
                    { "gospel", "LUK 8:16-18" },
                },
            },
        },
        ["ordinary-time-25-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ZEC 2:5-9; 2:14-15a" },
                    { "psalm", "JER 31:10; 31:11-12ab; 31:13", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "LUK 9:43b-45" },
                },
                II = {
                    { "first_reading", "ECC 11:9-12:8" },
                    { "psalm", "PSA 90:3-4; 90:5-6; 90:12-13; 90:14; 90:17", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "LUK 9:43b-45" },
                },
            },
        },
        ["ordinary-time-25-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 55:6-9" },
                    { "psalm", "PSA 145:2-3; 145:8-9; 145:17-18", "hebrew" },
                    { "second_reading", "PHP 1:20c-24; 1:27a" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "MAT 20:1-16a" },
                },
                B = {
                    { "first_reading", "WIS 2:12; 2:17-20" },
                    { "psalm", "PSA 54:3-4; 54:5; 54:6; 54:8", "hebrew" },
                    { "second_reading", "JAS 3:16-4:3" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "MRK 9:30-37" },
                },
                C = {
                    { "first_reading", "AMO 8:4-7" },
                    { "psalm", "PSA 113:1-2; 113:4-6; 113:7-8", "hebrew" },
                    { "second_reading", "1TI 2:1-8" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "LUK 16:1-13" },
                },
            },
        },
        ["ordinary-time-25-thursday"] = {
            day = {
                I = {
                    { "first_reading", "HAG 1:1-8" },
                    { "psalm", "PSA 149:1b-2; 149:3-4; 149:5-6a; 149:9b", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "LUK 9:7-9" },
                },
                II = {
                    { "first_reading", "ECC 1:2-11" },
                    { "psalm", "PSA 90:3-4; 90:5-6; 90:12-13; 90:14; 90:17bc", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "LUK 9:7-9" },
                },
            },
        },
        ["ordinary-time-25-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "EZR 6:7-8; 6:12b; 6:14-20" },
                    { "psalm", "PSA 122:1-2; 122:3-4ab; 122:4cd-5", "hebrew" },
                    { "acclamation", "LUK 11:28" },
                    { "gospel", "LUK 8:19-21" },
                },
                II = {
                    { "first_reading", "PRO 21:1-6; 21:10-13" },
                    { "psalm", "PSA 119:1; 119:27; 119:30; 119:34; 119:35; 119:44", "hebrew" },
                    { "acclamation", "LUK 11:28" },
                    { "gospel", "LUK 8:19-21" },
                },
            },
        },
        ["ordinary-time-25-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "EZR 9:5-9" },
                    { "psalm", "TOB 13:2; 13:3-4a; 13:4befghn; 13:7-8", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "LUK 9:1-6" },
                },
                II = {
                    { "first_reading", "PRO 30:5-9" },
                    { "psalm", "PSA 119:29; 119:72; 119:89; 119:101; 119:104; 119:163", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "LUK 9:1-6" },
                },
            },
        },
        ["ordinary-time-26-friday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "BAR 1:15-22" },
                    { "psalm", "PSA 79:1b-2; 79:3-5; 79:8; 79:9", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 10:13-16" },
                },
                ["A|II"] = {
                    { "first_reading", "JOB 38:1; 38:12-21; 40:3-5" },
                    { "psalm", "PSA 139:1-3; 139:7-8; 139:9-10; 139:13-14ab", "hebrew" },
                    { "acclamation", "PSA 103:21" },
                    { "gospel", "LUK 10:13-16" },
                },
                ["B|I"] = {
                    { "first_reading", "BAR 1:15-22" },
                    { "psalm", "PSA 79:1b-2; 79:3-5; 79:8; 79:9", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 10:13-16" },
                },
                ["B|II"] = {
                    { "first_reading", "JOB 38:1; 38:12-21; 40:3-5" },
                    { "psalm", "PSA 139:1-3; 139:7-8; 139:9-10; 139:13-14ab", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 10:13-16" },
                },
                ["C|I"] = {
                    { "first_reading", "BAR 1:15-22" },
                    { "psalm", "PSA 79:1b-2; 79:3-5; 79:8; 79:9", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 10:13-16" },
                },
                ["C|II"] = {
                    { "first_reading", "BAR 1:15-22" },
                    { "psalm", "PSA 79:1b-2; 79:3-5; 79:8; 79:9", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 10:13-16" },
                },
            },
        },
        ["ordinary-time-26-monday"] = {
            day = {
                I = {
                    { "first_reading", "ZEC 8:1-8" },
                    { "psalm", "PSA 102:16-18; 102:19-21; 102:29; 102:22-23", "hebrew" },
                    { "acclamation", "PSA 103:21" },
                    { "gospel", "LUK 9:46-50" },
                },
                II = {
                    { "first_reading", "JOB 1:6-22" },
                    { "psalm", "PSA 17:1bcd; 17:2-3; 17:6-7", "hebrew" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "LUK 9:46-50" },
                },
            },
        },
        ["ordinary-time-26-saturday"] = {
            day = {
                I = {
                    { "first_reading", "BAR 4:5-12; 4:27-29" },
                    { "psalm", "PSA 69:33-35; 69:36-37", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 10:17-24" },
                },
                II = {
                    { "first_reading", "JOB 42:1-3; 42:5-6; 42:12-17" },
                    { "psalm", "PSA 119:66; 119:71; 119:75; 119:91; 119:125; 119:130", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 10:17-24" },
                },
            },
        },
        ["ordinary-time-26-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EZK 18:25-28" },
                    { "psalm", "PSA 25:4-5; 25:6-7; 25:8-9", "hebrew" },
                    { "second_reading", "PHP 2:1-11" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MAT 21:28-32" },
                },
                B = {
                    { "first_reading", "NUM 11:25-29" },
                    { "psalm", "PSA 19:8; 19:10; 19:12-13; 19:14", "hebrew" },
                    { "second_reading", "JAS 5:1-6" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "MRK 9:38-43; 9:45; 9:47-48" },
                },
                C = {
                    { "first_reading", "AMO 6:1a; 6:4-7" },
                    { "psalm", "PSA 146:7; 146:8-9; 146:9-10", "hebrew" },
                    { "second_reading", "1TI 6:11-16" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "LUK 16:19-31" },
                },
            },
        },
        ["ordinary-time-26-thursday"] = {
            day = {
                I = {
                    { "first_reading", "NEH 8:1-4a; 8:5-6; 8:7b-12" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "LUK 10:1-12" },
                },
                II = {
                    { "first_reading", "JOB 19:21-27" },
                    { "psalm", "PSA 27:7-8a; 27:8b-9abc; 27:13-14", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "LUK 10:1-12" },
                },
            },
        },
        ["ordinary-time-26-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ZEC 8:20-23" },
                    { "psalm", "PSA 87:1b-3; 87:4-5; 87:6-7", "hebrew" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "LUK 9:51-56" },
                },
                II = {
                    { "first_reading", "JOB 3:1-3; 3:11-17; 3:20-23" },
                    { "psalm", "PSA 88:2-3; 88:4-5; 88:6; 88:7-8", "hebrew" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "LUK 9:51-56" },
                },
            },
        },
        ["ordinary-time-26-wednesday"] = {
            day = {
                ["A|I"] = {
                    { "first_reading", "NEH 2:1-8" },
                    { "psalm", "PSA 137:1-2; 137:3; 137:4-5; 137:6", "hebrew" },
                    { "acclamation", "PHP 3:8-9" },
                    { "gospel", "LUK 9:57-62" },
                },
                ["A|II"] = {
                    { "first_reading", "JOB 9:1-12; 9:14-16" },
                    { "psalm", "PSA 88:10bc-11; 88:12-13; 88:14-15", "hebrew" },
                    { "acclamation", "PHP 3:8-9" },
                    { "gospel", "LUK 9:57-62" },
                },
                ["B|I"] = {
                    { "first_reading", "NEH 2:1-8" },
                    { "psalm", "PSA 137:1-2; 137:3; 137:4-5; 137:6", "hebrew" },
                    { "acclamation", "PHP 3:8-9" },
                    { "gospel", "LUK 9:57-62" },
                },
                ["B|II"] = {
                    { "first_reading", "JOB 9:1-12; 9:14-16" },
                    { "psalm", "PSA 88:10bc-11; 88:12-13; 88:14-15", "hebrew" },
                    { "acclamation", "PSA 103:21" },
                    { "gospel", "MAT 18:1-5; 18:10" },
                },
                ["C|I"] = {
                    { "first_reading", "NEH 2:1-8" },
                    { "psalm", "PSA 137:1-2; 137:3; 137:4-5; 137:6", "hebrew" },
                    { "acclamation", "PHP 3:8-9" },
                    { "gospel", "LUK 9:57-62" },
                },
                ["C|II"] = {
                    { "first_reading", "NEH 2:1-8" },
                    { "psalm", "PSA 137:1-2; 137:3; 137:4-5; 137:6", "hebrew" },
                    { "acclamation", "PHP 3:8-9" },
                    { "gospel", "LUK 9:57-62" },
                },
            },
        },
        ["ordinary-time-27-friday"] = {
            day = {
                I = {
                    { "first_reading", "JOL 1:13-15; 2:1-2" },
                    { "psalm", "PSA 9:2-3; 9:6; 9:16; 9:8-9", "hebrew" },
                    { "acclamation", "JHN 12:31b-32" },
                    { "gospel", "LUK 11:15-26" },
                },
                II = {
                    { "first_reading", "GAL 3:7-14" },
                    { "psalm", "PSA 111:1b-2; 111:3-4; 111:5-6", "hebrew" },
                    { "acclamation", "JHN 12:31b-32" },
                    { "gospel", "LUK 11:15-26" },
                },
            },
        },
        ["ordinary-time-27-monday"] = {
            day = {
                I = {
                    { "first_reading", "JON 1:1-2:2; 1:11" },
                    { "psalm", "JON 2:3; 2:4; 2:5; 2:8", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "LUK 10:25-37" },
                },
                II = {
                    { "first_reading", "GAL 1:6-12" },
                    { "psalm", "PSA 111:1b-2; 111:7-8; 111:9; 111:10c", "hebrew" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "LUK 10:25-37" },
                },
            },
        },
        ["ordinary-time-27-saturday"] = {
            day = {
                I = {
                    { "first_reading", "JOL 4:12-21" },
                    { "psalm", "PSA 97:1-2; 97:5-6; 97:11-12", "hebrew" },
                    { "acclamation", "LUK 11:28" },
                    { "gospel", "LUK 11:27-28" },
                },
                II = {
                    { "first_reading", "GAL 3:22-29" },
                    { "psalm", "PSA 105:2-3; 105:4-5; 105:6-7", "hebrew" },
                    { "acclamation", "LUK 11:28" },
                    { "gospel", "LUK 11:27-28" },
                },
            },
        },
        ["ordinary-time-27-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 5:1-7" },
                    { "psalm", "PSA 80:9; 80:12; 80:13-14; 80:15-16; 80:19-20", "hebrew" },
                    { "second_reading", "PHP 4:6-9" },
                    { "acclamation", "JHN 15:16" },
                    { "gospel", "MAT 21:33-43" },
                },
                B = {
                    { "first_reading", "GEN 2:18-24" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5; 128:6", "hebrew" },
                    { "second_reading", "HEB 2:9-11" },
                    { "acclamation", "1JN 4:12" },
                    { "gospel", "MRK 10:2-16 | MRK 10:2-12" },
                },
                C = {
                    { "first_reading", "HAB 1:2-3; 2:2-4" },
                    { "psalm", "PSA 95:1-2; 95:6-7; 95:8-9", "hebrew" },
                    { "second_reading", "2TI 1:6-8; 1:13-14" },
                    { "acclamation", "1PE 1:25" },
                    { "gospel", "LUK 17:5-10" },
                },
            },
        },
        ["ordinary-time-27-thursday"] = {
            day = {
                I = {
                    { "first_reading", "MAL 3:13-20b" },
                    { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "LUK 11:5-13" },
                },
                II = {
                    { "first_reading", "GAL 3:1-5" },
                    { "psalm", "LUK 1:69-70; 1:71-72; 1:73-75", "hebrew" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "LUK 11:5-13" },
                },
            },
        },
        ["ordinary-time-27-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "JON 3:1-10" },
                    { "psalm", "PSA 130:1b-2; 130:3-4ab; 130:7-8", "hebrew" },
                    { "acclamation", "LUK 11:28" },
                    { "gospel", "LUK 10:38-42" },
                },
                II = {
                    { "first_reading", "GAL 1:13-24" },
                    { "psalm", "PSA 139:1b-3; 139:13-14ab; 139:14c-15", "hebrew" },
                    { "acclamation", "LUK 11:28" },
                    { "gospel", "LUK 10:38-42" },
                },
            },
        },
        ["ordinary-time-27-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "JON 4:1-11" },
                    { "psalm", "PSA 86:3-4; 86:5-6; 86:9-10", "hebrew" },
                    { "acclamation", "ROM 8:15bc" },
                    { "gospel", "LUK 11:1-4" },
                },
                II = {
                    { "first_reading", "GAL 2:1-2; 2:7-14" },
                    { "psalm", "PSA 117:1bc; 117:2", "hebrew" },
                    { "acclamation", "ROM 8:15bc" },
                    { "gospel", "LUK 11:1-4" },
                },
            },
        },
        ["ordinary-time-28-friday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 4:1-8" },
                    { "psalm", "PSA 32:1b-2; 32:5; 32:11", "hebrew" },
                    { "acclamation", "PSA 33:22" },
                    { "gospel", "LUK 12:1-7" },
                },
                II = {
                    { "first_reading", "EPH 1:11-14" },
                    { "psalm", "PSA 33:1-2; 33:4-5; 33:12-13", "hebrew" },
                    { "acclamation", "PSA 33:22" },
                    { "gospel", "LUK 12:1-7" },
                },
            },
        },
        ["ordinary-time-28-monday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 1:1-7" },
                    { "psalm", "PSA 98:1bcde; 98:2-3ab; 98:3cd-4", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 11:29-32" },
                },
                II = {
                    { "first_reading", "GAL 4:22-24; 4:26-27; 4:31-5:1" },
                    { "psalm", "PSA 113:1b-2; 113:3-4; 113:5a; 113:6-7", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 11:29-32" },
                },
            },
        },
        ["ordinary-time-28-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 4:13; 4:16-18" },
                    { "psalm", "PSA 105:6-7; 105:8-9; 105:42-43", "hebrew" },
                    { "acclamation", "JHN 15:26b; 15:27a" },
                    { "gospel", "LUK 12:8-12" },
                },
                II = {
                    { "first_reading", "EPH 1:15-23" },
                    { "psalm", "PSA 8:2-3ab; 8:4-5; 8:6-7", "hebrew" },
                    { "acclamation", "JHN 15:26b; 15:27a" },
                    { "gospel", "LUK 12:8-12" },
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
                    { "gospel", "MAT 22:1-14" },
                },
                B = {
                    { "first_reading", "WIS 7:7-11" },
                    { "psalm", "PSA 90:12-13; 90:14-15; 90:16-17", "hebrew" },
                    { "second_reading", "HEB 4:12-13" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MRK 10:17-30 | MRK 10:17-27" },
                },
                C = {
                    { "first_reading", "2KI 5:14-17" },
                    { "psalm", "PSA 98:1; 98:2-3; 98:3-4", "hebrew" },
                    { "second_reading", "2TI 2:8-13" },
                    { "acclamation", "1TH 5:18" },
                    { "gospel", "LUK 17:11-19" },
                },
            },
        },
        ["ordinary-time-28-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 3:21-30" },
                    { "psalm", "PSA 130:1b-2; 130:3-4; 130:5-6ab", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "LUK 11:47-54" },
                },
                II = {
                    { "first_reading", "EPH 1:1-10" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4; 98:5-6", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "LUK 11:47-54" },
                },
            },
        },
        ["ordinary-time-28-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 1:16-25" },
                    { "psalm", "PSA 19:2-3; 19:4-5", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "LUK 11:37-41" },
                },
                II = {
                    { "first_reading", "GAL 5:1-6" },
                    { "psalm", "PSA 119:41; 119:43; 119:44; 119:45; 119:47; 119:48", "hebrew" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "LUK 11:37-41" },
                },
            },
        },
        ["ordinary-time-28-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 2:1-11" },
                    { "psalm", "PSA 62:2-3; 62:6-7; 62:9", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 11:42-46" },
                },
                II = {
                    { "first_reading", "GAL 5:18-25" },
                    { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 11:42-46" },
                },
            },
        },
        ["ordinary-time-29-friday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 7:18-25a" },
                    { "psalm", "PSA 119:66; 119:68; 119:76; 119:77; 119:93; 119:94", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 12:54-59" },
                },
                II = {
                    { "first_reading", "EPH 4:1-6" },
                    { "psalm", "PSA 24:1-2; 24:3-4ab; 24:5-6", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 12:54-59" },
                },
            },
        },
        ["ordinary-time-29-monday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 4:20-25" },
                    { "psalm", "LUK 1:69-70; 1:71-72; 1:73-75", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "LUK 12:13-21" },
                },
                II = {
                    { "first_reading", "EPH 2:1-10" },
                    { "psalm", "PSA 100:1b-2; 100:3; 100:4ab; 100:4c-5", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "LUK 12:13-21" },
                },
            },
        },
        ["ordinary-time-29-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:1-11" },
                    { "psalm", "PSA 24:1b-2; 24:3-4ab; 24:5-6", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "LUK 13:1-9" },
                },
                II = {
                    { "first_reading", "EPH 4:7-16" },
                    { "psalm", "PSA 122:1-2; 122:3-4ab; 122:4cd-5", "hebrew" },
                    { "acclamation", "EZK 33:11" },
                    { "gospel", "LUK 13:1-9" },
                },
            },
        },
        ["ordinary-time-29-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 45:1; 45:4-6" },
                    { "psalm", "PSA 96:1; 96:3; 96:4-5; 96:7-8; 96:9-10", "hebrew" },
                    { "second_reading", "1TH 1:1-5b" },
                    { "acclamation", "PHP 2:15d; 2:16a" },
                    { "gospel", "MAT 22:15-21" },
                },
                B = {
                    { "first_reading", "ISA 53:10-11" },
                    { "psalm", "PSA 33:4-5; 33:18-19; 33:20; 33:22", "hebrew" },
                    { "second_reading", "HEB 4:14-16" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "MRK 10:35-45 | MRK 10:42-45" },
                },
                C = {
                    { "first_reading", "EXO 17:8-13" },
                    { "psalm", "PSA 121:1-2; 121:3-4; 121:5-6; 121:7-8", "hebrew" },
                    { "second_reading", "2TI 3:14-4:2" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "LUK 18:1-8" },
                },
            },
        },
        ["ordinary-time-29-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 6:19-23" },
                    { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                    { "acclamation", "PHP 3:8-9" },
                    { "gospel", "LUK 12:49-53" },
                },
                II = {
                    { "first_reading", "EPH 3:14-21" },
                    { "psalm", "PSA 33:1-2; 33:4-5; 33:11-12; 33:18-19", "hebrew" },
                    { "acclamation", "PHP 3:8-9" },
                    { "gospel", "LUK 12:49-53" },
                },
            },
        },
        ["ordinary-time-29-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 5:12; 5:15b; 5:17-19; 5:20b-21" },
                    { "psalm", "PSA 40:7-8a; 40:8b-9; 40:10; 40:17", "hebrew" },
                    { "acclamation", "LUK 21:36" },
                    { "gospel", "LUK 12:35-38" },
                },
                II = {
                    { "first_reading", "EPH 2:12-22" },
                    { "psalm", "PSA 85:9ab-10; 85:11-12; 85:13-14", "hebrew" },
                    { "acclamation", "LUK 21:36" },
                    { "gospel", "LUK 12:35-38" },
                },
            },
        },
        ["ordinary-time-29-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 6:12-18" },
                    { "psalm", "PSA 124:1b-3; 124:4-6; 124:7-8", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "LUK 12:39-48" },
                },
                II = {
                    { "first_reading", "EPH 3:2-12" },
                    { "psalm", "ISA 12:2-3; 12:4bcd; 12:5-6", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "LUK 12:39-48" },
                },
            },
        },
        ["ordinary-time-3-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 10:32-39" },
                    { "psalm", "PSA 37:3-4; 37:5-6; 37:23-24; 37:39-40", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 4:26-34" },
                },
                II = {
                    { "first_reading", "2SA 11:1-4a; 11:5-10a; 11:13-17" },
                    { "psalm", "PSA 51:3-4; 51:5-6a; 51:6bcd-7; 51:10-11", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 4:26-34" },
                },
            },
        },
        ["ordinary-time-3-monday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 9:15; 9:24-28" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4; 98:5-6", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 3:22-30" },
                },
                II = {
                    { "first_reading", "2SA 5:1-7; 5:10" },
                    { "psalm", "PSA 89:20; 89:21-22; 89:25-26", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 3:22-30" },
                },
            },
        },
        ["ordinary-time-3-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 11:1-2; 11:8-19" },
                    { "psalm", "LUK 1:69-70; 1:71-72; 1:73-75", "hebrew" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "MRK 4:35-41" },
                },
                II = {
                    { "first_reading", "2SA 12:1-7a; 12:10-17" },
                    { "psalm", "PSA 51:12-13; 51:14-15; 51:16-17", "hebrew" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "MRK 4:35-41" },
                },
            },
        },
        ["ordinary-time-3-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 8:23-9:3" },
                    { "psalm", "PSA 27:1; 27:4; 27:13-14", "hebrew" },
                    { "second_reading", "1CO 1:10-13; 1:17" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MAT 4:12-23 | MAT 4:12-17" },
                },
                B = {
                    { "first_reading", "JON 3:1-5; 3:10" },
                    { "psalm", "PSA 25:4-5; 25:6-7; 25:8-9", "hebrew" },
                    { "second_reading", "1CO 7:29-31" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MRK 1:14-20" },
                },
                C = {
                    { "first_reading", "NEH 8:2-4a; 8:5-6; 8:8-10" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:15", "hebrew" },
                    { "second_reading", "1CO 12:12-30" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "LUK 1:1-4; 4:14-21" },
                },
            },
        },
        ["ordinary-time-3-thursday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 10:19-25" },
                    { "psalm", "PSA 24:1-2; 24:3-4ab; 24:5-6", "hebrew" },
                    { "acclamation", "PSA 119:105" },
                    { "gospel", "MRK 4:21-25" },
                },
                II = {
                    { "first_reading", "2SA 7:18-19; 7:24-29" },
                    { "psalm", "PSA 132:1-2; 132:3-5; 132:11; 132:12; 132:13-14", "hebrew" },
                    { "acclamation", "PSA 119:105" },
                    { "gospel", "MRK 4:21-25" },
                },
            },
        },
        ["ordinary-time-3-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 10:1-10" },
                    { "psalm", "PSA 40:2; 40:4ab; 40:7-8a; 40:10; 40:11", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 3:31-35" },
                },
                II = {
                    { "first_reading", "2SA 6:12b-15; 6:17-19" },
                    { "psalm", "PSA 24:7; 24:8; 24:9; 24:10", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 3:31-35" },
                },
            },
        },
        ["ordinary-time-3-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 10:11-18" },
                    { "psalm", "PSA 110:1; 110:2; 110:3; 110:4", "hebrew" },
                    { "gospel", "MRK 4:1-20" },
                },
                II = {
                    { "first_reading", "2SA 7:4-17" },
                    { "psalm", "PSA 89:4-5; 89:27-28; 89:29-30", "hebrew" },
                    { "gospel", "MRK 4:1-20" },
                },
            },
        },
        ["ordinary-time-30-friday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 9:1-5" },
                    { "psalm", "PSA 147:12-13; 147:14-15; 147:19-20", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 14:1-6" },
                },
                II = {
                    { "first_reading", "PHP 1:1-11" },
                    { "psalm", "PSA 111:1-2; 111:3-4; 111:5-6", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 14:1-6" },
                },
            },
        },
        ["ordinary-time-30-monday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:12-17" },
                    { "psalm", "PSA 68:2; 68:4; 68:6-7ab; 68:20-21", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "LUK 13:10-17" },
                },
                II = {
                    { "first_reading", "EPH 4:32-5:8" },
                    { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "LUK 13:10-17" },
                },
            },
        },
        ["ordinary-time-30-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 11:1-2a; 11:11-12; 11:25-29" },
                    { "psalm", "PSA 94:12-13a; 94:14-15; 94:17-18", "hebrew" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "LUK 14:1; 14:7-11" },
                },
                II = {
                    { "first_reading", "PHP 1:18b-26" },
                    { "psalm", "PSA 42:2; 42:3; 42:5cdef", "hebrew" },
                    { "acclamation", "MAT 11:29ab" },
                    { "gospel", "LUK 14:1; 14:7-11" },
                },
            },
        },
        ["ordinary-time-30-sunday"] = {
            day = {
                A = {
                    { "first_reading", "EXO 22:20-26" },
                    { "psalm", "PSA 18:2-3; 18:3-4; 18:47; 18:51", "hebrew" },
                    { "second_reading", "1TH 1:5c-10" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MAT 22:34-40" },
                },
                B = {
                    { "first_reading", "JER 31:7-9" },
                    { "psalm", "PSA 126:1-2; 126:2-3; 126:4-5; 126:6", "hebrew" },
                    { "second_reading", "HEB 5:1-6" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 10:46-52" },
                },
                C = {
                    { "first_reading", "SIR 35:12-14; 35:16-18" },
                    { "psalm", "PSA 34:2-3; 34:17-18; 34:19; 34:23", "hebrew" },
                    { "second_reading", "2TI 4:6-8; 4:16-18" },
                    { "acclamation", "2CO 5:19" },
                    { "gospel", "LUK 18:9-14" },
                },
            },
        },
        ["ordinary-time-30-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:31b-39" },
                    { "psalm", "PSA 109:21-22; 109:26-27; 109:30-31", "hebrew" },
                    { "acclamation", "LUK 19:38; 2:14" },
                    { "gospel", "LUK 13:31-35" },
                },
                II = {
                    { "first_reading", "EPH 6:10-20" },
                    { "psalm", "PSA 144:1b; 144:2; 144:9-10", "hebrew" },
                    { "acclamation", "LUK 19:38; 2:14" },
                    { "gospel", "LUK 13:31-35" },
                },
            },
        },
        ["ordinary-time-30-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:18-25" },
                    { "psalm", "PSA 126:1b-2ab; 126:2cd-3; 126:4-5; 126:6", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 13:18-21" },
                },
                II = {
                    { "first_reading", "EPH 5:21-33" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "LUK 13:18-21" },
                },
            },
        },
        ["ordinary-time-30-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 8:26-30" },
                    { "psalm", "PSA 13:4-5; 13:6", "hebrew" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "LUK 13:22-30" },
                },
                II = {
                    { "first_reading", "EPH 6:1-9" },
                    { "psalm", "PSA 145:10-11; 145:12-13ab; 145:13cd-14", "hebrew" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "LUK 13:22-30" },
                },
            },
        },
        ["ordinary-time-31-friday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 15:14-21" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4", "hebrew" },
                    { "acclamation", "1JN 2:5" },
                    { "gospel", "LUK 16:1-8" },
                },
                II = {
                    { "first_reading", "PHP 3:17-4:1" },
                    { "psalm", "PSA 122:1-2; 122:3-4ab; 122:4cd-5", "hebrew" },
                    { "acclamation", "1JN 2:5" },
                    { "gospel", "LUK 16:1-8" },
                },
            },
        },
        ["ordinary-time-31-monday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 11:29-36" },
                    { "psalm", "PSA 69:30-31; 69:33-34; 69:36", "hebrew" },
                    { "acclamation", "JHN 8:31b-32" },
                    { "gospel", "LUK 14:12-14" },
                },
                II = {
                    { "first_reading", "PHP 2:1-4" },
                    { "psalm", "PSA 131:1bcde; 131:2; 131:3", "hebrew" },
                    { "acclamation", "JHN 8:31b-32" },
                    { "gospel", "LUK 14:12-14" },
                },
            },
        },
        ["ordinary-time-31-saturday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 16:3-9; 16:16; 16:22-27" },
                    { "psalm", "PSA 145:2-3; 145:4-5; 145:10-11", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "LUK 16:9-15" },
                },
                II = {
                    { "first_reading", "PHP 4:10-19" },
                    { "psalm", "PSA 112:1b-2; 112:5-6; 112:8a; 112:9", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "LUK 16:9-15" },
                },
            },
        },
        ["ordinary-time-31-sunday"] = {
            day = {
                A = {
                    { "first_reading", "MAL 1:14b-2:2b; 1:8-10" },
                    { "psalm", "PSA 131:1; 131:2; 131:3", "hebrew" },
                    { "second_reading", "1TH 2:7b-9; 2:13" },
                    { "acclamation", "MAT 23:9b; 23:10b" },
                    { "gospel", "MAT 23:1-12" },
                },
                B = {
                    { "first_reading", "DEU 6:2-6" },
                    { "psalm", "PSA 18:2-3; 18:3-4; 18:47; 18:51", "hebrew" },
                    { "second_reading", "HEB 7:23-28" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MRK 12:28b-34" },
                },
                C = {
                    { "first_reading", "WIS 11:22-12:2" },
                    { "psalm", "PSA 145:1-2; 145:8-9; 145:10-11; 145:13b-14", "hebrew" },
                    { "second_reading", "2TH 1:11-2:2" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "LUK 19:1-10" },
                },
            },
        },
        ["ordinary-time-31-thursday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 14:7-12" },
                    { "psalm", "PSA 27:1bcde; 27:4; 27:13-14", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "LUK 15:1-10" },
                },
                II = {
                    { "first_reading", "PHP 3:3-8a" },
                    { "psalm", "PSA 105:2-3; 105:4-5; 105:6-7", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "LUK 15:1-10" },
                },
            },
        },
        ["ordinary-time-31-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 12:5-16ab" },
                    { "psalm", "PSA 131:1bcde; 131:2; 131:3", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "LUK 14:15-24" },
                },
                II = {
                    { "first_reading", "PHP 2:5-11" },
                    { "psalm", "PSA 22:26b-27; 22:28-30ab; 22:30e; 22:31-32", "hebrew" },
                    { "acclamation", "MAT 11:28" },
                    { "gospel", "LUK 14:15-24" },
                },
            },
        },
        ["ordinary-time-31-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "ROM 13:8-10" },
                    { "psalm", "PSA 112:1b-2; 112:4-5; 112:9", "hebrew" },
                    { "acclamation", "1PE 4:14" },
                    { "gospel", "LUK 14:25-33" },
                },
                II = {
                    { "first_reading", "PHP 2:12-18" },
                    { "psalm", "PSA 27:1; 27:4; 27:13-14", "hebrew" },
                    { "acclamation", "1PE 4:14" },
                    { "gospel", "LUK 14:25-33" },
                },
            },
        },
        ["ordinary-time-32-friday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 13:1-9" },
                    { "psalm", "PSA 19:2-3; 19:4-5ab", "hebrew" },
                    { "acclamation", "LUK 21:28" },
                    { "gospel", "LUK 17:26-37" },
                },
                II = {
                    { "first_reading", "2JN 1:4-9" },
                    { "psalm", "PSA 119:1; 119:2; 119:10; 119:11; 119:17; 119:18", "hebrew" },
                    { "acclamation", "LUK 21:28" },
                    { "gospel", "LUK 17:26-37" },
                },
            },
        },
        ["ordinary-time-32-monday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 1:1-7" },
                    { "psalm", "PSA 139:1b-3; 139:4-6; 139:7-8; 139:9-10", "hebrew" },
                    { "acclamation", "PHP 2:15d; 2:16a" },
                    { "gospel", "LUK 17:1-6" },
                },
                II = {
                    { "first_reading", "TIT 1:1-9" },
                    { "psalm", "PSA 24:1b-2; 24:3-4ab; 24:5-6", "hebrew" },
                    { "acclamation", "PHP 2:15d; 2:16a" },
                    { "gospel", "LUK 17:1-6" },
                },
            },
        },
        ["ordinary-time-32-saturday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 18:14-16; 19:6-9" },
                    { "psalm", "PSA 105:2-3; 105:36-37; 105:42-43", "hebrew" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "LUK 18:1-8" },
                },
                II = {
                    { "first_reading", "3JN 1:5-8" },
                    { "psalm", "PSA 112:1-2; 112:3-4; 112:5-6", "hebrew" },
                    { "acclamation", "2TH 2:14" },
                    { "gospel", "LUK 18:1-8" },
                },
            },
        },
        ["ordinary-time-32-sunday"] = {
            day = {
                A = {
                    { "first_reading", "WIS 6:12-16" },
                    { "psalm", "PSA 63:2; 63:3-4; 63:5-6; 63:7-8", "hebrew" },
                    { "second_reading", "1TH 4:13-18" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "MAT 25:1-13" },
                },
                B = {
                    { "first_reading", "1KI 17:10-16" },
                    { "psalm", "PSA 146:7; 146:8-9; 146:9-10", "hebrew" },
                    { "second_reading", "HEB 9:24-28" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MRK 12:38-44 | MRK 12:41-44" },
                },
                C = {
                    { "first_reading", "2MA 7:1-2; 7:9-14" },
                    { "psalm", "PSA 17:1; 17:5-6; 17:8; 17:15", "hebrew" },
                    { "second_reading", "2TH 2:16-3:5" },
                    { "acclamation", "REV 1:5a; 1:6b" },
                    { "gospel", "LUK 20:27-38 | LUK 20:27; 20:34-38" },
                },
            },
        },
        ["ordinary-time-32-thursday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 7:22b-8:1" },
                    { "psalm", "PSA 119:89; 119:90; 119:91; 119:130; 119:135; 119:175", "hebrew" },
                    { "acclamation", "JHN 15:5" },
                    { "gospel", "LUK 17:20-25" },
                },
                II = {
                    { "first_reading", "PHM 1:7-20" },
                    { "psalm", "PSA 146:7; 146:8-9a; 146:9bc-10", "hebrew" },
                    { "acclamation", "JHN 15:5" },
                    { "gospel", "LUK 17:20-25" },
                },
            },
        },
        ["ordinary-time-32-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 2:23-3:9" },
                    { "psalm", "PSA 34:2-3; 34:16-17; 34:18-19", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "LUK 17:7-10" },
                },
                II = {
                    { "first_reading", "TIT 2:1-8; 2:11-14" },
                    { "psalm", "PSA 37:3-4; 37:18; 37:23; 37:27; 37:29", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "LUK 17:7-10" },
                },
            },
        },
        ["ordinary-time-32-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "WIS 6:1-11" },
                    { "psalm", "PSA 82:3-4; 82:6-7", "hebrew" },
                    { "acclamation", "1TH 5:18" },
                    { "gospel", "LUK 17:11-19" },
                },
                II = {
                    { "first_reading", "TIT 3:1-7" },
                    { "psalm", "PSA 23:1b-3a; 23:3bc-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "1TH 5:18" },
                    { "gospel", "LUK 17:11-19" },
                },
            },
        },
        ["ordinary-time-33-friday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 4:36-37; 4:52-59" },
                    { "psalm", "1CH 29:10bcd; 29:11abc; 29:11d-12a; 29:12bcd", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 19:45-48" },
                },
                II = {
                    { "first_reading", "REV 10:8-11" },
                    { "psalm", "PSA 119:14; 119:24; 119:72; 119:103; 119:111; 119:131", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "LUK 19:45-48" },
                },
            },
        },
        ["ordinary-time-33-monday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 1:10-15; 1:41-43; 1:54-57; 1:62-63" },
                    { "psalm", "PSA 119:53; 119:61; 119:134; 119:150; 119:155; 119:158", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "LUK 18:35-43" },
                },
                II = {
                    { "first_reading", "REV 1:1-4; 2:1-5" },
                    { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "LUK 18:35-43" },
                },
            },
        },
        ["ordinary-time-33-saturday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 6:1-13" },
                    { "psalm", "PSA 9:2-3; 9:4; 9:6; 9:16; 9:19", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "LUK 20:27-40" },
                },
                II = {
                    { "psalm", "PSA 144:1; 144:2; 144:9-10", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "LUK 20:27-40" },
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
                    { "gospel", "MAT 25:14-30" },
                },
                B = {
                    { "first_reading", "DAN 12:1-3" },
                    { "psalm", "PSA 16:5; 16:8; 16:9-10; 16:11", "hebrew" },
                    { "second_reading", "HEB 10:11-14; 10:18" },
                    { "acclamation", "LUK 21:36" },
                    { "gospel", "MRK 13:24-32" },
                },
                C = {
                    { "first_reading", "MAL 3:19-20a" },
                    { "psalm", "PSA 98:5-6; 98:7-8; 98:9", "hebrew" },
                    { "second_reading", "2TH 3:7-12" },
                    { "acclamation", "LUK 21:28" },
                    { "gospel", "LUK 21:5-19" },
                },
            },
        },
        ["ordinary-time-33-thursday"] = {
            day = {
                I = {
                    { "first_reading", "1MA 2:15-29" },
                    { "psalm", "PSA 50:1b-2; 50:5-6; 50:14-15", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 19:41-44" },
                },
                II = {
                    { "first_reading", "REV 5:1-10" },
                    { "psalm", "PSA 149:1b-2; 149:3-4; 149:5-6b; 149:9b", "hebrew" },
                    { "acclamation", "PSA 95:8" },
                    { "gospel", "LUK 19:41-44" },
                },
            },
        },
        ["ordinary-time-33-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "2MA 6:18-31" },
                    { "psalm", "PSA 3:2-3; 3:4-5; 3:6-7", "hebrew" },
                    { "acclamation", "1JN 4:10b" },
                    { "gospel", "LUK 19:1-10" },
                },
                II = {
                    { "first_reading", "REV 3:1-6; 3:14-22" },
                    { "psalm", "PSA 15:2-3a; 15:3bc-4ab; 15:5", "hebrew" },
                    { "acclamation", "1JN 4:10b" },
                    { "gospel", "LUK 19:1-10" },
                },
            },
        },
        ["ordinary-time-33-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "2MA 7:1; 7:20-31" },
                    { "psalm", "PSA 17:1bcd; 17:5-6; 17:8b; 17:15", "hebrew" },
                    { "acclamation", "JHN 15:16" },
                    { "gospel", "LUK 19:11-28" },
                },
                II = {
                    { "first_reading", "REV 4:1-11" },
                    { "psalm", "PSA 150:1b-2; 150:3-4; 150:5-6", "hebrew" },
                    { "acclamation", "JHN 15:16" },
                    { "gospel", "LUK 19:11-28" },
                },
            },
        },
        ["ordinary-time-34-friday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 7:2-14" },
                    { "psalm", "DAN 3:75; 3:76; 3:77; 3:78; 3:79; 3:80; 3:81", "hebrew" },
                    { "acclamation", "LUK 21:28" },
                    { "gospel", "LUK 21:29-33" },
                },
                II = {
                    { "first_reading", "REV 20:1-4; 20:11-21:2" },
                    { "psalm", "PSA 84:3; 84:4; 84:5-6a; 84:8a", "hebrew" },
                    { "acclamation", "LUK 21:28" },
                    { "gospel", "LUK 21:29-33" },
                },
            },
        },
        ["ordinary-time-34-monday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 1:1-6; 1:8-20" },
                    { "psalm", "DAN 3:52; 3:53; 3:54; 3:55; 3:56", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "LUK 21:1-4" },
                },
                II = {
                    { "first_reading", "REV 14:1-3; 14:4b-5" },
                    { "psalm", "PSA 24:1bc-2; 24:3-4ab; 24:5-6", "hebrew" },
                    { "acclamation", "MAT 24:42a; 24:44" },
                    { "gospel", "LUK 21:1-4" },
                },
            },
        },
        ["ordinary-time-34-saturday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 7:15-27" },
                    { "psalm", "DAN 3:82; 3:83; 3:84; 3:85; 3:86; 3:87", "hebrew" },
                    { "acclamation", "LUK 21:36" },
                    { "gospel", "LUK 21:34-36" },
                },
                II = {
                    { "first_reading", "REV 22:1-7" },
                    { "psalm", "PSA 95:1-2; 95:3-5; 95:6-7ab", "hebrew" },
                    { "acclamation", "LUK 21:36" },
                    { "gospel", "LUK 21:34-36" },
                },
            },
        },
        ["ordinary-time-34-thursday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 6:12-28" },
                    { "psalm", "DAN 3:68; 3:69; 3:70; 3:71; 3:72; 3:73; 3:74", "hebrew" },
                    { "acclamation", "LUK 21:28" },
                    { "gospel", "LUK 21:20-28" },
                },
                II = {
                    { "first_reading", "REV 18:1-2; 18:21-23; 19:1-3; 19:9a" },
                    { "psalm", "PSA 100:1b-2; 100:3; 100:4; 100:5", "hebrew" },
                    { "acclamation", "LUK 21:28" },
                    { "gospel", "LUK 21:20-28" },
                },
            },
        },
        ["ordinary-time-34-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 2:31-45" },
                    { "psalm", "DAN 3:57; 3:58; 3:59; 3:60; 3:61", "hebrew" },
                    { "acclamation", "REV 2:10c" },
                    { "gospel", "LUK 21:5-11" },
                },
                II = {
                    { "first_reading", "REV 14:14-19" },
                    { "psalm", "PSA 96:10; 96:11-12; 96:13", "hebrew" },
                    { "acclamation", "REV 2:10c" },
                    { "gospel", "LUK 21:5-11" },
                },
            },
        },
        ["ordinary-time-34-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "DAN 5:1-6; 5:13-14; 5:16-17; 5:23-28" },
                    { "psalm", "DAN 3:62; 3:63; 3:64; 3:65; 3:66; 3:67", "hebrew" },
                    { "acclamation", "REV 2:10c" },
                    { "gospel", "LUK 21:12-19" },
                },
                II = {
                    { "first_reading", "REV 15:1-4" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:7-8; 98:9", "hebrew" },
                    { "acclamation", "REV 2:10c" },
                    { "gospel", "LUK 21:12-19" },
                },
            },
        },
        ["ordinary-time-4-friday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 13:1-8" },
                    { "psalm", "PSA 27:1; 27:3; 27:5; 27:8b-9abc", "hebrew" },
                    { "acclamation", "LUK 8:15" },
                    { "gospel", "MRK 6:14-29" },
                },
                II = {
                    { "first_reading", "SIR 47:2-11" },
                    { "psalm", "PSA 18:31; 18:47; 18:50; 18:51", "hebrew" },
                    { "acclamation", "LUK 8:15" },
                    { "gospel", "MRK 6:14-29" },
                },
            },
        },
        ["ordinary-time-4-monday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 11:32-40" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MRK 5:1-20" },
                },
                II = {
                    { "first_reading", "2SA 15:13-14; 15:30; 16:5-13" },
                    { "psalm", "PSA 3:2-3; 3:4-5; 3:6-7", "hebrew" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MRK 5:1-20" },
                },
            },
        },
        ["ordinary-time-4-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 13:15-17; 13:20-21" },
                    { "psalm", "PSA 23:1-3a; 23:3b-4; 23:5; 23:6", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MRK 6:30-34" },
                },
                II = {
                    { "first_reading", "1KI 3:4-13" },
                    { "psalm", "PSA 119:9; 119:10; 119:11; 119:12; 119:13; 119:14", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MRK 6:30-34" },
                },
            },
        },
        ["ordinary-time-4-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ZEP 2:3; 3:12-13" },
                    { "psalm", "PSA 146:6-7; 146:8-9; 146:9-10", "hebrew" },
                    { "second_reading", "1CO 1:26-31" },
                    { "acclamation", "MAT 5:12a" },
                    { "gospel", "MAT 5:1-12a" },
                },
                B = {
                    { "first_reading", "DEU 18:15-20" },
                    { "psalm", "PSA 95:1-2; 95:6-7; 95:7-9", "hebrew" },
                    { "second_reading", "1CO 7:32-35" },
                    { "acclamation", "MAT 4:16" },
                    { "gospel", "MRK 1:21-28" },
                },
                C = {
                    { "first_reading", "JER 1:4-5; 1:17-19" },
                    { "psalm", "PSA 71:1-2; 71:3-4; 71:5-6; 71:15; 71:17", "hebrew" },
                    { "second_reading", "1CO 12:31-13:13 | 1CO 13:4-13" },
                    { "acclamation", "LUK 4:18cd" },
                    { "gospel", "LUK 4:21-30" },
                },
            },
        },
        ["ordinary-time-4-thursday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 12:18-19; 12:21-24" },
                    { "psalm", "PSA 48:2-3ab; 48:3cd-4; 48:9; 48:10-11", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MRK 6:7-13" },
                },
                II = {
                    { "first_reading", "1KI 2:1-4; 2:10-12" },
                    { "psalm", "1CH 29:10; 29:11ab; 29:11d-12a; 29:12bcd", "hebrew" },
                    { "acclamation", "MRK 1:15" },
                    { "gospel", "MRK 6:7-13" },
                },
            },
        },
        ["ordinary-time-4-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 12:1-4" },
                    { "psalm", "PSA 22:26b-27; 22:28; 22:30; 22:31-32", "hebrew" },
                    { "acclamation", "MAT 8:17" },
                    { "gospel", "MRK 5:21-43" },
                },
                II = {
                    { "first_reading", "2SA 18:9-10; 18:14b; 18:24-25a; 18:30-19:3" },
                    { "psalm", "PSA 86:1-2; 86:3-4; 86:5-6", "hebrew" },
                    { "acclamation", "MAT 8:17" },
                    { "gospel", "MRK 5:21-43" },
                },
            },
        },
        ["ordinary-time-4-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 12:4-7; 12:11-15" },
                    { "psalm", "PSA 103:1-2; 103:13-14; 103:17-18a", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MRK 6:1-6" },
                },
                II = {
                    { "first_reading", "2SA 24:2; 24:9-17" },
                    { "psalm", "PSA 32:1-2; 32:5; 32:6; 32:7", "hebrew" },
                    { "acclamation", "JHN 10:27" },
                    { "gospel", "MRK 6:1-6" },
                },
            },
        },
        ["ordinary-time-5-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 3:1-8" },
                    { "psalm", "PSA 32:1-2; 32:5; 32:6; 32:7", "hebrew" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "MRK 7:31-37" },
                },
                II = {
                    { "first_reading", "1KI 11:29-32; 12:19" },
                    { "psalm", "PSA 81:10-11ab; 81:12-13; 81:14-15", "hebrew" },
                    { "acclamation", "ACT 16:14b" },
                    { "gospel", "MRK 7:31-37" },
                },
            },
        },
        ["ordinary-time-5-monday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 1:1-19" },
                    { "psalm", "PSA 104:1-2a; 104:5-6; 104:10; 104:12; 104:24; 104:35c", "hebrew" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MRK 6:53-56" },
                },
                II = {
                    { "first_reading", "1KI 8:1-7; 8:9-13" },
                    { "psalm", "PSA 132:6-7; 132:8-10", "hebrew" },
                    { "acclamation", "MAT 4:23" },
                    { "gospel", "MRK 6:53-56" },
                },
            },
        },
        ["ordinary-time-5-saturday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 3:9-24" },
                    { "psalm", "PSA 90:2; 90:3-4abc; 90:5-6; 90:12-13", "hebrew" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "MRK 8:1-10" },
                },
                II = {
                    { "first_reading", "1KI 12:26-32; 13:33-34" },
                    { "psalm", "PSA 106:6-7ab; 106:19-20; 106:21-22", "hebrew" },
                    { "acclamation", "MAT 4:4b" },
                    { "gospel", "MRK 8:1-10" },
                },
            },
        },
        ["ordinary-time-5-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 58:7-10" },
                    { "psalm", "PSA 112:4-5; 112:6-7; 112:8-9", "hebrew" },
                    { "second_reading", "1CO 2:1-5" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "MAT 5:13-16" },
                },
                B = {
                    { "first_reading", "JOB 7:1-4; 7:6-7" },
                    { "psalm", "PSA 147:1-2; 147:3-4; 147:5-6", "hebrew" },
                    { "second_reading", "1CO 9:16-19; 9:22-23" },
                    { "acclamation", "MAT 8:17" },
                    { "gospel", "MRK 1:29-39" },
                },
                C = {
                    { "first_reading", "ISA 6:1-2a; 6:3-8" },
                    { "psalm", "PSA 138:1-2; 138:2-3; 138:4-5; 138:7-8", "hebrew" },
                    { "second_reading", "1CO 15:1-11" },
                    { "acclamation", "MAT 4:19" },
                    { "gospel", "LUK 5:1-11" },
                },
            },
        },
        ["ordinary-time-5-thursday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 2:18-25" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "acclamation", "JAS 1:21bc" },
                    { "gospel", "MRK 7:24-30" },
                },
                II = {
                    { "first_reading", "1KI 11:4-13" },
                    { "psalm", "PSA 106:3-4; 106:35-36; 106:37; 106:40", "hebrew" },
                    { "acclamation", "JAS 1:21bc" },
                    { "gospel", "MRK 7:24-30" },
                },
            },
        },
        ["ordinary-time-5-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 1:20-2:4a" },
                    { "psalm", "PSA 8:4-5; 8:6-7; 8:8-9", "hebrew" },
                    { "acclamation", "PSA 119:36; 119:29b" },
                    { "gospel", "MRK 7:1-13" },
                },
                II = {
                    { "first_reading", "1KI 8:22-23; 8:27-30" },
                    { "psalm", "PSA 84:3; 84:4; 84:5; 84:10; 84:11", "hebrew" },
                    { "acclamation", "PSA 119:36; 119:29b" },
                    { "gospel", "MRK 7:1-13" },
                },
            },
        },
        ["ordinary-time-5-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 2:4b-9; 2:15-17" },
                    { "psalm", "PSA 104:1-2a; 104:27-28; 104:29bc-30", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "MRK 7:14-23" },
                },
                II = {
                    { "first_reading", "1KI 10:1-10" },
                    { "psalm", "PSA 37:5-6; 37:30-31; 37:39-40", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "MRK 7:14-23" },
                },
            },
        },
        ["ordinary-time-6-friday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 11:1-9" },
                    { "psalm", "PSA 33:10-11; 33:12-13; 33:14-15", "hebrew" },
                    { "acclamation", "JHN 15:15b" },
                    { "gospel", "MRK 8:34-9:1" },
                },
                II = {
                    { "first_reading", "JAS 2:14-24; 2:26" },
                    { "psalm", "PSA 112:1-2; 112:3-4; 112:5-6", "hebrew" },
                    { "acclamation", "JHN 15:15b" },
                    { "gospel", "MRK 8:34-9:1" },
                },
            },
        },
        ["ordinary-time-6-monday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 4:1-15; 4:25" },
                    { "psalm", "PSA 50:1; 50:8; 50:16bc-17; 50:20-21", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "MRK 8:11-13" },
                },
                II = {
                    { "first_reading", "JAS 1:1-11" },
                    { "psalm", "PSA 119:67; 119:68; 119:71; 119:72; 119:75; 119:76", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "MRK 8:11-13" },
                },
            },
        },
        ["ordinary-time-6-saturday"] = {
            day = {
                I = {
                    { "first_reading", "HEB 11:1-7" },
                    { "psalm", "PSA 145:2-3; 145:4-5; 145:10-11", "hebrew" },
                    { "acclamation", "MRK 9:6" },
                    { "gospel", "MRK 9:2-13" },
                },
                II = {
                    { "first_reading", "JAS 3:1-10" },
                    { "psalm", "PSA 12:2-3; 12:4-5; 12:7-8", "hebrew" },
                    { "acclamation", "MRK 9:6" },
                    { "gospel", "MRK 9:2-13" },
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
                    { "gospel", "MAT 5:17-37" },
                },
                B = {
                    { "first_reading", "LEV 13:1-2; 13:44-46" },
                    { "psalm", "PSA 32:1-2; 32:5; 32:11", "hebrew" },
                    { "second_reading", "1CO 10:31-11:1" },
                    { "acclamation", "LUK 7:16" },
                    { "gospel", "MRK 1:40-45" },
                },
                C = {
                    { "first_reading", "JER 17:5-8" },
                    { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                    { "second_reading", "1CO 15:12; 15:16-20" },
                    { "acclamation", "LUK 6:23ab" },
                    { "gospel", "LUK 6:17; 6:20-26" },
                },
            },
        },
        ["ordinary-time-6-thursday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 9:1-13" },
                    { "psalm", "PSA 102:16-18; 102:19-21; 102:29; 102:22-23", "hebrew" },
                    { "gospel", "MRK 8:27-33" },
                },
                II = {
                    { "first_reading", "JAS 2:1-9" },
                    { "psalm", "PSA 34:2-3; 34:4-5; 34:6-7", "hebrew" },
                    { "acclamation", "JHN 6:63c; 6:68c" },
                    { "gospel", "MRK 8:27-33" },
                },
            },
        },
        ["ordinary-time-6-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 6:5-8; 7:1-5; 7:10" },
                    { "psalm", "PSA 29:1a; 29:2; 29:3ac-4; 29:3b; 29:9c-10", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MRK 8:14-21" },
                },
                II = {
                    { "first_reading", "JAS 1:12-18" },
                    { "psalm", "PSA 94:12-13a; 94:14-15; 94:18-19", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MRK 8:14-21" },
                },
            },
        },
        ["ordinary-time-6-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "GEN 8:6-13; 8:20-22" },
                    { "psalm", "PSA 116:12-13; 116:14-15; 116:18-19", "hebrew" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 8:22-26" },
                },
                II = {
                    { "first_reading", "JAS 1:19-27" },
                    { "psalm", "PSA 15:2-3a; 15:3bc-4ab; 15:5", "hebrew" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 8:22-26" },
                },
            },
        },
        ["ordinary-time-7-friday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 6:5-17" },
                    { "psalm", "PSA 119:12; 119:16; 119:18; 119:27; 119:34; 119:35", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "MRK 10:1-12" },
                },
                II = {
                    { "first_reading", "JAS 5:9-12" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:8-9; 103:11-12", "hebrew" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "MRK 10:1-12" },
                },
            },
        },
        ["ordinary-time-7-monday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 1:1-10" },
                    { "psalm", "PSA 93:1ab; 93:1cd-2; 93:5", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 9:14-29" },
                },
                II = {
                    { "first_reading", "JAS 3:13-18" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:15", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 9:14-29" },
                },
            },
        },
        ["ordinary-time-7-saturday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 17:1-15" },
                    { "psalm", "PSA 103:13-14; 103:15-16; 103:17-18", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 10:13-16" },
                },
                II = {
                    { "first_reading", "JAS 5:13-20" },
                    { "psalm", "PSA 141:1-2; 141:3; 141:8", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 10:13-16" },
                },
            },
        },
        ["ordinary-time-7-sunday"] = {
            day = {
                A = {
                    { "first_reading", "LEV 19:1-2; 19:17-18" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:8; 103:10; 103:12-13", "hebrew" },
                    { "second_reading", "1CO 3:16-23" },
                    { "acclamation", "1JN 2:5" },
                    { "gospel", "MAT 5:38-48" },
                },
                B = {
                    { "first_reading", "ISA 43:18-19; 43:21-22; 43:24b-25" },
                    { "psalm", "PSA 41:2-3; 41:4-5; 41:13-14", "hebrew" },
                    { "second_reading", "2CO 1:18-22" },
                    { "acclamation", "LUK 4:18" },
                    { "gospel", "MRK 2:1-12" },
                },
                C = {
                    { "first_reading", "1SA 26:2; 26:7-9; 26:12-13; 26:22-23" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:8; 103:10; 103:12-13", "hebrew" },
                    { "second_reading", "1CO 15:45-49" },
                    { "acclamation", "JHN 13:34" },
                    { "gospel", "LUK 6:27-38" },
                },
            },
        },
        ["ordinary-time-7-thursday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 5:1-8" },
                    { "psalm", "PSA 1:1-4; 1:6", "hebrew" },
                    { "acclamation", "1TH 2:13" },
                    { "gospel", "MRK 9:41-50" },
                },
                II = {
                    { "first_reading", "JAS 5:1-6" },
                    { "psalm", "PSA 49:14-15ab; 49:15cd-16; 49:17-18; 49:19-20", "hebrew" },
                    { "acclamation", "1TH 2:13" },
                    { "gospel", "MRK 9:41-50" },
                },
            },
        },
        ["ordinary-time-7-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 2:1-11" },
                    { "psalm", "PSA 37:3-4; 37:18-19; 37:27-28; 37:39-40", "hebrew" },
                    { "acclamation", "GAL 6:14" },
                    { "gospel", "MRK 9:30-37" },
                },
                II = {
                    { "first_reading", "JAS 4:1-10" },
                    { "psalm", "PSA 55:7-8; 55:9-10a; 55:10b-11a; 55:23", "hebrew" },
                    { "acclamation", "GAL 6:14" },
                    { "gospel", "MRK 9:30-37" },
                },
            },
        },
        ["ordinary-time-7-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 4:11-19" },
                    {
                        "psalm",
                        "PSA 119:165; 119:168; 119:171; 119:172; 119:174; 119:175",
                        "hebrew",
                    },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "MRK 9:38-40" },
                },
                II = {
                    { "first_reading", "JAS 4:13-17" },
                    { "psalm", "PSA 49:2-3; 49:6-7; 49:8-10; 49:11", "hebrew" },
                    { "acclamation", "JHN 14:6" },
                    { "gospel", "MRK 9:38-40" },
                },
            },
        },
        ["ordinary-time-8-friday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 44:1; 44:9-13" },
                    { "psalm", "PSA 149:1b-2; 149:3-4; 149:5-6a; 149:9b", "hebrew" },
                    { "acclamation", "JHN 15:16" },
                    { "gospel", "MRK 11:11-26" },
                },
                II = {
                    { "first_reading", "1PE 4:7-13" },
                    { "psalm", "PSA 96:10; 96:11-12; 96:13", "hebrew" },
                    { "acclamation", "JHN 15:16" },
                    { "gospel", "MRK 11:11-26" },
                },
            },
        },
        ["ordinary-time-8-monday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 17:20-24" },
                    { "psalm", "PSA 32:1-2; 32:5; 32:6; 32:7", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "MRK 10:17-27" },
                },
                II = {
                    { "first_reading", "1PE 1:3-9" },
                    { "psalm", "PSA 111:1-2; 111:5-6; 111:9; 111:10c", "hebrew" },
                    { "acclamation", "2CO 8:9" },
                    { "gospel", "MRK 10:17-27" },
                },
            },
        },
        ["ordinary-time-8-saturday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 51:12cd-20" },
                    { "psalm", "PSA 19:8; 19:9; 19:10; 19:11", "hebrew" },
                    { "acclamation", "COL 3:16a; 3:17c" },
                    { "gospel", "MRK 11:27-33" },
                },
                II = {
                    { "first_reading", "JUD 1:17; 1:20b-25" },
                    { "psalm", "PSA 63:2; 63:3-4; 63:5-6", "hebrew" },
                    { "acclamation", "COL 3:16a; 3:17c" },
                    { "gospel", "MRK 11:27-33" },
                },
            },
        },
        ["ordinary-time-8-sunday"] = {
            day = {
                A = {
                    { "first_reading", "ISA 49:14-15" },
                    { "psalm", "PSA 62:2-3; 62:6-7; 62:8-9", "hebrew" },
                    { "second_reading", "1CO 4:1-5" },
                    { "acclamation", "HEB 4:12" },
                    { "gospel", "MAT 6:24-34" },
                },
                B = {
                    { "first_reading", "HOS 2:16b; 2:17b; 2:21-22" },
                    { "psalm", "PSA 103:1-2; 103:3-4; 103:8; 103:10; 103:12-13", "hebrew" },
                    { "second_reading", "2CO 3:1b-6" },
                    { "acclamation", "JAS 1:18" },
                    { "gospel", "MRK 2:18-22" },
                },
                C = {
                    { "first_reading", "SIR 27:4-7" },
                    { "psalm", "PSA 92:2-3; 92:13-14; 92:15-16", "hebrew" },
                    { "second_reading", "1CO 15:54-58" },
                    { "acclamation", "PHP 2:15d; 2:16a" },
                    { "gospel", "LUK 6:39-45" },
                },
            },
        },
        ["ordinary-time-8-thursday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 42:15-25" },
                    { "psalm", "PSA 33:2-3; 33:4-5; 33:6-7; 33:8-9", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "MRK 10:46-52" },
                },
                II = {
                    { "first_reading", "1PE 2:2-5; 2:9-12" },
                    { "psalm", "PSA 100:2; 100:3; 100:4; 100:5", "hebrew" },
                    { "acclamation", "JHN 8:12" },
                    { "gospel", "MRK 10:46-52" },
                },
            },
        },
        ["ordinary-time-8-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 35:1-12" },
                    { "psalm", "PSA 50:5-6; 50:7-8; 50:14; 50:23", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 10:28-31" },
                },
                II = {
                    { "first_reading", "1PE 1:10-16" },
                    { "psalm", "PSA 98:1; 98:2-3ab; 98:3cd-4", "hebrew" },
                    { "acclamation", "MAT 11:25" },
                    { "gospel", "MRK 10:28-31" },
                },
            },
        },
        ["ordinary-time-8-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "SIR 36:1; 36:4-5a; 36:10-17" },
                    { "psalm", "PSA 79:8; 79:9; 79:11; 79:13", "hebrew" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "MRK 10:32-45" },
                },
                II = {
                    { "first_reading", "1PE 1:18-25" },
                    { "psalm", "PSA 147:12-13; 147:14-15; 147:19-20", "hebrew" },
                    { "acclamation", "MRK 10:45" },
                    { "gospel", "MRK 10:32-45" },
                },
            },
        },
        ["ordinary-time-9-friday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 11:5-17" },
                    { "psalm", "PSA 146:1b-2; 146:6c-7; 146:8-9a; 146:9bc-10", "hebrew" },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MRK 12:35-37" },
                },
                II = {
                    { "first_reading", "2TI 3:10-17" },
                    {
                        "psalm",
                        "PSA 119:157; 119:160; 119:161; 119:165; 119:166; 119:168",
                        "hebrew",
                    },
                    { "acclamation", "JHN 14:23" },
                    { "gospel", "MRK 12:35-37" },
                },
            },
        },
        ["ordinary-time-9-monday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 1:3; 2:1a-8" },
                    { "psalm", "PSA 112:1b-2; 112:3b-4; 112:5-6", "hebrew" },
                    { "acclamation", "REV 1:5ab" },
                    { "gospel", "MRK 12:1-12" },
                },
                II = {
                    { "first_reading", "2PE 1:2-7" },
                    { "psalm", "PSA 91:1-2; 91:14-15b; 91:15c-16", "hebrew" },
                    { "acclamation", "REV 1:5ab" },
                    { "gospel", "MRK 12:1-12" },
                },
            },
        },
        ["ordinary-time-9-saturday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 12:1; 12:5-15; 12:20" },
                    { "psalm", "TOB 13:2; 13:6efgh; 13:7; 13:8", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MRK 12:38-44" },
                },
                II = {
                    { "first_reading", "2TI 4:1-8" },
                    { "psalm", "PSA 71:8-9; 71:14-15ab; 71:16-17; 71:22", "hebrew" },
                    { "acclamation", "MAT 5:3" },
                    { "gospel", "MRK 12:38-44" },
                },
            },
        },
        ["ordinary-time-9-sunday"] = {
            day = {
                A = {
                    { "first_reading", "DEU 11:18; 11:26-28; 11:32" },
                    { "psalm", "PSA 31:2-3a; 31:3b-4; 31:17; 31:25", "hebrew" },
                    { "second_reading", "ROM 3:21-25; 3:28" },
                    { "acclamation", "JHN 15:5" },
                    { "gospel", "MAT 7:21-27" },
                },
                B = {
                    { "first_reading", "DEU 5:12-15" },
                    { "psalm", "PSA 81:3-4; 81:5-6; 81:7-8; 81:10-11", "hebrew" },
                    { "second_reading", "2CO 4:6-11" },
                    { "acclamation", "JHN 17:17b; 17:17a" },
                    { "gospel", "MRK 2:23-3:6 | MRK 2:23-28" },
                },
                C = {
                    { "first_reading", "1KI 8:41-43" },
                    { "psalm", "PSA 117:1-2", "hebrew" },
                    { "second_reading", "GAL 1:1-2; 1:6-10" },
                    { "acclamation", "JHN 3:16" },
                    { "gospel", "LUK 7:1-10" },
                },
            },
        },
        ["ordinary-time-9-thursday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 6:10-11; 7:1bcde; 7:9-17; 8:4-9a" },
                    { "psalm", "PSA 128:1-2; 128:3; 128:4-5", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 12:28-34" },
                },
                II = {
                    { "first_reading", "2TI 2:8-15" },
                    { "psalm", "PSA 25:4-5ab; 25:8-9; 25:10; 25:14", "hebrew" },
                    { "acclamation", "2TI 1:10" },
                    { "gospel", "MRK 12:28-34" },
                },
            },
        },
        ["ordinary-time-9-tuesday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 2:9-14" },
                    { "psalm", "PSA 112:1-2; 112:7-8; 112:9", "hebrew" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 12:13-17" },
                },
                II = {
                    { "first_reading", "2PE 3:12-15a; 3:17-18" },
                    { "acclamation", "EPH 1:17-18" },
                    { "gospel", "MRK 12:13-17" },
                },
            },
        },
        ["ordinary-time-9-wednesday"] = {
            day = {
                I = {
                    { "first_reading", "TOB 3:1-11a; 3:16-17a" },
                    { "psalm", "PSA 25:2-3; 25:4-5ab; 25:6; 25:7bc; 25:8-9", "hebrew" },
                    { "acclamation", "JHN 11:25a; 11:26" },
                    { "gospel", "MRK 12:18-27" },
                },
                II = {
                    { "first_reading", "2TI 1:1-3; 1:6-12" },
                    { "psalm", "PSA 123:1b-2ab; 123:2cdef", "hebrew" },
                    { "acclamation", "JHN 11:25a; 11:26" },
                    { "gospel", "MRK 12:18-27" },
                },
            },
        },
        ["palm-sunday"] = {
            day = {
                A = {
                    { "psalm", "PSA 22:8-9; 22:17-18; 22:19-20; 22:23-24", "hebrew" },
                    { "second_reading", "PHP 2:6-11" },
                    { "acclamation", "PHP 2:8-9" },
                    { "gospel", "MAT 26:14-27:66" },
                },
                B = {
                    { "psalm", "PSA 22:8-9; 22:17-18; 22:19-20; 22:23-24", "hebrew" },
                    { "second_reading", "PHP 2:6-11" },
                    { "acclamation", "PHP 2:8-9" },
                    { "gospel", "MRK 14:1-15:47" },
                },
                C = {
                    { "psalm", "PSA 22:8-9; 22:17-18; 22:19-20; 22:23-24", "hebrew" },
                    { "second_reading", "PHP 2:6-11" },
                    { "acclamation", "PHP 2:8-9" },
                    { "gospel", "LUK 22:14-23:56" },
                },
            },
        },
        ["pentecost-sunday"] = {
            day = {
                { "first_reading", "ACT 2:1-11" },
                { "psalm", "PSA 104:1; 104:24; 104:29-30; 104:31; 104:34", "hebrew" },
                { "second_reading", "1CO 12:3b-7; 12:12-13" },
                { "gospel", "JHN 20:19-23" },
            },
            ["extended-vigil"] = {
                { "first_reading", "GEN 11:1-9" },
                { "psalm", "PSA 33:10-11; 33:12-13; 33:14-15", "hebrew" },
                { "second_reading", "EXO 19:3-8a; 19:16-20b" },
                { "psalm_2", "DAN 3:52; 3:53; 3:54; 3:55; 3:56", "hebrew" },
                { "third_reading", "EZK 37:1-14" },
                { "psalm_3", "PSA 107:2-3; 107:4-5; 107:6-7; 107:8-9", "hebrew" },
                { "fourth_reading", "JOL 3:1-5" },
                { "psalm_4", "PSA 104:1-2; 104:24; 104:35; 104:27-28; 104:29-30", "hebrew" },
                { "epistle", "ROM 8:22-27" },
                { "gospel", "JHN 7:37-39" },
            },
            vigil = {
                { "first_reading", "GEN 11:1-9" },
                { "psalm", "PSA 104:1-2; 104:24; 104:35; 104:27-28; 104:29; 104:30", "hebrew" },
                { "second_reading", "ROM 8:22-27" },
                { "gospel", "JHN 7:37-39" },
            },
        },
        ["saturday-after-ash-wednesday"] = {
            day = {
                { "first_reading", "ISA 58:9b-14" },
                { "psalm", "PSA 86:1-2; 86:3-4; 86:5-6", "hebrew" },
                { "acclamation", "EZK 33:11" },
                { "gospel", "LUK 5:27-32" },
            },
        },
        ["thursday-after-ash-wednesday"] = {
            day = {
                { "first_reading", "DEU 30:15-20" },
                { "psalm", "PSA 1:1-2; 1:3; 1:4; 1:6", "hebrew" },
                { "acclamation", "MAT 4:17" },
                { "gospel", "LUK 9:22-25" },
            },
        },
    },
}
