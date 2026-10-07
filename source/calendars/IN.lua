-- Calendar of IN: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/in-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "kuriakose-elias-of-the-holy-family-chavara-priest",
            date = "01-03",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "joseph-vaz-priest",
            date = "01-16",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "john-de-britto-priest",
            date = "02-04",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "martyrs" },
        },
        {
            id = "gundisalvus-garcia-martyr",
            date = "02-06",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
        },
        {
            id = "mary-theresa-chiramel-mankidiyan-virgin",
            date = "06-08",
            rank = "optional_memorial",
            precedence = 12,
            colors = { "white" },
        },
        {
            id = "thomas-apostle",
            date = "07-03",
            rank = "solemnity",
            precedence = 4,
            colors = { "red" },
            saints = { "thomas-apostle" },
        },
        {
            id = "alphonsa-of-the-immaculate-conception-muttathupadathu-virgin",
            date = "07-28",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "virgins" },
        },
        {
            id = "francis-xavier-priest",
            date = "12-03",
            rank = "solemnity",
            precedence = 4,
            colors = { "white" },
            saints = { "francis-xavier-priest" },
        },
    },
    transfers = {},
}
