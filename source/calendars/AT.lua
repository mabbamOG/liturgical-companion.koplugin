-- Calendar of AT: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/at-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "cyril-constantine-the-philosopher-monk-and-methodius-michael-of-thessaloniki-bishop",
            date = "02-14",
            title = "cyril-constantine-the-philosopher-monk-and-methodius-michael-of-thessaloniki-bishop-copatrons-of-europe",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            saints = {
                "cyril-constantine-the-philosopher-monk",
                "methodius-michael-of-thessaloniki-bishop",
            },
        },
        {
            id = "catherine-of-siena-virgin",
            date = "04-29",
            title = "catherine-of-siena-virgin-copatroness-of-europe",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            saints = { "catherine-of-siena-virgin" },
        },
        {
            id = "john-nepomucene-priest",
            date = "05-16",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "martyrs" },
        },
        {
            id = "benedict-of-nursia-abbot",
            date = "07-11",
            title = "benedict-of-nursia-abbot-patron-of-europe",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            saints = { "benedict-of-nursia-abbot" },
        },
        {
            id = "bridget-of-sweden-religious",
            date = "07-23",
            title = "bridget-of-sweden-religious-copatroness-of-europe",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            commons = { "holy_women", "religious" },
            saints = { "bridget-of-sweden-religious" },
        },
        {
            id = "teresa-benedicta-of-the-cross-stein-virgin",
            date = "08-09",
            title = "teresa-benedicta-of-the-cross-stein-virgin-copatroness-of-europe",
            rank = "feast",
            precedence = 8,
            colors = { "red" },
            commons = { "martyrs", "virgins" },
            saints = { "teresa-benedicta-of-the-cross-stein-virgin" },
        },
        {
            id = "charles-i-of-austria",
            date = "10-21",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
    },
    transfers = {},
}
