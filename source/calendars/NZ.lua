-- Calendar of NZ: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/nz-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "waitangi-day",
            date = "02-06",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            office = "weekday",
            readings = "weekday",
        },
        {
            id = "paul-miki-and-companions-martyrs",
            date = "02-07",
            rank = "memorial",
            precedence = 10,
            colors = { "red" },
            commons = { "martyrs" },
            plural = true,
            saints = { "paul-miki-martyr", "companions-martyrs" },
        },
        {
            id = "patrick-of-ireland-bishop",
            date = "03-17",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            commons = { "missionaries", "bishops" },
            saints = { "patrick-of-ireland-bishop" },
        },
        {
            id = "mark-evangelist",
            date = "04-26",
            rank = "feast",
            precedence = 8,
            colors = { "red" },
            saints = { "mark-evangelist" },
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
            rank = "feast",
            precedence = 8,
            colors = { "red" },
            commons = { "martyrs", "missionaries" },
            saints = { "peter-chanel-priest" },
        },
        {
            id = "our-lady-help-of-christians",
            date = "05-24",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
        {
            id = "marcellin-champagnat-priest",
            date = "06-06",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "dominic-de-guzman-priest",
            date = "08-07",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
            saints = { "dominic-de-guzman-priest" },
        },
        {
            id = "mary-of-the-cross-mackillop-virgin",
            date = "08-08",
            rank = "feast",
            precedence = 8,
            colors = { "white" },
            commons = { "virgins" },
        },
    },
    transfers = {},
}
