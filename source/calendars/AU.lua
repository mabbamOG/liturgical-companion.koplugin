-- Calendar of AU: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/au-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "patrick-of-ireland-bishop",
            date = "03-17",
            rank = "solemnity",
            precedence = 4,
            colors = { "white" },
            commons = { "missionaries", "bishops" },
            saints = { "patrick-of-ireland-bishop" },
        },
        {
            id = "louis-grignion-de-montfort-priest",
            date = "04-27",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
            commons = { "pastors" },
            saints = { "louis-grignion-de-montfort-priest" },
        },
        {
            id = "peter-chanel-priest",
            date = "04-28",
            title = "peter-chanel-priest-patron-of-oceania",
            rank = "memorial",
            precedence = 11,
            colors = { "red" },
            commons = { "martyrs", "missionaries" },
            saints = { "peter-chanel-priest" },
        },
        {
            id = "our-lady-help-of-christians",
            date = "05-24",
            rank = "solemnity",
            precedence = 4,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
        {
            id = "peter-to-rot-martyr",
            date = "07-07",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "mary-of-the-cross-mackillop-virgin",
            date = "08-08",
            rank = "solemnity",
            precedence = 4,
            colors = { "white" },
            commons = { "virgins" },
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
