-- Known gaps in the source data: what is missing, and why it has not been
-- filled. tools/lua/sweep.lua reports these apart and fails on any other gap.
-- An entry with a gap still has every element; the missing value shows as "—".
return {
    -- Mass readings, by celebration id.
    readings = {},
    -- Office of Readings, by the day's celebration id.
    office = {},
}
