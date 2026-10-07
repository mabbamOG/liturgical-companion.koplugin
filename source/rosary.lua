-- The Rosary: its four sets of mysteries and the set prayed on each day.
-- Origin: vatican.va, The Holy Rosary (raw-public/prayers/vatican-rosary/):
-- the mysteries, their order and their Scripture passages, and the weekdays
-- of Rosarium Virginis Mariae, 38 (2002). The traditional scheme (fifteen
-- mysteries) is the customary one before 2002: Joyful on Monday and Thursday,
-- Sorrowful on Tuesday and Friday, Glorious on Wednesday and Saturday; on
-- Sundays, Joyful from Advent until Lent, Sorrowful in Lent, Glorious from
-- Easter until Advent.
-- sets[<id>]: { id, mysteries = { { id, citation }... } }; titles are the tags
-- rosary.<set id> and rosary.<mystery id>.
return {
    sets = {
        joyful = {
            id = "joyful",
            mysteries = {
                { id = "annunciation", citation = "LUK 1:26-27" },
                { id = "visitation", citation = "LUK 1:39-42" },
                { id = "nativity", citation = "LUK 2:1-7" },
                { id = "presentation", citation = "LUK 2:21-24" },
                { id = "finding-in-the-temple", citation = "LUK 2:41-47" },
            },
        },
        luminous = {
            id = "luminous",
            mysteries = {
                { id = "baptism-in-the-jordan", citation = "MAT 3:16-17" },
                { id = "wedding-at-cana", citation = "JHN 2:1-5" },
                { id = "proclamation-of-the-kingdom", citation = "MRK 1:15" },
                { id = "transfiguration", citation = "MAT 17:1-2" },
                { id = "institution-of-the-eucharist", citation = "MAT 26:26" },
            },
        },
        sorrowful = {
            id = "sorrowful",
            mysteries = {
                { id = "agony-in-the-garden", citation = "MAT 26:36-39" },
                { id = "scourging-at-the-pillar", citation = "MAT 27:26" },
                { id = "crowning-with-thorns", citation = "MAT 27:27-29" },
                { id = "carrying-of-the-cross", citation = "MRK 15:21-22" },
                { id = "crucifixion", citation = "LUK 23:33-46" },
            },
        },
        glorious = {
            id = "glorious",
            mysteries = {
                { id = "resurrection", citation = "LUK 24:1-5" },
                { id = "ascension", citation = "MRK 16:19" },
                { id = "descent-of-the-holy-spirit", citation = "ACT 2:1-4" },
                { id = "assumption", citation = "LUK 1:48-49" },
                { id = "coronation-of-mary", citation = "REV 12:1" },
            },
        },
    },
    -- The set for each weekday (ISO: 1 Monday ... 7 Sunday).
    schemes = {
        luminous = { "joyful", "sorrowful", "glorious", "luminous", "sorrowful", "joyful", "glorious" },
        traditional = { "joyful", "sorrowful", "glorious", "joyful", "sorrowful", "glorious", "glorious" },
    },
}
