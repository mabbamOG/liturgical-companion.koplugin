-- Calendar of PR: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/pr-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "our-lady-of-bethlehem",
            date = "01-03",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "marydolores-rodriguez-sopena-virgin",
            date = "01-10",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "carlos-manuel-rodriguez-santiago",
            date = "05-04",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "our-lady-of-mount-carmel",
            date = "07-16",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
        {
            id = "teresa-of-jesus-jornet-ibars-virgin",
            date = "08-26",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
            commons = { "virgins" },
        },
        {
            id = "rose-of-lima-virgin",
            date = "08-30",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            commons = { "virgins" },
            saints = { "rose-of-lima-virgin" },
        },
        {
            id = "charles-spinola-and-jerome-de-angelis-priests",
            date = "09-10",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
            saints = { "charles-spinola-priest", "jerome-de-angelis-priest" },
        },
        {
            id = "mary-soledad-torres-acosta-virgin",
            date = "10-11",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "our-lady-mother-of-divine-providence",
            date = "11-19",
            rank = "solemnity",
            precedence = 4,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
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
