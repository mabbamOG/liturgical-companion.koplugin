-- Calendar of PA: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/pa-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "our-lady-of-guadalupe",
            date = "12-12",
            title = "our-lady-of-guadalupe-patroness-of-the-americas",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
        {
            id = "our-lord-jesus-christ-the-eternal-high-priest",
            date = { fn = "pentecost_sunday", offset = 4 },
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            office = "weekday",
        },
    },
    transfers = {},
}
