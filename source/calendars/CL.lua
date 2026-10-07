-- Calendar of CL: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/cl-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "laura-vicuna-virgin",
            date = "01-22",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "pius-ix-pope",
            date = "02-07",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "our-lady-of-lourdes",
            date = "02-11",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
        {
            id = "philip-and-james-apostles",
            date = "05-04",
            rank = "feast",
            precedence = 7,
            colors = { "red" },
            saints = { "philip-apostle", "james-apostle" },
        },
        {
            id = "teresa-of-jesus-of-los-andes-virgin",
            date = "07-13",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            commons = { "virgins" },
        },
        {
            id = "henry-ii-emperor",
            date = "07-14",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
            commons = { "saints" },
            saints = { "henry-ii-emperor" },
        },
        {
            id = "our-lady-of-mount-carmel",
            date = "07-16",
            title = "our-lady-of-mount-carmel-mother-and-queen-of-chile",
            rank = "solemnity",
            precedence = 4,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
        {
            id = "alberto-hurtado-priest",
            date = "08-18",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "pastors" },
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
            id = "our-lady-of-mercy",
            date = "09-24",
            rank = "optional_memorial",
            precedence = 12,
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
