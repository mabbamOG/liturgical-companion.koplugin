-- The Lectionary's Commons (Lectionary for Mass, USA, 2002 edition, nos. 701-742): the options
-- of each reading for a celebration that has no readings of its own.
-- Origin: the Lectionary tables at catholic-resources.org (citations only), parsed by
-- tools/curation/usl_lectionary.py.
-- commons[<common>]: options per slot (first_reading_easter: the first reading in Eastertide).
-- categories: the calendars' commons (source/calendars/, romcal's categories) -> the Lectionary's.
-- A feast or solemnity without readings takes the first option of each slot
-- (litcomp/roman1970/lectionary.lua); the other options remain choices.
return {
    categories = {
        abbots = "holy_men_and_women",
        bishops = "pastors",
        blessed_virgin_mary = "blessed_virgin_mary",
        dedication_anniversary__inside = "dedication",
        doctors_of_the_church = "doctors_of_the_church",
        educators = "holy_men_and_women",
        founders_of_a_church = "pastors",
        holy_women = "holy_men_and_women",
        martyrs = "martyrs",
        mercy_workers = "holy_men_and_women",
        missionaries = "pastors",
        missionary_martyrs = "martyrs",
        monks = "holy_men_and_women",
        nuns = "holy_men_and_women",
        pastors = "pastors",
        pope_or_bishop = "pastors",
        religious = "holy_men_and_women",
        saints = "holy_men_and_women",
        virgin_martyrs = "virgins",
        virgins = "virgins",
    },
    commons = {
        blessed_virgin_mary = {
            acclamation = { "LUK 1:28", "LUK 1:45", "LUK 2:19", "LUK 11:28" },
            first_reading = { "GEN 3:9-15; 3:20", "GEN 12:1-7", "2SA 7:1-5; 7:8b-11; 7:16", "1CH 15:3-4; 15:15-16; 16:1-2", "PRO 8:22-31", "SIR 24:1; 24:3-4; 24:8-12; 24:19-21", "ISA 7:10-14", "ISA 9:1-6", "ISA 61:9-11", "MIC 5:1-4a", "ZEC 2:14-17" },
            first_reading_easter = { "ACT 1:12-14", "REV 11:19a; 12:1-6a; 12:10ab", "REV 21:1-5a" },
            gospel = { "MAT 1:1-16; 1:18-23 | MAT 1:18-23", "MAT 2:13-15; 2:19-23", "MAT 12:46-50", "LUK 1:26-38", "LUK 1:39-47", "LUK 2:1-14", "LUK 2:15b-19", "LUK 2:27-35", "LUK 2:41-52", "LUK 11:27-28", "JHN 2:1-11", "JHN 19:25-27" },
            psalm = { "1SA 2:1; 2:4-5; 2:6-7; 2:8abcd", "JDT 13:18bcde; 13:19", "PSA 45:11-12; 45:14-15; 45:16-17", "PSA 113:1-2; 113:3-4; 113:5-6; 113:7-8", "LUK 1:46-47; 1:48-49; 1:50-51; 1:52-53; 1:54-55" },
            second_reading = { "ROM 5:12; 5:17-19", "ROM 8:28-30", "GAL 4:4-7", "EPH 1:3-6; 1:11-12" },
        },
        dedication = {
            acclamation = { "2CH 7:16", "ISA 66:1", "EZK 37:27", "MAT 7:8", "MAT 16:18" },
            first_reading = { "1KI 8:22-23; 8:27-30", "2CH 5:6-10; 5:13-6:2", "ISA 56:1; 56:6-7", "EZK 43:1-2; 43:4-7a", "EZK 47:1-2; 47:8-9; 47:12" },
            first_reading_easter = { "ACT 7:44-50", "REV 21:1-5a", "REV 21:9b-14" },
            gospel = { "MAT 16:13-19", "LUK 19:1-10", "JHN 2:13-22", "JHN 4:19-24" },
            psalm = { "1CH 29:10; 29:11abc; 29:11d-12a; 29:12bcd", "PSA 46:2-3; 46:5-6; 46:8-9", "PSA 84:3; 84:4; 84:5; 84:10; 84:11", "PSA 95:1-2; 95:3-5; 95:6-7", "PSA 122:1-2; 122:3-4; 122:8-9" },
            second_reading = { "1CO 3:9c-11; 3:16-17", "EPH 2:19-22", "HEB 12:18-19; 12:22-24", "1PE 2:4-9" },
        },
        doctors_of_the_church = {
            acclamation = { "MAT 5:16", "MAT 23:9b; 23:10b", "JHN 6:63c; 6:68c", "JHN 15:5", "1CO 1:18", "1CO 2:7" },
            first_reading = { "1KI 3:11-14", "WIS 7:7-10; 7:15-16", "SIR 15:1-6", "SIR 39:6e-10" },
            first_reading_easter = { "ACT 2:14a; 2:22-24; 2:32-36", "ACT 13:26-33" },
            gospel = { "MAT 5:13-16", "MAT 7:21-29", "MAT 13:47-52", "MAT 23:8-12", "MRK 4:1-10; 4:13-20 | MRK 4:1-9", "LUK 6:43-45" },
            psalm = { "PSA 19:8; 19:9; 19:10; 19:11", "PSA 37:3-4; 37:5-6; 37:30-31", "PSA 119:9; 119:10; 119:11; 119:12; 119:13; 119:14" },
            second_reading = { "1CO 1:18-25", "1CO 2:1-10a", "1CO 2:10b-16", "EPH 3:8-12", "EPH 4:1-7; 4:11-13", "2TI 1:13-14; 2:1-3", "2TI 4:1-5" },
        },
        holy_men_and_women = {
            acclamation = { "MAT 5:3", "MAT 5:6", "MAT 5:8", "MAT 11:25", "MAT 11:28", "MAT 23:11; 23:12b", "LUK 21:36", "JHN 8:12", "JHN 8:31b-32", "JHN 13:34", "JHN 14:23", "JHN 15:4; 15:5b", "JHN 15:9b; 15:5b" },
            first_reading = { "GEN 12:1-4a", "LEV 19:1-2; 19:17-18", "DEU 6:3-9", "DEU 10:8-9", "1KI 19:4-9a; 19:11-15a", "1KI 19:16b; 19:19-21", "JDT 8:2-8", "PRO 31:10-13; 31:19-20; 31:30-31", "SIR 2:7-11", "SIR 3:17-24", "SIR 26:1-4; 26:13-16", "ISA 58:6-11", "JER 20:7-9", "MIC 6:6-8", "ZEP 2:3; 3:12-13" },
            first_reading_easter = { "ACT 4:32-35", "REV 3:14b; 3:20-22", "REV 19:1; 19:5-9a", "REV 21:5-7" },
            gospel = { "MAT 5:1-12a", "MAT 5:13-16", "MAT 7:21-27", "MAT 11:25-30", "MAT 13:44-46", "MAT 16:24-27", "MAT 18:1-5", "MAT 19:3-12", "MAT 19:27-29", "MAT 22:34-40", "MAT 25:1-13", "MAT 25:14-30 | MAT 25:14-23", "MAT 25:31-46 | MAT 25:31-40", "MRK 3:31-35", "MRK 9:34-37", "MRK 10:13-16", "MRK 10:17-30", "LUK 6:27-38", "LUK 9:57-62", "LUK 10:38-42", "LUK 12:32-34", "LUK 12:35-40", "LUK 14:25-33", "JHN 15:1-8", "JHN 15:9-17", "JHN 17:20-26" },
            psalm = { "PSA 1:1-2; 1:3; 1:4; 1:6", "PSA 15:2-3ab; 15:3cd-4ab; 15:5", "PSA 16:1-2a; 16:5; 16:7-8; 16:11", "PSA 23:1-3; 23:4; 23:5; 23:6", "PSA 34:2-3; 34:4-5; 34:6-7; 34:8-9; 34:10-11", "PSA 103:1-2; 103:3-4; 103:8-9; 103:13-14; 103:17-18a", "PSA 112:1-2; 112:3-4; 112:5-7a; 112:7b-8; 112:9", "PSA 128:1-2; 128:3; 128:4-5", "PSA 131:1; 131:2; 131:3" },
            second_reading = { "ROM 8:26-30", "1CO 1:26-31", "1CO 12:31-13:13 | 1CO 13:4-13", "2CO 10:17-11:2", "GAL 2:19-20", "GAL 6:14-16", "EPH 3:14-19", "EPH 6:10-13; 6:18", "PHP 3:8-14", "PHP 4:4-9", "COL 3:12-17", "1TI 5:3-10", "JAS 2:14-17", "1PE 3:1-9", "1PE 4:7b-11", "1JN 4:7-16", "1JN 5:1-5" },
        },
        martyrs = {
            acclamation = { "MAT 5:10", "JHN 17:19", "2CO 1:3b-4a", "JAS 1:12", "1PE 4:14" },
            first_reading = { "2CH 24:18-22", "2MA 6:18; 6:21; 6:24-31", "2MA 7:1-2; 7:9-14", "2MA 7:1; 7:20-23; 7:27b-29", "WIS 3:1-9", "SIR 51:1-8" },
            first_reading_easter = { "ACT 7:55-60", "REV 7:9-17", "REV 12:10-12a", "REV 21:5-7" },
            gospel = { "MAT 10:17-22", "MAT 10:28-33", "MAT 10:34-39", "LUK 9:23-26", "JHN 12:24-26", "JHN 15:18-21", "JHN 17:11b-19" },
            psalm = { "PSA 31:3cd-4; 31:6; 31:8ab; 31:16bc; 31:17", "PSA 34:2-3; 34:4-5; 34:6-7; 34:8-9", "PSA 124:2-3; 124:4-5; 124:7b-8", "PSA 126:1-2ab; 126:2cd-3; 126:4-5; 126:6" },
            second_reading = { "ROM 5:1-5", "ROM 8:31b-39", "2CO 4:7-15", "2CO 6:4-10", "2TI 2:8-13; 3:10-12", "HEB 10:32-36", "JAS 1:2-4; 1:12", "1PE 3:14-17", "1PE 4:12-19", "1JN 5:1-5" },
        },
        pastors = {
            acclamation = { "MAT 23:9b; 23:10b", "MAT 28:19a-20b", "MRK 1:17", "LUK 4:18", "JHN 10:14", "JHN 15:5", "JHN 15:15b", "2CO 5:19" },
            first_reading = { "EXO 32:7-14", "DEU 10:8-9", "1SA 16:1b; 16:6-13a", "ISA 6:1-8", "ISA 52:7-10", "ISA 61:1-3a", "JER 1:4-9", "EZK 3:17-21", "EZK 34:11-16" },
            first_reading_easter = { "ACT 13:46-49", "ACT 20:17-18a; 20:28-32; 20:36", "ACT 26:19-23" },
            gospel = { "MAT 9:35-38", "MAT 16:13-19", "MAT 23:8-12", "MAT 28:16-20", "MRK 1:14-20", "MRK 16:15-20", "LUK 5:1-11", "LUK 10:1-9", "LUK 22:24-30", "JHN 10:11-16", "JHN 15:9-17", "JHN 21:15-17" },
            psalm = { "PSA 16:1-2a; 16:5; 16:7-8; 16:11", "PSA 23:1-3; 23:4; 23:5; 23:6", "PSA 40:2; 40:4ab; 40:7-8a; 40:8b-9; 40:10", "PSA 89:2-3; 89:4-5; 89:21-22; 89:25; 89:27", "PSA 96:1-2a; 96:2b-3; 96:7-8a; 96:10", "PSA 106:19-20; 106:21-22; 106:23", "PSA 110:1; 110:2; 110:3; 110:4", "PSA 117:1; 117:2" },
            second_reading = { "ROM 12:3-13", "1CO 1:18-25", "1CO 4:1-5", "1CO 9:16-19; 9:22-23", "2CO 3:1-6a", "2CO 4:1-2; 4:5-7", "2CO 5:14-20", "EPH 4:1-7; 4:11-13", "COL 1:24-29", "1TH 2:2b-8", "2TI 1:13-14; 2:1-3", "2TI 4:1-5", "1PE 5:1-4" },
        },
        virgins = {
            acclamation = { "JHN 14:23" },
            first_reading = { "SNG 8:6-7", "HOS 2:16b; 2:17b; 2:21-22" },
            first_reading_easter = { "REV 19:1; 19:5-9a", "REV 21:1-5a" },
            gospel = { "MAT 19:3-12", "MAT 25:1-13", "LUK 10:38-42" },
            psalm = { "PSA 45:11-12; 45:14-15; 45:16-17", "PSA 148:1-2; 148:11-12; 148:13-14" },
            second_reading = { "1CO 7:25-35", "2CO 10:17-11:2" },
        },
    },
}
