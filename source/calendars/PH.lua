-- Calendar of PH: changes to the General Roman Calendar.
-- Origin: romcal @ 30344b3 (MIT), normalized in parked/epub/data/calendars/ph-overlay.json;
-- transfers also from parked/epub/data/calendars/transfer-decisions.json.
-- transfers: solemnities moved to Sunday (epiphany, ascension, corpus_christi).
-- celebrations: added, or replacing the general celebration with the same id; title: the
-- calendar's own title for it (tag celebration.<title>), e.g. "..., Patron of Europe".
return {
    celebrations = {
        {
            id = "peter-baptist-blasquez-paul-miki-and-companions-martyrs",
            date = "02-06",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            saints = { "peter-baptist-blasquez-martyr", "paul-miki-martyr", "companions-martyrs" },
        },
        {
            id = "pedro-calungsod-martyr",
            date = "04-02",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "martyrs" },
            exceptions = {
                {
                    move = { fn = "palm_sunday", offset = -1 },
                    when = { between = { "palm_sunday", "divine_mercy_sunday" }, inclusive = true },
                },
                { move = { fn = "palm_sunday", offset = -1 }, when = { weekday = "sunday" } },
            },
        },
        {
            id = "isidore-the-farmer",
            date = "05-15",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "saints" },
        },
        {
            id = "roch-of-montpellier",
            date = "08-16",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "saints" },
        },
        {
            id = "ezequiel-moreno-bishop",
            date = "08-19",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "bishops" },
        },
        {
            id = "rose-of-lima-virgin",
            date = "08-23",
            title = "rose-of-lima-virgin-copatroness-of-the-philippines",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "virgins" },
            saints = { "rose-of-lima-virgin" },
        },
        {
            id = "lawrence-ruiz-and-companions-martyrs",
            date = "09-28",
            rank = "memorial",
            precedence = 11,
            colors = { "red" },
            commons = { "martyrs" },
            plural = true,
            saints = { "lawrence-ruiz-martyr", "companions-martyrs" },
        },
        {
            id = "immaculate-conception-of-the-blessed-virgin-mary",
            date = "12-08",
            title = "immaculate-conception-of-the-blessed-virgin-mary-patroness-of-the-philippines",
            rank = "solemnity",
            precedence = 4,
            colors = { "white" },
            obligation = true,
        },
        {
            id = "our-lady-of-guadalupe",
            date = "12-12",
            title = "our-lady-of-guadalupe-patroness-of-the-philippines",
            rank = "memorial",
            precedence = 11,
            colors = { "white" },
            commons = { "blessed_virgin_mary" },
        },
        {
            id = "holy-child-of-cebu",
            date = { month = 1, nth = 3, weekday = "sunday" },
            rank = "feast",
            precedence = 8,
            colors = { "white" },
        },
    },
    transfers = {},
}
