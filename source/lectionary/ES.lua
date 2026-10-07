-- Lectionary for Mass (Missal of Paul VI): the Spanish edition (CEE), where the
-- other tables lack a celebration. Greek/Vulgate psalm numbering, as printed.
-- Origin: the daily readings of dominicos.org (Orden de Predicadores, Spain),
-- 2015-2025, which print the Leccionario's citations; curated by hand on 2026-10-02.
-- temporal[<day key>][<Mass kind>] and celebration[<celebration id>][<Mass kind>] hold a
-- reading set, or reading sets by cycle: A/B/C (Sundays), I/II (weekdays) or "A|I"...
-- A reading is { slot, citation[, psalm numbering] }; see litcomp/core/citation.lua.
return {
    celebration = {
        -- Thursday after Pentecost, in the national propers of Spain, Latin America,
        -- Poland, China and Australia; the Spanish Leccionario gives a set per
        -- Sunday cycle (seen 2017/2020/2023, 2018/2021/2024, 2019/2022/2025).
        -- Other editions may differ: a Mexican booklet of 2026 prints
        -- Isa 52:13-53:12, Ps 39 (40), Luke 22:14-20.
        ["our-lord-jesus-christ-the-eternal-high-priest"] = {
            day = {
                A = {
                    { "first_reading", "GEN 22:9-18" },
                    { "psalm", "PSA 39:7-8a; 39:8b-9; 39:10-11ab; 39:17", "greek_vulgate" },
                    { "gospel", "MAT 26:36-42" },
                },
                B = {
                    { "first_reading", "JER 31:31-34" },
                    { "psalm", "PSA 109:1; 109:2; 109:3; 109:4", "greek_vulgate" },
                    { "gospel", "MRK 14:12a; 14:22-25" },
                },
                C = {
                    { "first_reading", "ISA 6:1-4; 6:8" },
                    { "psalm", "PSA 22:2-3; 22:5; 22:6", "greek_vulgate" },
                    { "gospel", "JHN 17:1-2; 17:9; 17:14-26" },
                },
            },
        },
    },
}
