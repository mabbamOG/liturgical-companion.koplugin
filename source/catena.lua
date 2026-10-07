-- Catena Aurea (Thomas Aquinas): the chain of Fathers commenting each Gospel passage.
-- Origin: the Oxford translation (1841-1845), selections in parked/epub/data/commentaries/selections/;
-- exported by parked/epub/migrate/catena.py. passages[<Gospel citation>]: the chain for
-- Sundays and solemnities (solemn) and for weekdays (weekday): the authors quoted
-- (tags author.<id>) and the number of segments.
return {
    passages = {
        ["JHN 10:1-10"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "gregory-the-great" },
                segments = 5,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "alcuin" },
                segments = 5,
            },
        },
        ["JHN 10:11-18"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "gregory-the-great",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
            weekday = { authors = { "augustine-of-hippo", "gregory-the-great" }, segments = 2 },
        },
        ["JHN 10:22-30"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "alcuin",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                },
                segments = 12,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "alcuin",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                },
                segments = 8,
            },
        },
        ["JHN 10:31-42"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "hilary-of-poitiers",
                    "theophylact-of-ohrid",
                    "alcuin",
                    "bede-the-venerable",
                    "john-chrysostom",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "hilary-of-poitiers",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["JHN 11:1-45"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "alcuin",
                    "john-chrysostom",
                    "augustine-of-hippo",
                },
                segments = 9,
            },
            weekday = {
                authors = { "bede-the-venerable", "alcuin", "john-chrysostom" },
                segments = 3,
            },
        },
        ["JHN 11:19-27"] = {
            solemn = {
                authors = {
                    "alcuin",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "alcuin",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["JHN 11:45-56"] = {
            solemn = {
                authors = {
                    "alcuin",
                    "origen",
                    "hilary-of-poitiers",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "alcuin",
                    "hilary-of-poitiers",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "origen",
                },
                segments = 5,
            },
        },
        ["JHN 12:1-11"] = {
            solemn = {
                authors = {
                    "alcuin",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = { authors = { "alcuin", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["JHN 12:20-33"] = {
            solemn = {
                authors = { "bede-the-venerable", "john-chrysostom", "augustine-of-hippo" },
                segments = 6,
            },
            weekday = { authors = { "bede-the-venerable", "john-chrysostom" }, segments = 4 },
        },
        ["JHN 12:24-26"] = {
            solemn = {
                authors = { "bede-the-venerable", "john-chrysostom", "augustine-of-hippo" },
                segments = 5,
            },
            weekday = {
                authors = { "bede-the-venerable", "john-chrysostom", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["JHN 12:44-50"] = {
            solemn = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 3 },
            weekday = { authors = { "john-chrysostom" }, segments = 2 },
        },
        ["JHN 13:1-15"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "origen",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "origen",
                    "augustine-of-hippo",
                },
                segments = 4,
            },
        },
        ["JHN 13:16-20"] = {
            solemn = {
                authors = { "augustine-of-hippo", "origen", "alcuin", "john-chrysostom" },
                segments = 6,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "origen",
                    "alcuin",
                    "john-chrysostom",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["JHN 13:21-33"] = {
            solemn = {
                authors = { "john-chrysostom", "origen", "augustine-of-hippo" },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "origen" }, segments = 4 },
        },
        ["JHN 13:36-38"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "bede-the-venerable" },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["JHN 14:1-12"] = {
            solemn = {
                authors = { "augustine-of-hippo", "john-chrysostom", "hilary-of-poitiers" },
                segments = 6,
            },
            weekday = { authors = { "augustine-of-hippo", "john-chrysostom" }, segments = 4 },
        },
        ["JHN 14:1-6"] = {
            solemn = {
                authors = { "augustine-of-hippo", "john-chrysostom", "gregory-the-great" },
                segments = 6,
            },
            weekday = { authors = { "augustine-of-hippo", "john-chrysostom" }, segments = 3 },
        },
        ["JHN 14:15-21"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "alcuin",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 2 },
        },
        ["JHN 14:21-26"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                },
                segments = 7,
            },
            weekday = { authors = { "augustine-of-hippo", "theophylact-of-ohrid" }, segments = 3 },
        },
        ["JHN 14:27-31"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "john-chrysostom",
                    "hilary-of-poitiers",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "john-chrysostom",
                    "hilary-of-poitiers",
                },
                segments = 4,
            },
        },
        ["JHN 14:27-31a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["JHN 14:6-14"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "hilary-of-poitiers" },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 4 },
        },
        ["JHN 14:7-14"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "hilary-of-poitiers" },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 4 },
        },
        ["JHN 15:1-8"] = {
            solemn = {
                authors = {
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "alcuin",
                    "theophylact-of-ohrid",
                },
                segments = 8,
            },
            weekday = { authors = { "hilary-of-poitiers", "john-chrysostom" }, segments = 5 },
        },
        ["JHN 15:12-17"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "glossa-ordinaria",
                },
                segments = 6,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "gregory-the-great", "augustine-of-hippo" },
                segments = 3,
            },
        },
        ["JHN 15:18-21"] = {
            solemn = {
                authors = { "augustine-of-hippo", "john-chrysostom", "gregory-the-great" },
                segments = 6,
            },
            weekday = {
                authors = { "augustine-of-hippo", "john-chrysostom", "glossa-ordinaria" },
                segments = 3,
            },
        },
        ["JHN 15:26-16:4"] = {
            solemn = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 5 },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 3 },
        },
        ["JHN 15:26-16:4a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["JHN 15:9-11"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "alcuin",
                },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "theophylact-of-ohrid", "alcuin" },
                segments = 4,
            },
        },
        ["JHN 15:9-17"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "alcuin",
                    "gregory-the-great",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "theophylact-of-ohrid", "augustine-of-hippo" },
                segments = 3,
            },
        },
        ["JHN 16:12-15"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "didymus-the-blind",
                    "john-chrysostom",
                    "augustine-of-hippo",
                },
                segments = 5,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "didymus-the-blind", "john-chrysostom" },
                segments = 3,
            },
        },
        ["JHN 16:20-23"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "alcuin",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "alcuin",
                    "augustine-of-hippo",
                },
                segments = 5,
            },
        },
        ["JHN 16:23-28"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "theophylact-of-ohrid" },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "theophylact-of-ohrid" },
                segments = 5,
            },
        },
        ["JHN 16:23b-28"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["JHN 16:29-33"] = {
            solemn = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 7 },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 4 },
        },
        ["JHN 16:5-11"] = {
            solemn = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 4 },
            weekday = { authors = { "john-chrysostom", "gregory-the-great" }, segments = 3 },
        },
        ["JHN 17:1-11"] = {
            solemn = {
                authors = { "john-chrysostom", "bede-the-venerable", "augustine-of-hippo" },
                segments = 10,
            },
            weekday = { authors = { "john-chrysostom", "bede-the-venerable" }, segments = 5 },
        },
        ["JHN 17:1-11a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["JHN 17:11-19"] = {
            solemn = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 6 },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 3 },
        },
        ["JHN 17:11b-19"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["JHN 17:20-26"] = {
            solemn = {
                authors = { "augustine-of-hippo", "john-chrysostom", "gregory-the-great" },
                segments = 6,
            },
            weekday = {
                authors = { "augustine-of-hippo", "john-chrysostom", "gregory-the-great" },
                segments = 4,
            },
        },
        ["JHN 18:1-19:42"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                },
                segments = 8,
            },
            weekday = {
                authors = { "augustine-of-hippo", "glossa-ordinaria", "john-chrysostom" },
                segments = 4,
            },
        },
        ["JHN 18:33-37"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "alcuin",
                    "augustine-of-hippo",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "alcuin",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
        },
        ["JHN 19:25-27"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "ambrose-of-milan", "john-chrysostom" },
                segments = 3,
            },
            weekday = {
                authors = {
                    "theophylact-of-ohrid",
                    "jerome",
                    "john-chrysostom",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["JHN 19:25-34"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "jerome",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                },
                segments = 9,
            },
            weekday = { authors = { "theophylact-of-ohrid", "augustine-of-hippo" }, segments = 3 },
        },
        ["JHN 19:31-37"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "jerome",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "jerome",
                },
                segments = 6,
            },
        },
        ["JHN 1:1-18"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "hilary-of-poitiers",
                    "alcuin",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "hilary-of-poitiers",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 4,
            },
        },
        ["JHN 1:19-28"] = {
            solemn = {
                authors = { "origen", "theophylact-of-ohrid", "john-chrysostom" },
                segments = 5,
            },
            weekday = { authors = { "origen", "augustine-of-hippo" }, segments = 3 },
        },
        ["JHN 1:29-34"] = {
            solemn = {
                authors = { "origen", "augustine-of-hippo", "john-chrysostom" },
                segments = 4,
            },
            weekday = { authors = { "origen", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["JHN 1:35-42"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "alcuin",
                    "origen",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "alcuin",
                },
                segments = 6,
            },
        },
        ["JHN 1:43-51"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "alcuin",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "theophylact-of-ohrid" }, segments = 4 },
        },
        ["JHN 1:45-51"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "alcuin",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "theophylact-of-ohrid" }, segments = 4 },
        },
        ["JHN 1:47-51"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                },
                segments = 5,
            },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 2 },
        },
        ["JHN 1:6-8"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 9,
            },
            weekday = {
                authors = { "augustine-of-hippo", "theophylact-of-ohrid", "alcuin" },
                segments = 6,
            },
        },
        ["JHN 20:1-2"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                    "glossa-ordinaria",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["JHN 20:1-9"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                    "glossa-ordinaria",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["JHN 20:11-18"] = {
            solemn = {
                authors = { "gregory-the-great", "augustine-of-hippo", "john-chrysostom" },
                segments = 10,
            },
            weekday = {
                authors = { "gregory-the-great", "augustine-of-hippo", "john-chrysostom" },
                segments = 6,
            },
        },
        ["JHN 20:19-23"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "gregory-the-great",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                },
                segments = 4,
            },
        },
        ["JHN 20:19-31"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "gregory-the-great",
                },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom" }, segments = 2 },
        },
        ["JHN 20:2-8"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                    "glossa-ordinaria",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["JHN 20:24-29"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "gregory-the-great",
                },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom" }, segments = 2 },
        },
        ["JHN 21:1-14"] = {
            solemn = {
                authors = { "augustine-of-hippo", "john-chrysostom", "bede-the-venerable" },
                segments = 8,
            },
            weekday = {
                authors = { "augustine-of-hippo", "john-chrysostom", "bede-the-venerable" },
                segments = 5,
            },
        },
        ["JHN 21:15-19"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "origen",
                },
                segments = 9,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "augustine-of-hippo", "john-chrysostom" },
                segments = 4,
            },
        },
        ["JHN 21:20-25"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "glossa-ordinaria",
                    "john-chrysostom",
                },
                segments = 5,
            },
            weekday = {
                authors = { "augustine-of-hippo", "theophylact-of-ohrid", "john-chrysostom" },
                segments = 3,
            },
        },
        ["JHN 2:13-22"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "alcuin",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["JHN 2:13-25"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["JHN 3:1-8"] = {
            solemn = {
                authors = { "augustine-of-hippo", "bede-the-venerable", "john-chrysostom" },
                segments = 6,
            },
            weekday = { authors = { "augustine-of-hippo", "john-chrysostom" }, segments = 3 },
        },
        ["JHN 3:13-17"] = {
            solemn = {
                authors = { "augustine-of-hippo", "gregory-the-great", "john-chrysostom" },
                segments = 4,
            },
            weekday = {
                authors = { "augustine-of-hippo", "john-chrysostom", "alcuin" },
                segments = 3,
            },
        },
        ["JHN 3:14-21"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "hilary-of-poitiers",
                    "alcuin",
                },
                segments = 5,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "hilary-of-poitiers",
                    "alcuin",
                },
                segments = 4,
            },
        },
        ["JHN 3:16-18"] = {
            solemn = {
                authors = { "john-chrysostom", "hilary-of-poitiers", "bede-the-venerable" },
                segments = 3,
            },
            weekday = {
                authors = { "hilary-of-poitiers", "bede-the-venerable", "alcuin" },
                segments = 3,
            },
        },
        ["JHN 3:16-21"] = {
            solemn = {
                authors = { "john-chrysostom", "hilary-of-poitiers", "alcuin" },
                segments = 4,
            },
            weekday = {
                authors = { "hilary-of-poitiers", "alcuin", "bede-the-venerable" },
                segments = 5,
            },
        },
        ["JHN 3:22-30"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "alcuin",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "bede-the-venerable", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["JHN 3:31-36"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "alcuin",
                    "augustine-of-hippo",
                },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "theophylact-of-ohrid" }, segments = 3 },
        },
        ["JHN 3:7-15"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "haymo-of-halberstadt",
                    "augustine-of-hippo",
                },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "haymo-of-halberstadt", "gregory-the-great" },
                segments = 3,
            },
        },
        ["JHN 3:7b-15"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["JHN 4:43-54"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "origen",
                },
                segments = 9,
            },
            weekday = { authors = { "augustine-of-hippo", "john-chrysostom" }, segments = 4 },
        },
        ["JHN 4:5-42"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "augustine-of-hippo" },
                segments = 9,
            },
            weekday = { authors = { "glossa-ordinaria", "john-chrysostom" }, segments = 4 },
        },
        ["JHN 5:1-16"] = {
            solemn = {
                authors = { "augustine-of-hippo", "john-chrysostom", "alcuin" },
                segments = 8,
            },
            weekday = {
                authors = { "augustine-of-hippo", "john-chrysostom", "alcuin" },
                segments = 5,
            },
        },
        ["JHN 5:17-30"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "glossa-ordinaria",
                },
                segments = 5,
            },
            weekday = {
                authors = { "john-chrysostom", "hilary-of-poitiers", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["JHN 5:31-47"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "alcuin" },
                segments = 4,
            },
            weekday = { authors = { "john-chrysostom", "bede-the-venerable" }, segments = 2 },
        },
        ["JHN 6:1-15"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "alcuin",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = { authors = { "john-chrysostom", "bede-the-venerable" }, segments = 2 },
        },
        ["JHN 6:16-21"] = {
            solemn = {
                authors = { "bede-the-venerable", "augustine-of-hippo", "john-chrysostom" },
                segments = 5,
            },
            weekday = { authors = { "bede-the-venerable", "augustine-of-hippo" }, segments = 3 },
        },
        ["JHN 6:22-29"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "alcuin", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["JHN 6:24-35"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "alcuin",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "alcuin", "augustine-of-hippo" },
                segments = 3,
            },
        },
        ["JHN 6:30-35"] = {
            solemn = {
                authors = {
                    "alcuin",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "alcuin",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                },
                segments = 4,
            },
        },
        ["JHN 6:35-40"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 9,
            },
            weekday = {
                authors = { "john-chrysostom", "theophylact-of-ohrid", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["JHN 6:37-40"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 9,
            },
            weekday = {
                authors = { "john-chrysostom", "theophylact-of-ohrid", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["JHN 6:41-51"] = {
            solemn = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 7 },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 3 },
        },
        ["JHN 6:44-51"] = {
            solemn = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 7 },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 3 },
        },
        ["JHN 6:51-58"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 11,
            },
            weekday = {
                authors = { "augustine-of-hippo", "john-chrysostom", "bede-the-venerable" },
                segments = 5,
            },
        },
        ["JHN 6:52-59"] = {
            solemn = {
                authors = { "augustine-of-hippo", "bede-the-venerable", "john-chrysostom" },
                segments = 7,
            },
            weekday = {
                authors = { "augustine-of-hippo", "bede-the-venerable", "john-chrysostom" },
                segments = 5,
            },
        },
        ["JHN 6:60-69"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "alcuin",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "alcuin",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["JHN 7:1-2"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                },
                segments = 9,
            },
            weekday = {
                authors = { "augustine-of-hippo", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["JHN 7:10"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "alcuin",
                    "bede-the-venerable",
                },
                segments = 4,
            },
        },
        ["JHN 7:25-30"] = {
            solemn = { authors = { "augustine-of-hippo", "john-chrysostom" }, segments = 6 },
            weekday = { authors = { "augustine-of-hippo", "john-chrysostom" }, segments = 2 },
        },
        ["JHN 7:37-39"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "jerome",
                    "gregory-the-great",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "jerome",
                },
                segments = 6,
            },
        },
        ["JHN 7:40-53"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "alcuin",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "augustine-of-hippo", "theophylact-of-ohrid", "alcuin" },
                segments = 4,
            },
        },
        ["JHN 8:1-11"] = {
            solemn = {
                authors = {
                    "alcuin",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "glossa-ordinaria",
                },
                segments = 7,
            },
            weekday = {
                authors = { "alcuin", "augustine-of-hippo", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["JHN 8:21-30"] = {
            solemn = { authors = { "augustine-of-hippo", "john-chrysostom" }, segments = 3 },
            weekday = {
                authors = { "augustine-of-hippo", "bede-the-venerable", "john-chrysostom" },
                segments = 5,
            },
        },
        ["JHN 8:31-42"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "theophylact-of-ohrid" },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "theophylact-of-ohrid" },
                segments = 5,
            },
        },
        ["JHN 8:51-59"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "origen",
                    "alcuin",
                    "gregory-the-great",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                },
                segments = 9,
            },
            weekday = {
                authors = { "john-chrysostom", "origen", "gregory-the-great" },
                segments = 4,
            },
        },
        ["JHN 9:1-41"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "theophylact-of-ohrid" },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 4 },
        },
        ["LUK 10:1-12"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "isidore-of-pelusium",
                    "ambrose-of-milan",
                },
                segments = 9,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "john-chrysostom" },
                segments = 4,
            },
        },
        ["LUK 10:1-9"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "isidore-of-pelusium",
                    "ambrose-of-milan",
                },
                segments = 9,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "john-chrysostom" },
                segments = 4,
            },
        },
        ["LUK 10:17-24"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "gregory-the-great",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = { authors = { "cyril-of-alexandria", "theophylact-of-ohrid" }, segments = 3 },
        },
        ["LUK 10:21-24"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "cyril-of-alexandria", "bede-the-venerable" },
                segments = 7,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "cyril-of-alexandria", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["LUK 10:25-37"] = {
            solemn = {
                authors = { "bede-the-venerable", "cyril-of-alexandria", "ambrose-of-milan" },
                segments = 5,
            },
            weekday = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "cyril-of-alexandria" },
                segments = 3,
            },
        },
        ["LUK 10:38-42"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "origen",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "basil-the-great",
                    "ambrose-of-milan",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "bede-the-venerable",
                    "origen",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "basil-the-great",
                },
                segments = 5,
            },
        },
        ["LUK 11:1-4"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "origen",
                    "gregory-of-nyssa",
                    "basil-the-great",
                },
                segments = 6,
            },
            weekday = {
                authors = { "bede-the-venerable", "cyril-of-alexandria", "gregory-of-nyssa" },
                segments = 3,
            },
        },
        ["LUK 11:14-23"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "titus-of-bostra",
                    "john-chrysostom",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["LUK 11:15-26"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "bede-the-venerable",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                    "origen",
                },
                segments = 5,
            },
        },
        ["LUK 11:27-28"] = {
            solemn = { authors = { "bede-the-venerable", "john-chrysostom" }, segments = 2 },
            weekday = { authors = { "john-chrysostom", "bede-the-venerable" }, segments = 2 },
        },
        ["LUK 11:29-32"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "basil-the-great",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
            weekday = { authors = { "bede-the-venerable", "ambrose-of-milan" }, segments = 3 },
        },
        ["LUK 11:37-41"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["LUK 11:42-46"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                },
                segments = 9,
            },
            weekday = { authors = { "cyril-of-alexandria", "bede-the-venerable" }, segments = 5 },
        },
        ["LUK 11:47-54"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "gregory-of-nyssa",
                    "ambrose-of-milan",
                },
                segments = 10,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["LUK 11:5-13"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                    "ambrose-of-milan",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "theophylact-of-ohrid", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["LUK 12:1-7"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "gregory-nazianzen",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "gregory-nazianzen",
                    "ambrose-of-milan",
                },
                segments = 5,
            },
        },
        ["LUK 12:13-21"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "basil-the-great",
                },
                segments = 5,
            },
            weekday = { authors = { "ambrose-of-milan", "theophylact-of-ohrid" }, segments = 3 },
        },
        ["LUK 12:35-38"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "maximus-of-turin",
                    "cyril-of-alexandria",
                    "gregory-the-great",
                    "augustine-of-hippo",
                    "origen",
                },
                segments = 7,
            },
            weekday = { authors = { "theophylact-of-ohrid" }, segments = 1 },
        },
        ["LUK 12:39-48"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "maximus-of-turin", "cyril-of-alexandria" },
                segments = 6,
            },
            weekday = { authors = { "theophylact-of-ohrid" }, segments = 1 },
        },
        ["LUK 12:49-53"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "titus-of-bostra",
                },
                segments = 5,
            },
            weekday = { authors = { "ambrose-of-milan", "cyril-of-alexandria" }, segments = 2 },
        },
        ["LUK 12:54-59"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "cyril-of-alexandria" },
                segments = 5,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "origen", "cyril-of-alexandria" },
                segments = 3,
            },
        },
        ["LUK 12:8-12"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                    "eusebius-of-caesarea",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                },
                segments = 5,
            },
        },
        ["LUK 13:1-9"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "bede-the-venerable",
                },
                segments = 5,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "titus-of-bostra",
                    "bede-the-venerable",
                },
                segments = 4,
            },
        },
        ["LUK 13:10-17"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                    "basil-the-great",
                    "gregory-the-great",
                },
                segments = 7,
            },
            weekday = {
                authors = { "ambrose-of-milan", "john-chrysostom", "cyril-of-alexandria" },
                segments = 3,
            },
        },
        ["LUK 13:18-21"] = {
            solemn = {
                authors = { "glossa-ordinaria", "ambrose-of-milan", "bede-the-venerable" },
                segments = 3,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "cyril-of-alexandria",
                    "ambrose-of-milan",
                    "bede-the-venerable",
                },
                segments = 4,
            },
        },
        ["LUK 13:22-30"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "basil-the-great",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["LUK 13:31-35"] = {
            solemn = { authors = { "cyril-of-alexandria", "bede-the-venerable" }, segments = 4 },
            weekday = { authors = { "cyril-of-alexandria", "bede-the-venerable" }, segments = 3 },
        },
        ["LUK 14:1"] = {
            solemn = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 6,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 3,
            },
        },
        ["LUK 14:1-6"] = {
            solemn = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 6,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 3,
            },
        },
        ["LUK 14:15-24"] = {
            solemn = {
                authors = {
                    "eusebius-of-caesarea",
                    "cyril-of-alexandria",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "eusebius-of-caesarea",
                    "cyril-of-alexandria",
                    "augustine-of-hippo",
                    "gregory-the-great",
                },
                segments = 4,
            },
        },
        ["LUK 14:25-33"] = {
            solemn = {
                authors = {
                    "gregory-the-great",
                    "theophylact-of-ohrid",
                    "basil-the-great",
                    "gregory-of-nyssa",
                },
                segments = 6,
            },
            weekday = {
                authors = { "gregory-the-great", "theophylact-of-ohrid", "basil-the-great" },
                segments = 4,
            },
        },
        ["LUK 14:7-11"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "basil-the-great",
                },
                segments = 5,
            },
            weekday = {
                authors = {
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                },
                segments = 4,
            },
        },
        ["LUK 15:1-10"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "gregory-the-great",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = { authors = { "ambrose-of-milan", "john-chrysostom" }, segments = 2 },
        },
        ["LUK 15:1-3"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                },
                segments = 5,
            },
            weekday = {
                authors = {
                    "ambrose-of-milan",
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                },
                segments = 4,
            },
        },
        ["LUK 15:11-32"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "gregory-of-nyssa",
                    "augustine-of-hippo",
                },
                segments = 9,
            },
            weekday = { authors = { "ambrose-of-milan", "gregory-of-nyssa" }, segments = 3 },
        },
        ["LUK 16:1-8"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "ambrose-of-milan",
                    "augustine-of-hippo",
                    "origen",
                },
                segments = 8,
            },
            weekday = { authors = { "bede-the-venerable", "augustine-of-hippo" }, segments = 4 },
        },
        ["LUK 16:19-31"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "pseudo-chrysostom",
                    "gregory-the-great",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = { "bede-the-venerable", "augustine-of-hippo", "ambrose-of-milan" },
                segments = 3,
            },
        },
        ["LUK 16:9-15"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "origen",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
            weekday = {
                authors = { "augustine-of-hippo", "bede-the-venerable", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["LUK 17:1-6"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "gregory-the-great",
                },
                segments = 7,
            },
            weekday = { authors = { "theophylact-of-ohrid", "ambrose-of-milan" }, segments = 3 },
        },
        ["LUK 17:11-19"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "titus-of-bostra",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                },
                segments = 10,
            },
            weekday = {
                authors = { "ambrose-of-milan", "titus-of-bostra", "cyril-of-alexandria" },
                segments = 5,
            },
        },
        ["LUK 17:20-25"] = {
            solemn = { authors = { "cyril-of-alexandria", "bede-the-venerable" }, segments = 4 },
            weekday = { authors = { "cyril-of-alexandria" }, segments = 1 },
        },
        ["LUK 17:26-37"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "augustine-of-hippo",
                    "cyril-of-alexandria",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "augustine-of-hippo",
                    "cyril-of-alexandria",
                },
                segments = 5,
            },
        },
        ["LUK 17:7-10"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                },
                segments = 5,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "ambrose-of-milan" },
                segments = 3,
            },
        },
        ["LUK 18:1-8"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "cyril-of-alexandria",
                },
                segments = 6,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "john-chrysostom", "bede-the-venerable" },
                segments = 3,
            },
        },
        ["LUK 18:35-43"] = {
            solemn = {
                authors = {
                    "gregory-the-great",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                },
                segments = 4,
            },
            weekday = {
                authors = {
                    "gregory-the-great",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                },
                segments = 5,
            },
        },
        ["LUK 18:9-14"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "greek-expositor",
                    "basil-the-great",
                },
                segments = 9,
            },
            weekday = {
                authors = { "augustine-of-hippo", "theophylact-of-ohrid", "greek-expositor" },
                segments = 4,
            },
        },
        ["LUK 19:1-10"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = {
                authors = { "ambrose-of-milan", "cyril-of-alexandria", "titus-of-bostra" },
                segments = 3,
            },
        },
        ["LUK 19:11-28"] = {
            solemn = {
                authors = {
                    "eusebius-of-caesarea",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "augustine-of-hippo",
                    "titus-of-bostra",
                    "bede-the-venerable",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "eusebius-of-caesarea",
                    "theophylact-of-ohrid",
                    "titus-of-bostra",
                    "basil-the-great",
                },
                segments = 4,
            },
        },
        ["LUK 19:41-44"] = {
            solemn = {
                authors = {
                    "origen",
                    "cyril-of-alexandria",
                    "gregory-the-great",
                    "eusebius-of-caesarea",
                },
                segments = 6,
            },
            weekday = {
                authors = { "origen", "cyril-of-alexandria", "gregory-the-great" },
                segments = 4,
            },
        },
        ["LUK 19:45-48"] = {
            solemn = {
                authors = {
                    "gregory-the-great",
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = { "gregory-the-great", "ambrose-of-milan", "cyril-of-alexandria" },
                segments = 4,
            },
        },
        ["LUK 1:26-38"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "glossa-ordinaria",
                    "ambrose-of-milan",
                    "greek-expositor",
                    "gregory-of-nyssa",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = { authors = { "bede-the-venerable", "pseudo-augustine" }, segments = 2 },
        },
        ["LUK 1:39-45"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "origen",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "greek-expositor",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = {
                authors = { "ambrose-of-milan", "origen", "john-chrysostom", "greek-expositor" },
                segments = 5,
            },
        },
        ["LUK 1:39-56"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "basil-the-great",
                    "greek-expositor",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "origen",
                },
                segments = 8,
            },
            weekday = {
                authors = { "ambrose-of-milan", "bede-the-venerable", "origen" },
                segments = 5,
            },
        },
        ["LUK 1:46-56"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "basil-the-great",
                    "greek-expositor",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = {
                authors = { "ambrose-of-milan", "basil-the-great", "origen" },
                segments = 3,
            },
        },
        ["LUK 1:5-17"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "ambrose-of-milan",
                },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "bede-the-venerable", "john-damascene" },
                segments = 3,
            },
        },
        ["LUK 1:5-25"] = {
            solemn = {
                authors = { "john-chrysostom", "bede-the-venerable", "ambrose-of-milan", "origen" },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "bede-the-venerable", "john-damascene" },
                segments = 3,
            },
        },
        ["LUK 1:57-66"] = {
            solemn = {
                authors = { "ambrose-of-milan", "john-chrysostom", "theophylact-of-ohrid" },
                segments = 4,
            },
            weekday = {
                authors = {
                    "ambrose-of-milan",
                    "origen",
                    "theophylact-of-ohrid",
                    "greek-expositor",
                },
                segments = 4,
            },
        },
        ["LUK 1:67-79"] = {
            solemn = {
                authors = { "ambrose-of-milan", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 6,
            },
            weekday = {
                authors = { "ambrose-of-milan", "theophylact-of-ohrid", "john-chrysostom" },
                segments = 4,
            },
        },
        ["LUK 1:80"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "origen",
                    "ambrose-of-milan",
                },
                segments = 5,
            },
            weekday = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 3 },
        },
        ["LUK 20:27-40"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "origen",
                    "ambrose-of-milan",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "bede-the-venerable",
                    "origen",
                    "ambrose-of-milan",
                    "theophylact-of-ohrid",
                },
                segments = 4,
            },
        },
        ["LUK 21:1-4"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
            weekday = { authors = { "glossa-ordinaria", "bede-the-venerable" }, segments = 3 },
        },
        ["LUK 21:12-19"] = {
            solemn = {
                authors = { "gregory-the-great", "cyril-of-alexandria", "theophylact-of-ohrid" },
                segments = 6,
            },
            weekday = { authors = { "gregory-the-great", "cyril-of-alexandria" }, segments = 3 },
        },
        ["LUK 21:20-28"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "eusebius-of-caesarea",
                    "augustine-of-hippo",
                    "ambrose-of-milan",
                    "gregory-the-great",
                },
                segments = 7,
            },
            weekday = { authors = { "bede-the-venerable", "gregory-the-great" }, segments = 3 },
        },
        ["LUK 21:25-28"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "eusebius-of-caesarea",
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = { "bede-the-venerable", "ambrose-of-milan", "gregory-the-great" },
                segments = 3,
            },
        },
        ["LUK 21:29-33"] = {
            solemn = {
                authors = {
                    "gregory-the-great",
                    "eusebius-of-caesarea",
                    "theophylact-of-ohrid",
                    "ambrose-of-milan",
                },
                segments = 5,
            },
            weekday = {
                authors = { "gregory-the-great", "theophylact-of-ohrid", "eusebius-of-caesarea" },
                segments = 3,
            },
        },
        ["LUK 21:34-36"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "basil-the-great", "titus-of-bostra" },
                segments = 4,
            },
            weekday = {
                authors = {
                    "theophylact-of-ohrid",
                    "titus-of-bostra",
                    "clement-of-alexandria",
                    "eusebius-of-caesarea",
                },
                segments = 4,
            },
        },
        ["LUK 21:5-11"] = {
            solemn = {
                authors = {
                    "eusebius-of-caesarea",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "gregory-the-great",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = { "eusebius-of-caesarea", "cyril-of-alexandria", "gregory-the-great" },
                segments = 3,
            },
        },
        ["LUK 24:13-35"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "ambrose-of-milan",
                    "isidore-of-pelusium",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = { authors = { "glossa-ordinaria", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["LUK 24:35-48"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "isidore-of-pelusium",
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = { authors = { "theophylact-of-ohrid", "ambrose-of-milan" }, segments = 2 },
        },
        ["LUK 2:1-14"] = {
            solemn = {
                authors = { "bede-the-venerable", "cyril-of-alexandria", "ambrose-of-milan" },
                segments = 5,
            },
            weekday = {
                authors = { "bede-the-venerable", "ambrose-of-milan", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["LUK 2:16-21"] = {
            solemn = {
                authors = {
                    "greek-expositor",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "origen",
                    "epiphanius-of-salamis",
                },
                segments = 8,
            },
            weekday = {
                authors = { "greek-expositor", "bede-the-venerable", "origen", "ambrose-of-milan" },
                segments = 5,
            },
        },
        ["LUK 2:22-32"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "titus-of-bostra",
                    "athanasius-of-alexandria",
                    "origen",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "gregory-the-great",
                    "origen",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["LUK 2:22-35"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "titus-of-bostra",
                    "ambrose-of-milan",
                    "origen",
                    "theophylact-of-ohrid",
                    "greek-expositor",
                },
                segments = 10,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "titus-of-bostra", "origen", "greek-expositor" },
                segments = 4,
            },
        },
        ["LUK 2:22-40"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "origen",
                    "theophylact-of-ohrid",
                    "greek-expositor",
                    "ambrose-of-milan",
                    "bede-the-venerable",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "cyril-of-alexandria",
                    "origen",
                    "greek-expositor",
                    "ambrose-of-milan",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["LUK 2:36-40"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "theophylact-of-ohrid",
                    "gregory-of-nyssa",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                },
                segments = 6,
            },
            weekday = {
                authors = { "ambrose-of-milan", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 3,
            },
        },
        ["LUK 2:41-51a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["LUK 2:41-52"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "greek-expositor",
                    "cyril-of-alexandria",
                    "ambrose-of-milan",
                    "origen",
                },
                segments = 9,
            },
            weekday = { authors = { "bede-the-venerable", "cyril-of-alexandria" }, segments = 3 },
        },
        ["LUK 3:1-6"] = {
            solemn = {
                authors = {
                    "gregory-the-great",
                    "greek-expositor",
                    "origen",
                    "john-chrysostom",
                    "ambrose-of-milan",
                },
                segments = 7,
            },
            weekday = {
                authors = { "gregory-the-great", "greek-expositor", "ambrose-of-milan" },
                segments = 3,
            },
        },
        ["LUK 3:10-18"] = {
            solemn = {
                authors = {
                    "gregory-the-great",
                    "origen",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "glossa-ordinaria",
                },
                segments = 10,
            },
            weekday = {
                authors = { "gregory-the-great", "origen", "greek-expositor" },
                segments = 5,
            },
        },
        ["LUK 4:14-22"] = {
            solemn = {
                authors = {
                    "origen",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = { "origen", "bede-the-venerable", "john-chrysostom" },
                segments = 6,
            },
        },
        ["LUK 4:16-21"] = {
            solemn = {
                authors = {
                    "origen",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "origen",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
        },
        ["LUK 4:16-30"] = {
            solemn = {
                authors = {
                    "origen",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "ambrose-of-milan",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "origen",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                },
                segments = 6,
            },
        },
        ["LUK 4:24-30"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "ambrose-of-milan",
                },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "bede-the-venerable", "cyril-of-alexandria" },
                segments = 4,
            },
        },
        ["LUK 4:31-37"] = {
            solemn = {
                authors = { "ambrose-of-milan", "cyril-of-alexandria", "bede-the-venerable" },
                segments = 5,
            },
            weekday = {
                authors = { "ambrose-of-milan", "bede-the-venerable", "cyril-of-alexandria" },
                segments = 5,
            },
        },
        ["LUK 4:38-44"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                    "origen",
                    "greek-expositor",
                },
                segments = 8,
            },
            weekday = {
                authors = { "ambrose-of-milan", "john-chrysostom", "theophylact-of-ohrid" },
                segments = 5,
            },
        },
        ["LUK 5:1-11"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "ambrose-of-milan",
                    "theophylact-of-ohrid",
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["LUK 5:12-16"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "athanasius-of-alexandria",
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "theophylact-of-ohrid",
                },
                segments = 9,
            },
            weekday = {
                authors = { "ambrose-of-milan", "athanasius-of-alexandria", "cyril-of-alexandria" },
                segments = 3,
            },
        },
        ["LUK 5:17-26"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                },
                segments = 4,
            },
            weekday = { authors = { "cyril-of-alexandria", "john-chrysostom" }, segments = 2 },
        },
        ["LUK 5:27-32"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                    "basil-the-great",
                    "theophylact-of-ohrid",
                    "ambrose-of-milan",
                },
                segments = 10,
            },
            weekday = {
                authors = { "augustine-of-hippo", "bede-the-venerable", "cyril-of-alexandria" },
                segments = 3,
            },
        },
        ["LUK 5:33-39"] = {
            solemn = {
                authors = { "cyril-of-alexandria", "augustine-of-hippo", "john-chrysostom" },
                segments = 5,
            },
            weekday = { authors = { "cyril-of-alexandria", "john-chrysostom" }, segments = 2 },
        },
        ["LUK 6:1-5"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "isidore-of-pelusium",
                    "epiphanius-of-salamis",
                    "cyril-of-alexandria",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "ambrose-of-milan",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                },
                segments = 4,
            },
        },
        ["LUK 6:12-16"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                },
                segments = 6,
            },
            weekday = {
                authors = { "glossa-ordinaria", "ambrose-of-milan", "cyril-of-alexandria" },
                segments = 4,
            },
        },
        ["LUK 6:12-19"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "ambrose-of-milan",
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                },
                segments = 4,
            },
        },
        ["LUK 6:20-26"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "ambrose-of-milan",
                    "bede-the-venerable",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "cyril-of-alexandria",
                    "ambrose-of-milan",
                    "bede-the-venerable",
                    "john-chrysostom",
                },
                segments = 6,
            },
        },
        ["LUK 6:27-38"] = {
            solemn = {
                authors = { "bede-the-venerable", "ambrose-of-milan", "john-chrysostom" },
                segments = 5,
            },
            weekday = {
                authors = { "bede-the-venerable", "ambrose-of-milan", "john-chrysostom" },
                segments = 6,
            },
        },
        ["LUK 6:36-38"] = {
            solemn = {
                authors = { "john-chrysostom", "bede-the-venerable", "ambrose-of-milan" },
                segments = 6,
            },
            weekday = {
                authors = { "bede-the-venerable", "ambrose-of-milan", "john-chrysostom" },
                segments = 5,
            },
        },
        ["LUK 6:39-42"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                },
                segments = 5,
            },
            weekday = { authors = { "cyril-of-alexandria", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["LUK 6:43-49"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "titus-of-bostra",
                    "isidore-of-pelusium",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                    "athanasius-of-alexandria",
                },
                segments = 9,
            },
            weekday = {
                authors = { "bede-the-venerable", "titus-of-bostra", "cyril-of-alexandria" },
                segments = 4,
            },
        },
        ["LUK 6:6-11"] = {
            solemn = {
                authors = {
                    "ambrose-of-milan",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "ambrose-of-milan", "bede-the-venerable", "cyril-of-alexandria" },
                segments = 4,
            },
        },
        ["LUK 7:1-10"] = {
            solemn = {
                authors = {
                    "titus-of-bostra",
                    "augustine-of-hippo",
                    "ambrose-of-milan",
                    "eusebius-of-caesarea",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "titus-of-bostra",
                    "augustine-of-hippo",
                    "ambrose-of-milan",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["LUK 7:18-23"] = {
            solemn = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "john-chrysostom" },
                segments = 6,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "john-chrysostom" },
                segments = 4,
            },
        },
        ["LUK 7:18b-23"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["LUK 7:24-30"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "greek-expositor",
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "eusebius-of-caesarea",
                },
                segments = 7,
            },
            weekday = { authors = { "cyril-of-alexandria", "john-chrysostom" }, segments = 2 },
        },
        ["LUK 7:31-35"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "eusebius-of-caesarea",
                    "bede-the-venerable",
                    "cyril-of-alexandria",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "ambrose-of-milan", "eusebius-of-caesarea" },
                segments = 4,
            },
        },
        ["LUK 7:36-50"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "gregory-of-nyssa",
                    "cyril-of-alexandria",
                    "gregory-the-great",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = { authors = { "bede-the-venerable", "gregory-of-nyssa" }, segments = 3 },
        },
        ["LUK 8:1-3"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "gregory-nazianzen",
                    "titus-of-bostra",
                    "isidore-of-pelusium",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "theophylact-of-ohrid",
                    "gregory-nazianzen",
                    "titus-of-bostra",
                    "isidore-of-pelusium",
                },
                segments = 4,
            },
        },
        ["LUK 8:16-18"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "eusebius-of-caesarea",
                    "augustine-of-hippo",
                    "origen",
                },
                segments = 4,
            },
            weekday = { authors = { "bede-the-venerable", "eusebius-of-caesarea" }, segments = 2 },
        },
        ["LUK 8:19-21"] = {
            solemn = {
                authors = {
                    "titus-of-bostra",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "ambrose-of-milan",
                },
                segments = 5,
            },
            weekday = { authors = { "titus-of-bostra", "bede-the-venerable" }, segments = 3 },
        },
        ["LUK 8:4-15"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "origen",
                    "eusebius-of-caesarea",
                    "bede-the-venerable",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "origen", "eusebius-of-caesarea" },
                segments = 3,
            },
        },
        ["LUK 9:1-6"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "eusebius-of-caesarea",
                    "john-chrysostom",
                    "gregory-nazianzen",
                    "ambrose-of-milan",
                },
                segments = 6,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "eusebius-of-caesarea", "john-chrysostom" },
                segments = 3,
            },
        },
        ["LUK 9:18-22"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "ambrose-of-milan",
                },
                segments = 6,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "bede-the-venerable", "ambrose-of-milan" },
                segments = 3,
            },
        },
        ["LUK 9:22-25"] = {
            solemn = { authors = { "cyril-of-alexandria", "bede-the-venerable" }, segments = 6 },
            weekday = { authors = { "cyril-of-alexandria" }, segments = 2 },
        },
        ["LUK 9:43-45"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "john-chrysostom",
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                },
                segments = 5,
            },
            weekday = {
                authors = {
                    "bede-the-venerable",
                    "john-chrysostom",
                    "titus-of-bostra",
                    "theophylact-of-ohrid",
                },
                segments = 4,
            },
        },
        ["LUK 9:43b-45"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["LUK 9:46-50"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                },
                segments = 5,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "theophylact-of-ohrid", "ambrose-of-milan" },
                segments = 3,
            },
        },
        ["LUK 9:51-56"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "titus-of-bostra",
                    "bede-the-venerable",
                    "ambrose-of-milan",
                    "theophylact-of-ohrid",
                },
                segments = 8,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "titus-of-bostra", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["LUK 9:57-62"] = {
            solemn = {
                authors = {
                    "cyril-of-alexandria",
                    "athanasius-of-alexandria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "augustine-of-hippo",
                },
                segments = 8,
            },
            weekday = {
                authors = { "cyril-of-alexandria", "athanasius-of-alexandria" },
                segments = 2,
            },
        },
        ["LUK 9:7-9"] = {
            solemn = {
                authors = { "john-chrysostom", "theophylact-of-ohrid", "augustine-of-hippo" },
                segments = 7,
            },
            weekday = { authors = { "john-chrysostom", "theophylact-of-ohrid" }, segments = 5 },
        },
        ["MAT 10:1-7"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "jerome",
                },
                segments = 9,
            },
            weekday = { authors = { "glossa-ordinaria", "remigius-of-auxerre" }, segments = 4 },
        },
        ["MAT 10:16-23"] = {
            solemn = {
                authors = { "john-chrysostom", "jerome", "remigius-of-auxerre", "glossa-ordinaria" },
                segments = 7,
            },
            weekday = { authors = { "gregory-the-great", "jerome" }, segments = 2 },
        },
        ["MAT 10:17-22"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "jerome",
                    "hilary-of-poitiers",
                    "remigius-of-auxerre",
                    "glossa-ordinaria",
                    "gregory-the-great",
                },
                segments = 8,
            },
            weekday = { authors = { "gregory-the-great", "jerome" }, segments = 2 },
        },
        ["MAT 10:24-33"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "hilary-of-poitiers",
                    "remigius-of-auxerre",
                    "jerome",
                },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "remigius-of-auxerre", "hilary-of-poitiers" },
                segments = 5,
            },
        },
        ["MAT 10:26-33"] = {
            solemn = {
                authors = {
                    "remigius-of-auxerre",
                    "jerome",
                    "hilary-of-poitiers",
                    "john-chrysostom",
                },
                segments = 10,
            },
            weekday = {
                authors = { "remigius-of-auxerre", "john-chrysostom", "hilary-of-poitiers" },
                segments = 4,
            },
        },
        ["MAT 10:34-11:1"] = {
            solemn = {
                authors = {
                    "jerome",
                    "glossa-ordinaria",
                    "hilary-of-poitiers",
                    "rabanus-maurus",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = { authors = { "jerome", "john-chrysostom" }, segments = 3 },
        },
        ["MAT 10:37-42"] = {
            solemn = {
                authors = {
                    "jerome",
                    "hilary-of-poitiers",
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                },
                segments = 6,
            },
            weekday = { authors = { "jerome" }, segments = 2 },
        },
        ["MAT 10:7-13"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "hilary-of-poitiers", "jerome" },
                segments = 10,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome" },
                segments = 5,
            },
        },
        ["MAT 10:7-15"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "hilary-of-poitiers", "jerome" },
                segments = 10,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome" },
                segments = 5,
            },
        },
        ["MAT 11:11-15"] = {
            solemn = {
                authors = { "john-chrysostom", "rabanus-maurus", "jerome", "pseudo-chrysostom" },
                segments = 8,
            },
            weekday = { authors = { "john-chrysostom", "rabanus-maurus", "jerome" }, segments = 3 },
        },
        ["MAT 11:16-19"] = {
            solemn = {
                authors = {
                    "hilary-of-poitiers",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "jerome",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "hilary-of-poitiers",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "jerome",
                },
                segments = 6,
            },
        },
        ["MAT 11:20-24"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "john-chrysostom",
                    "rabanus-maurus",
                    "gregory-the-great",
                },
                segments = 9,
            },
            weekday = {
                authors = { "glossa-ordinaria", "jerome", "john-chrysostom" },
                segments = 5,
            },
        },
        ["MAT 11:25-27"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "jerome",
                    "john-chrysostom",
                    "hilary-of-poitiers",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "hilary-of-poitiers",
                },
                segments = 5,
            },
        },
        ["MAT 11:25-30"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "john-chrysostom",
                    "jerome",
                    "hilary-of-poitiers",
                },
                segments = 10,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "hilary-of-poitiers" },
                segments = 5,
            },
        },
        ["MAT 11:28-30"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "hilary-of-poitiers",
                    "jerome",
                    "gregory-the-great",
                    "rabanus-maurus",
                    "remigius-of-auxerre",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "hilary-of-poitiers",
                    "jerome",
                    "rabanus-maurus",
                    "remigius-of-auxerre",
                },
                segments = 6,
            },
        },
        ["MAT 12:1-8"] = {
            solemn = {
                authors = { "glossa-ordinaria", "augustine-of-hippo", "john-chrysostom", "jerome" },
                segments = 5,
            },
            weekday = {
                authors = { "glossa-ordinaria", "augustine-of-hippo", "jerome" },
                segments = 3,
            },
        },
        ["MAT 12:14-21"] = {
            solemn = {
                authors = {
                    "hilary-of-poitiers",
                    "rabanus-maurus",
                    "jerome",
                    "remigius-of-auxerre",
                },
                segments = 9,
            },
            weekday = {
                authors = { "hilary-of-poitiers", "rabanus-maurus", "jerome" },
                segments = 6,
            },
        },
        ["MAT 12:38-42"] = {
            solemn = {
                authors = { "john-chrysostom", "jerome", "remigius-of-auxerre" },
                segments = 5,
            },
            weekday = { authors = { "john-chrysostom" }, segments = 3 },
        },
        ["MAT 12:46-50"] = {
            solemn = {
                authors = {
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "jerome",
                    "john-chrysostom",
                },
                segments = 5,
            },
            weekday = {
                authors = { "hilary-of-poitiers", "augustine-of-hippo", "jerome" },
                segments = 3,
            },
        },
        ["MAT 13:1-23"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "rabanus-maurus",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["MAT 13:1-9"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "rabanus-maurus",
                    "jerome",
                    "hilary-of-poitiers",
                },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "jerome" },
                segments = 3,
            },
        },
        ["MAT 13:10-17"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome", "remigius-of-auxerre" },
                segments = 8,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "jerome",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 5,
            },
        },
        ["MAT 13:16-17"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome", "remigius-of-auxerre" },
                segments = 8,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "jerome",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 5,
            },
        },
        ["MAT 13:18-23"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "remigius-of-auxerre",
                    "rabanus-maurus",
                    "jerome",
                },
                segments = 6,
            },
            weekday = {
                authors = { "glossa-ordinaria", "augustine-of-hippo", "jerome", "rabanus-maurus" },
                segments = 4,
            },
        },
        ["MAT 13:24-30"] = {
            solemn = {
                authors = { "john-chrysostom", "jerome", "remigius-of-auxerre" },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "jerome", "remigius-of-auxerre" },
                segments = 4,
            },
        },
        ["MAT 13:24-43"] = {
            solemn = {
                authors = { "john-chrysostom", "remigius-of-auxerre", "jerome" },
                segments = 7,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "jerome",
                    "remigius-of-auxerre",
                },
                segments = 6,
            },
        },
        ["MAT 13:31-35"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "jerome",
                    "augustine-of-hippo",
                    "remigius-of-auxerre",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "jerome" },
                segments = 4,
            },
        },
        ["MAT 13:36-43"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "jerome",
                    "rabanus-maurus",
                    "remigius-of-auxerre",
                    "augustine-of-hippo",
                },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "jerome", "rabanus-maurus", "remigius-of-auxerre" },
                segments = 4,
            },
        },
        ["MAT 13:44-46"] = {
            solemn = {
                authors = { "john-chrysostom", "hilary-of-poitiers", "jerome" },
                segments = 4,
            },
            weekday = { authors = { "john-chrysostom", "gregory-the-great" }, segments = 2 },
        },
        ["MAT 13:44-52"] = {
            solemn = { authors = { "john-chrysostom", "glossa-ordinaria" }, segments = 4 },
            weekday = {
                authors = { "john-chrysostom", "gregory-the-great", "jerome" },
                segments = 3,
            },
        },
        ["MAT 13:47-53"] = {
            solemn = {
                authors = { "john-chrysostom", "jerome", "glossa-ordinaria", "augustine-of-hippo" },
                segments = 9,
            },
            weekday = {
                authors = { "john-chrysostom", "jerome", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["MAT 13:54-58"] = {
            solemn = {
                authors = {
                    "jerome",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "pseudo-augustine",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "jerome",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                },
                segments = 4,
            },
        },
        ["MAT 14:1-12"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "jerome",
                    "remigius-of-auxerre",
                    "isidore-of-seville",
                },
                segments = 9,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome" },
                segments = 5,
            },
        },
        ["MAT 14:13-21"] = {
            solemn = {
                authors = { "glossa-ordinaria", "augustine-of-hippo", "john-chrysostom" },
                segments = 3,
            },
            weekday = {
                authors = { "glossa-ordinaria", "augustine-of-hippo", "jerome" },
                segments = 4,
            },
        },
        ["MAT 14:22-33"] = {
            solemn = { authors = { "john-chrysostom", "jerome" }, segments = 7 },
            weekday = { authors = { "john-chrysostom", "jerome" }, segments = 4 },
        },
        ["MAT 14:22-36"] = {
            solemn = {
                authors = { "john-chrysostom", "jerome", "rabanus-maurus", "remigius-of-auxerre" },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "jerome", "remigius-of-auxerre", "rabanus-maurus" },
                segments = 4,
            },
        },
        ["MAT 15:21-28"] = {
            solemn = {
                authors = { "jerome", "remigius-of-auxerre", "john-chrysostom", "glossa-ordinaria" },
                segments = 7,
            },
            weekday = {
                authors = { "jerome", "remigius-of-auxerre", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MAT 15:29-37"] = {
            solemn = {
                authors = { "jerome", "remigius-of-auxerre", "john-chrysostom", "glossa-ordinaria" },
                segments = 9,
            },
            weekday = { authors = { "jerome", "remigius-of-auxerre" }, segments = 6 },
        },
        ["MAT 16:13-19"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome", "origen" },
                segments = 9,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome" },
                segments = 5,
            },
        },
        ["MAT 16:13-20"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome", "origen" },
                segments = 7,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "origen", "jerome" },
                segments = 4,
            },
        },
        ["MAT 16:13-23"] = {
            solemn = {
                authors = { "glossa-ordinaria", "john-chrysostom", "jerome", "origen" },
                segments = 7,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "origen" },
                segments = 4,
            },
        },
        ["MAT 16:21-27"] = {
            solemn = { authors = { "origen", "john-chrysostom" }, segments = 5 },
            weekday = { authors = { "origen", "gregory-the-great" }, segments = 3 },
        },
        ["MAT 16:24-28"] = {
            solemn = { authors = { "john-chrysostom", "gregory-the-great" }, segments = 3 },
            weekday = {
                authors = { "gregory-the-great", "hilary-of-poitiers", "origen", "jerome" },
                segments = 5,
            },
        },
        ["MAT 17:1-9"] = {
            solemn = {
                authors = {
                    "remigius-of-auxerre",
                    "jerome",
                    "john-chrysostom",
                    "rabanus-maurus",
                    "origen",
                    "hilary-of-poitiers",
                },
                segments = 11,
            },
            weekday = {
                authors = { "remigius-of-auxerre", "jerome", "john-chrysostom" },
                segments = 5,
            },
        },
        ["MAT 17:10-13"] = {
            solemn = {
                authors = { "jerome", "john-chrysostom", "augustine-of-hippo" },
                segments = 5,
            },
            weekday = {
                authors = { "jerome", "augustine-of-hippo", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MAT 17:14-20"] = {
            solemn = { authors = { "origen", "jerome", "john-chrysostom" }, segments = 4 },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "jerome",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 6,
            },
        },
        ["MAT 17:22-27"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MAT 18:1-4"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "origen",
                    "hilary-of-poitiers",
                    "remigius-of-auxerre",
                },
                segments = 7,
            },
            weekday = { authors = { "jerome", "john-chrysostom" }, segments = 3 },
        },
        ["MAT 18:1-5"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "origen",
                    "hilary-of-poitiers",
                    "remigius-of-auxerre",
                },
                segments = 7,
            },
            weekday = { authors = { "jerome", "john-chrysostom" }, segments = 3 },
        },
        ["MAT 18:10"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "origen",
                    "gregory-the-great",
                },
                segments = 10,
            },
            weekday = {
                authors = { "jerome", "john-chrysostom", "glossa-ordinaria", "gregory-the-great" },
                segments = 6,
            },
        },
        ["MAT 18:12-14"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "origen",
                    "gregory-the-great",
                },
                segments = 10,
            },
            weekday = {
                authors = { "jerome", "john-chrysostom", "glossa-ordinaria", "gregory-the-great" },
                segments = 6,
            },
        },
        ["MAT 18:15-20"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "rabanus-maurus",
                    "jerome",
                    "origen",
                    "hilary-of-poitiers",
                },
                segments = 7,
            },
            weekday = { authors = { "john-chrysostom", "jerome" }, segments = 3 },
        },
        ["MAT 18:21-19:1"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "origen",
                    "rabanus-maurus",
                },
                segments = 8,
            },
            weekday = { authors = { "jerome", "john-chrysostom", "origen" }, segments = 5 },
        },
        ["MAT 18:21-35"] = {
            solemn = {
                authors = { "jerome", "john-chrysostom", "augustine-of-hippo", "origen" },
                segments = 9,
            },
            weekday = {
                authors = { "jerome", "john-chrysostom", "remigius-of-auxerre" },
                segments = 6,
            },
        },
        ["MAT 19:13-15"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "origen",
                    "remigius-of-auxerre",
                    "jerome",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "origen", "remigius-of-auxerre", "jerome" },
                segments = 4,
            },
        },
        ["MAT 19:16-22"] = {
            solemn = {
                authors = { "rabanus-maurus", "jerome", "john-chrysostom", "augustine-of-hippo" },
                segments = 6,
            },
            weekday = {
                authors = { "rabanus-maurus", "jerome", "remigius-of-auxerre" },
                segments = 4,
            },
        },
        ["MAT 19:23-30"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "hilary-of-poitiers",
                    "rabanus-maurus",
                    "origen",
                },
                segments = 8,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "origen", "augustine-of-hippo" },
                segments = 4,
            },
        },
        ["MAT 19:27-29"] = {
            solemn = {
                authors = {
                    "origen",
                    "john-chrysostom",
                    "jerome",
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = { authors = { "origen", "jerome" }, segments = 3 },
        },
        ["MAT 19:3-12"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "rabanus-maurus",
                    "pseudo-chrysostom",
                    "origen",
                    "jerome",
                },
                segments = 7,
            },
            weekday = { authors = { "john-chrysostom", "rabanus-maurus", "jerome" }, segments = 4 },
        },
        ["MAT 1:1-16"] = {
            solemn = {
                authors = {
                    "jerome",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "glossa-ordinaria",
                },
                segments = 8,
            },
            weekday = {
                authors = { "jerome", "augustine-of-hippo", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["MAT 1:1-17"] = {
            solemn = {
                authors = {
                    "jerome",
                    "augustine-of-hippo",
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "jerome", "augustine-of-hippo", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["MAT 1:16"] = {
            solemn = {
                authors = { "glossa-ordinaria", "jerome", "eusebius-of-caesarea" },
                segments = 4,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "eusebius-of-caesarea",
                    "john-chrysostom",
                },
                segments = 4,
            },
        },
        ["MAT 1:18-21"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "pseudo-augustine",
                    "remigius-of-auxerre",
                    "rabanus-maurus",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "pseudo-chrysostom",
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                },
                segments = 6,
            },
        },
        ["MAT 1:18-23"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "jerome",
                    "remigius-of-auxerre",
                    "rabanus-maurus",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "rabanus-maurus",
                },
                segments = 5,
            },
        },
        ["MAT 1:18-25"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "remigius-of-auxerre",
                    "john-chrysostom",
                    "rabanus-maurus",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "rabanus-maurus",
                },
                segments = 5,
            },
        },
        ["MAT 1:24"] = {
            solemn = {
                authors = {
                    "remigius-of-auxerre",
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "jerome",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "remigius-of-auxerre",
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "jerome",
                },
                segments = 5,
            },
        },
        ["MAT 1:24a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MAT 20:1-16"] = {
            solemn = {
                authors = {
                    "remigius-of-auxerre",
                    "pseudo-chrysostom",
                    "origen",
                    "gregory-the-great",
                    "hilary-of-poitiers",
                },
                segments = 7,
            },
            weekday = {
                authors = { "remigius-of-auxerre", "gregory-the-great", "origen" },
                segments = 5,
            },
        },
        ["MAT 20:1-16a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MAT 20:17-28"] = {
            solemn = {
                authors = { "john-chrysostom", "origen", "jerome", "pseudo-chrysostom" },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "origen", "jerome", "augustine-of-hippo" },
                segments = 5,
            },
        },
        ["MAT 20:20-28"] = {
            solemn = {
                authors = { "jerome", "pseudo-chrysostom", "augustine-of-hippo", "john-chrysostom" },
                segments = 8,
            },
            weekday = {
                authors = { "jerome", "augustine-of-hippo", "john-chrysostom" },
                segments = 6,
            },
        },
        ["MAT 21:1-11"] = {
            solemn = {
                authors = {
                    "remigius-of-auxerre",
                    "origen",
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "jerome",
                },
                segments = 8,
            },
            weekday = {
                authors = { "remigius-of-auxerre", "origen", "pseudo-chrysostom", "jerome" },
                segments = 5,
            },
        },
        ["MAT 21:23-27"] = {
            solemn = {
                authors = { "pseudo-chrysostom", "john-chrysostom", "jerome", "augustine-of-hippo" },
                segments = 5,
            },
            weekday = { authors = { "pseudo-chrysostom", "john-chrysostom" }, segments = 3 },
        },
        ["MAT 21:28-32"] = {
            solemn = {
                authors = { "jerome", "pseudo-chrysostom", "origen", "rabanus-maurus" },
                segments = 7,
            },
            weekday = { authors = { "jerome", "pseudo-chrysostom", "origen" }, segments = 5 },
        },
        ["MAT 21:33-43"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "origen",
                    "pseudo-chrysostom",
                    "jerome",
                    "hilary-of-poitiers",
                },
                segments = 13,
            },
            weekday = {
                authors = { "john-chrysostom", "origen", "pseudo-chrysostom", "jerome" },
                segments = 7,
            },
        },
        ["MAT 21:45-46"] = {
            solemn = {
                authors = { "jerome", "pseudo-chrysostom", "origen", "rabanus-maurus" },
                segments = 5,
            },
            weekday = { authors = { "jerome", "pseudo-chrysostom" }, segments = 3 },
        },
        ["MAT 22:1-10"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "origen",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "origen",
                    "remigius-of-auxerre",
                },
                segments = 6,
            },
        },
        ["MAT 22:1-14"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "origen",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "gregory-the-great",
                    "origen",
                    "remigius-of-auxerre",
                },
                segments = 6,
            },
        },
        ["MAT 22:15-21"] = {
            solemn = {
                authors = { "pseudo-chrysostom", "glossa-ordinaria", "jerome", "john-chrysostom" },
                segments = 7,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "glossa-ordinaria", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MAT 22:34-40"] = {
            solemn = {
                authors = { "jerome", "origen", "pseudo-chrysostom", "augustine-of-hippo" },
                segments = 8,
            },
            weekday = { authors = { "jerome", "origen", "pseudo-chrysostom" }, segments = 5 },
        },
        ["MAT 23:1-12"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "origen",
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "rabanus-maurus",
                },
                segments = 8,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "glossa-ordinaria", "john-chrysostom", "origen" },
                segments = 6,
            },
        },
        ["MAT 23:13-22"] = {
            solemn = {
                authors = { "origen", "john-chrysostom", "glossa-ordinaria", "jerome" },
                segments = 5,
            },
            weekday = { authors = { "origen" }, segments = 1 },
        },
        ["MAT 23:23-26"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "jerome",
                    "origen",
                    "hilary-of-poitiers",
                    "pseudo-chrysostom",
                },
                segments = 7,
            },
            weekday = { authors = { "john-chrysostom", "jerome" }, segments = 3 },
        },
        ["MAT 23:27-32"] = {
            solemn = {
                authors = {
                    "origen",
                    "pseudo-chrysostom",
                    "gregory-the-great",
                    "jerome",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = { authors = { "origen", "jerome", "john-chrysostom" }, segments = 4 },
        },
        ["MAT 24:42-51"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "gregory-the-great",
                    "origen",
                    "augustine-of-hippo",
                    "hilary-of-poitiers",
                    "remigius-of-auxerre",
                    "glossa-ordinaria",
                },
                segments = 9,
            },
            weekday = {
                authors = { "jerome", "john-chrysostom", "gregory-the-great", "hilary-of-poitiers" },
                segments = 5,
            },
        },
        ["MAT 25:1-13"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "hilary-of-poitiers",
                    "gregory-the-great",
                    "jerome",
                    "origen",
                },
                segments = 8,
            },
            weekday = {
                authors = { "john-chrysostom", "hilary-of-poitiers", "gregory-the-great", "jerome" },
                segments = 4,
            },
        },
        ["MAT 25:14-15"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "gregory-the-great",
                    "origen",
                    "jerome",
                },
                segments = 9,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "gregory-the-great", "jerome" },
                segments = 5,
            },
        },
        ["MAT 25:14-30"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "gregory-the-great",
                    "origen",
                    "jerome",
                },
                segments = 9,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "gregory-the-great", "jerome" },
                segments = 5,
            },
        },
        ["MAT 25:19-21"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "gregory-the-great",
                    "origen",
                    "jerome",
                },
                segments = 9,
            },
            weekday = {
                authors = { "glossa-ordinaria", "john-chrysostom", "gregory-the-great", "jerome" },
                segments = 5,
            },
        },
        ["MAT 25:31-46"] = {
            solemn = {
                authors = {
                    "rabanus-maurus",
                    "john-chrysostom",
                    "jerome",
                    "augustine-of-hippo",
                    "origen",
                    "gregory-the-great",
                },
                segments = 8,
            },
            weekday = {
                authors = { "rabanus-maurus", "john-chrysostom", "augustine-of-hippo", "origen" },
                segments = 5,
            },
        },
        ["MAT 26:14-25"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "origen",
                    "rabanus-maurus",
                    "jerome",
                    "remigius-of-auxerre",
                },
                segments = 14,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "origen",
                    "remigius-of-auxerre",
                    "jerome",
                },
                segments = 8,
            },
        },
        ["MAT 26:14-27:66"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "remigius-of-auxerre",
                    "origen",
                    "hilary-of-poitiers",
                    "rabanus-maurus",
                },
                segments = 11,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 6,
            },
        },
        ["MAT 27:11-54"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "origen",
                    "john-chrysostom",
                    "jerome",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "pseudo-chrysostom",
                },
                segments = 13,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                },
                segments = 7,
            },
        },
        ["MAT 28:1-10"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "jerome",
                    "hilary-of-poitiers",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "pseudo-chrysostom",
                    "jerome",
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                },
                segments = 5,
            },
        },
        ["MAT 28:16-20"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "jerome",
                    "remigius-of-auxerre",
                    "peter-chrysologus",
                    "rabanus-maurus",
                },
                segments = 9,
            },
            weekday = {
                authors = { "bede-the-venerable", "jerome", "remigius-of-auxerre" },
                segments = 4,
            },
        },
        ["MAT 28:8-15"] = {
            solemn = {
                authors = {
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "jerome",
                    "rabanus-maurus",
                    "john-chrysostom",
                    "peter-chrysologus",
                    "glossa-ordinaria",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "rabanus-maurus",
                    "john-chrysostom",
                },
                segments = 5,
            },
        },
        ["MAT 2:1-12"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "remigius-of-auxerre",
                    "pseudo-chrysostom",
                    "glossa-ordinaria",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "glossa-ordinaria",
                },
                segments = 6,
            },
        },
        ["MAT 2:13-18"] = {
            solemn = {
                authors = {
                    "rabanus-maurus",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "jerome",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "rabanus-maurus",
                    "remigius-of-auxerre",
                    "augustine-of-hippo",
                    "john-chrysostom",
                },
                segments = 5,
            },
        },
        ["MAT 3:13-17"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "rabanus-maurus",
                    "john-chrysostom",
                    "ambrose-of-milan",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "hilary-of-poitiers",
                    "jerome",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "jerome",
                    "ambrose-of-milan",
                    "rabanus-maurus",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
        },
        ["MAT 4:1-11"] = {
            solemn = {
                authors = { "pseudo-chrysostom", "hilary-of-poitiers", "jerome" },
                segments = 7,
            },
            weekday = { authors = { "pseudo-chrysostom", "remigius-of-auxerre" }, segments = 4 },
        },
        ["MAT 4:12-17"] = {
            solemn = {
                authors = {
                    "rabanus-maurus",
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "jerome",
                },
                segments = 8,
            },
            weekday = {
                authors = { "rabanus-maurus", "pseudo-chrysostom", "jerome" },
                segments = 4,
            },
        },
        ["MAT 4:12-23"] = {
            solemn = {
                authors = {
                    "rabanus-maurus",
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "rabanus-maurus",
                    "pseudo-chrysostom",
                    "hilary-of-poitiers",
                    "remigius-of-auxerre",
                },
                segments = 5,
            },
        },
        ["MAT 4:18-22"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "rabanus-maurus",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "john-chrysostom",
                    "augustine-of-hippo",
                },
                segments = 13,
            },
            weekday = {
                authors = {
                    "pseudo-chrysostom",
                    "rabanus-maurus",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "john-chrysostom",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
        },
        ["MAT 4:23-25"] = {
            solemn = {
                authors = { "pseudo-chrysostom", "remigius-of-auxerre", "john-chrysostom" },
                segments = 9,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "remigius-of-auxerre", "john-chrysostom" },
                segments = 5,
            },
        },
        ["MAT 5:1-12"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "ambrose-of-milan",
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "rabanus-maurus",
                },
                segments = 10,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "ambrose-of-milan", "jerome" },
                segments = 5,
            },
        },
        ["MAT 5:1-12a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MAT 5:13-16"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "hilary-of-poitiers",
                    "remigius-of-auxerre",
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "remigius-of-auxerre", "glossa-ordinaria" },
                segments = 3,
            },
        },
        ["MAT 5:17-19"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "remigius-of-auxerre",
                    "augustine-of-hippo",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 4,
            },
        },
        ["MAT 5:17-37"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "jerome",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "jerome",
                },
                segments = 5,
            },
        },
        ["MAT 5:20-22a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MAT 5:20-26"] = {
            solemn = {
                authors = {
                    "hilary-of-poitiers",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "jerome",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "hilary-of-poitiers",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                },
                segments = 5,
            },
        },
        ["MAT 5:27-28"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "jerome" },
                segments = 4,
            },
            weekday = { authors = { "john-chrysostom", "augustine-of-hippo" }, segments = 2 },
        },
        ["MAT 5:33-34a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MAT 5:33-37"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "hilary-of-poitiers",
                },
                segments = 8,
            },
            weekday = { authors = { "glossa-ordinaria", "jerome" }, segments = 2 },
        },
        ["MAT 5:37"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "hilary-of-poitiers",
                },
                segments = 8,
            },
            weekday = { authors = { "glossa-ordinaria", "jerome" }, segments = 2 },
        },
        ["MAT 5:38-42"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                    "jerome",
                    "john-chrysostom",
                },
                segments = 6,
            },
            weekday = {
                authors = { "glossa-ordinaria", "pseudo-chrysostom", "jerome", "john-chrysostom" },
                segments = 7,
            },
        },
        ["MAT 5:43-48"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                    "jerome",
                    "hilary-of-poitiers",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "jerome",
                    "hilary-of-poitiers",
                },
                segments = 4,
            },
        },
        ["MAT 6:1-6"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = { "glossa-ordinaria", "augustine-of-hippo", "pseudo-chrysostom" },
                segments = 3,
            },
        },
        ["MAT 6:16-18"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "jerome",
                    "gregory-the-great",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "remigius-of-auxerre",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "jerome",
                    "gregory-the-great",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "remigius-of-auxerre",
                },
                segments = 5,
            },
        },
        ["MAT 6:19-23"] = {
            solemn = {
                authors = { "john-chrysostom", "augustine-of-hippo", "pseudo-chrysostom", "jerome" },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "hilary-of-poitiers" }, segments = 3 },
        },
        ["MAT 6:24-34"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                    "john-chrysostom",
                },
                segments = 9,
            },
            weekday = { authors = { "pseudo-chrysostom", "augustine-of-hippo" }, segments = 4 },
        },
        ["MAT 6:7-15"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "cyprian-of-carthage",
                    "rabanus-maurus",
                },
                segments = 8,
            },
            weekday = {
                authors = { "augustine-of-hippo", "glossa-ordinaria", "gregory-the-great" },
                segments = 5,
            },
        },
        ["MAT 7:1-5"] = {
            solemn = {
                authors = { "augustine-of-hippo", "pseudo-chrysostom", "jerome", "john-chrysostom" },
                segments = 10,
            },
            weekday = {
                authors = { "augustine-of-hippo", "pseudo-chrysostom", "jerome" },
                segments = 5,
            },
        },
        ["MAT 7:12-14"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                    "glossa-ordinaria",
                    "john-chrysostom",
                    "cyprian-of-carthage",
                },
                segments = 8,
            },
            weekday = { authors = { "augustine-of-hippo", "glossa-ordinaria" }, segments = 4 },
        },
        ["MAT 7:15-20"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "rabanus-maurus",
                },
                segments = 6,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "augustine-of-hippo", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MAT 7:21"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "ambrosiaster",
                    "hilary-of-poitiers",
                },
                segments = 8,
            },
            weekday = {
                authors = { "jerome", "john-chrysostom", "pseudo-chrysostom", "ambrosiaster" },
                segments = 5,
            },
        },
        ["MAT 7:21-29"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "pseudo-chrysostom",
                    "ambrosiaster",
                    "rabanus-maurus",
                    "glossa-ordinaria",
                },
                segments = 10,
            },
            weekday = {
                authors = { "jerome", "john-chrysostom", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["MAT 7:24-27"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "rabanus-maurus",
                    "jerome",
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                },
                segments = 5,
            },
            weekday = {
                authors = { "john-chrysostom", "rabanus-maurus", "jerome", "hilary-of-poitiers" },
                segments = 4,
            },
        },
        ["MAT 7:6"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "rabanus-maurus",
                    "glossa-ordinaria",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                    "john-chrysostom",
                    "glossa-ordinaria",
                },
                segments = 4,
            },
        },
        ["MAT 7:7-12"] = {
            solemn = {
                authors = {
                    "jerome",
                    "augustine-of-hippo",
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = { authors = { "jerome", "augustine-of-hippo" }, segments = 4 },
        },
        ["MAT 8:1-4"] = {
            solemn = {
                authors = { "jerome", "pseudo-chrysostom", "haymo-of-halberstadt" },
                segments = 4,
            },
            weekday = {
                authors = { "jerome", "pseudo-chrysostom", "john-chrysostom" },
                segments = 3,
            },
        },
        ["MAT 8:18-22"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                    "augustine-of-hippo",
                    "jerome",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "remigius-of-auxerre", "hilary-of-poitiers" },
                segments = 3,
            },
        },
        ["MAT 8:23-27"] = {
            solemn = { authors = { "john-chrysostom", "jerome", "glossa-ordinaria" }, segments = 3 },
            weekday = { authors = { "john-chrysostom" }, segments = 1 },
        },
        ["MAT 8:28-34"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "rabanus-maurus",
                    "augustine-of-hippo",
                    "jerome",
                    "pseudo-augustine",
                },
                segments = 9,
            },
            weekday = {
                authors = { "john-chrysostom", "rabanus-maurus", "augustine-of-hippo", "jerome" },
                segments = 6,
            },
        },
        ["MAT 8:5-11"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "haymo-of-halberstadt",
                    "augustine-of-hippo",
                    "rabanus-maurus",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "augustine-of-hippo", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MAT 8:5-17"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "haymo-of-halberstadt",
                    "john-chrysostom",
                    "anselm-of-canterbury",
                },
                segments = 7,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "john-chrysostom", "jerome" },
                segments = 3,
            },
        },
        ["MAT 9:1-8"] = {
            solemn = {
                authors = { "john-chrysostom", "peter-chrysologus", "augustine-of-hippo", "jerome" },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "peter-chrysologus", "jerome" },
                segments = 4,
            },
        },
        ["MAT 9:14-15"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "john-chrysostom",
                    "rabanus-maurus",
                    "augustine-of-hippo",
                },
                segments = 6,
            },
            weekday = {
                authors = { "glossa-ordinaria", "jerome", "john-chrysostom" },
                segments = 5,
            },
        },
        ["MAT 9:14-17"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "jerome",
                    "john-chrysostom",
                    "rabanus-maurus",
                    "augustine-of-hippo",
                },
                segments = 6,
            },
            weekday = {
                authors = { "glossa-ordinaria", "jerome", "john-chrysostom" },
                segments = 5,
            },
        },
        ["MAT 9:18-26"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "jerome",
                    "glossa-ordinaria",
                    "ambrose-of-milan",
                },
                segments = 7,
            },
            weekday = { authors = { "john-chrysostom", "glossa-ordinaria" }, segments = 3 },
        },
        ["MAT 9:27-31"] = {
            solemn = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "jerome",
                    "john-chrysostom",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 5,
            },
        },
        ["MAT 9:32-38"] = {
            solemn = {
                authors = { "remigius-of-auxerre", "jerome", "john-chrysostom", "glossa-ordinaria" },
                segments = 6,
            },
            weekday = {
                authors = { "remigius-of-auxerre", "jerome", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["MAT 9:35-10:1"] = {
            solemn = {
                authors = {
                    "remigius-of-auxerre",
                    "jerome",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "augustine-of-hippo",
                },
                segments = 6,
            },
            weekday = {
                authors = { "remigius-of-auxerre", "jerome", "glossa-ordinaria" },
                segments = 4,
            },
        },
        ["MAT 9:36-10:8"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "jerome",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                    "hilary-of-poitiers",
                },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "glossa-ordinaria" }, segments = 3 },
        },
        ["MAT 9:5"] = {
            solemn = {
                authors = { "john-chrysostom", "peter-chrysologus", "augustine-of-hippo", "jerome" },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "peter-chrysologus", "jerome" },
                segments = 4,
            },
        },
        ["MAT 9:5a"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MAT 9:6-8"] = {
            solemn = {
                authors = { "john-chrysostom", "peter-chrysologus", "augustine-of-hippo", "jerome" },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "peter-chrysologus", "jerome" },
                segments = 4,
            },
        },
        ["MAT 9:9-13"] = {
            solemn = {
                authors = { "john-chrysostom", "jerome", "glossa-ordinaria", "remigius-of-auxerre" },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "jerome", "glossa-ordinaria", "remigius-of-auxerre" },
                segments = 4,
            },
        },
        ["MRK 10:1-12"] = {
            solemn = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 5 },
            weekday = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["MRK 10:13-16"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "john-chrysostom", "origen" },
                segments = 5,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "john-chrysostom", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 10:17-27"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "origen",
                },
                segments = 7,
            },
            weekday = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MRK 10:17-30"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "glossa-ordinaria",
                },
                segments = 6,
            },
            weekday = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "glossa-ordinaria" },
                segments = 3,
            },
        },
        ["MRK 10:2-16"] = {
            solemn = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "john-chrysostom" },
                segments = 5,
            },
            weekday = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 3 },
        },
        ["MRK 10:28-31"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "pseudo-chrysostom",
                },
                segments = 5,
            },
            weekday = {
                authors = { "glossa-ordinaria", "theophylact-of-ohrid", "pseudo-chrysostom" },
                segments = 3,
            },
        },
        ["MRK 10:32-45"] = {
            solemn = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "john-chrysostom" },
                segments = 4,
            },
            weekday = { authors = { "bede-the-venerable", "john-chrysostom" }, segments = 2 },
        },
        ["MRK 10:35-45"] = {
            solemn = {
                authors = { "john-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 4,
            },
            weekday = {
                authors = { "john-chrysostom", "augustine-of-hippo", "bede-the-venerable" },
                segments = 3,
            },
        },
        ["MRK 10:46-52"] = {
            solemn = {
                authors = {
                    "jerome",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "pseudo-chrysostom",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                },
                segments = 8,
            },
            weekday = {
                authors = { "jerome", "bede-the-venerable", "pseudo-jerome" },
                segments = 4,
            },
        },
        ["MRK 11:1-10"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "pseudo-jerome",
                },
                segments = 6,
            },
            weekday = {
                authors = { "john-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 11:11-26"] = {
            solemn = { authors = { "bede-the-venerable", "pseudo-jerome" }, segments = 3 },
            weekday = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 2 },
        },
        ["MRK 11:27-33"] = {
            solemn = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 4 },
            weekday = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 2 },
        },
        ["MRK 12:1-12"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
        },
        ["MRK 12:13-17"] = {
            solemn = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-jerome" },
                segments = 6,
            },
            weekday = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-jerome" },
                segments = 4,
            },
        },
        ["MRK 12:18-27"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-jerome",
                },
                segments = 7,
            },
            weekday = {
                authors = { "glossa-ordinaria", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 12:28-34"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                },
                segments = 6,
            },
            weekday = { authors = { "glossa-ordinaria", "theophylact-of-ohrid" }, segments = 3 },
        },
        ["MRK 12:35-37"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "pseudo-jerome",
                    "bede-the-venerable",
                    "glossa-ordinaria",
                },
                segments = 7,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "pseudo-jerome", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 12:38-44"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "pseudo-jerome", "bede-the-venerable" },
                segments = 5,
            },
            weekday = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 2 },
        },
        ["MRK 13:24-32"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "pseudo-jerome",
                    "bede-the-venerable",
                },
                segments = 5,
            },
            weekday = { authors = { "theophylact-of-ohrid" }, segments = 2 },
        },
        ["MRK 13:33-37"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "pseudo-jerome",
                    "bede-the-venerable",
                    "gregory-the-great",
                },
                segments = 6,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "pseudo-jerome", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 14:1-15:47"] = {
            solemn = {
                authors = {
                    "pseudo-jerome",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = { authors = { "pseudo-jerome", "bede-the-venerable" }, segments = 4 },
        },
        ["MRK 14:12-16"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                },
                segments = 7,
            },
            weekday = {
                authors = { "john-chrysostom", "bede-the-venerable", "pseudo-jerome" },
                segments = 3,
            },
        },
        ["MRK 14:22-26"] = {
            solemn = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-jerome" },
                segments = 8,
            },
            weekday = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-jerome" },
                segments = 5,
            },
        },
        ["MRK 16:1-7"] = {
            solemn = {
                authors = {
                    "pseudo-jerome",
                    "glossa-ordinaria",
                    "severian-of-gabala",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                    "bede-the-venerable",
                },
                segments = 6,
            },
            weekday = {
                authors = { "pseudo-jerome", "glossa-ordinaria", "severian-of-gabala" },
                segments = 3,
            },
        },
        ["MRK 16:15-18"] = {
            solemn = {
                authors = { "glossa-ordinaria", "gregory-the-great", "pseudo-jerome" },
                segments = 6,
            },
            weekday = {
                authors = { "glossa-ordinaria", "gregory-the-great", "pseudo-jerome" },
                segments = 4,
            },
        },
        ["MRK 16:15-20"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "gregory-the-great",
                    "pseudo-jerome",
                    "augustine-of-hippo",
                    "bede-the-venerable",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "gregory-the-great",
                    "pseudo-jerome",
                    "bede-the-venerable",
                },
                segments = 4,
            },
        },
        ["MRK 16:9-15"] = {
            solemn = {
                authors = {
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "gregory-the-great",
                    "glossa-ordinaria",
                    "pseudo-jerome",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "augustine-of-hippo",
                    "bede-the-venerable",
                    "glossa-ordinaria",
                    "gregory-the-great",
                },
                segments = 4,
            },
        },
        ["MRK 1:1-8"] = {
            solemn = { authors = { "jerome", "bede-the-venerable", "pseudo-jerome" }, segments = 5 },
            weekday = { authors = { "jerome", "bede-the-venerable" }, segments = 2 },
        },
        ["MRK 1:12-15"] = {
            solemn = {
                authors = {
                    "john-chrysostom",
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "theophylact-of-ohrid",
                },
                segments = 5,
            },
            weekday = { authors = { "john-chrysostom" }, segments = 1 },
        },
        ["MRK 1:14-20"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "pseudo-chrysostom",
                    "theophylact-of-ohrid",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                },
                segments = 5,
            },
        },
        ["MRK 1:21-28"] = {
            solemn = {
                authors = {
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "pseudo-jerome", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 3,
            },
        },
        ["MRK 1:29-39"] = {
            solemn = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-chrysostom" },
                segments = 10,
            },
            weekday = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 4 },
        },
        ["MRK 1:40-45"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                },
                segments = 6,
            },
            weekday = {
                authors = { "bede-the-venerable", "augustine-of-hippo", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["MRK 1:7-11"] = {
            solemn = {
                authors = {
                    "pseudo-jerome",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "pseudo-chrysostom",
                },
                segments = 5,
            },
            weekday = { authors = { "pseudo-jerome", "bede-the-venerable" }, segments = 2 },
        },
        ["MRK 2:1-12"] = {
            solemn = {
                authors = { "bede-the-venerable", "augustine-of-hippo", "pseudo-chrysostom" },
                segments = 4,
            },
            weekday = { authors = { "bede-the-venerable", "augustine-of-hippo" }, segments = 2 },
        },
        ["MRK 2:13-17"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "pseudo-jerome",
                },
                segments = 6,
            },
            weekday = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-jerome" },
                segments = 4,
            },
        },
        ["MRK 2:18-22"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "bede-the-venerable",
                },
                segments = 4,
            },
        },
        ["MRK 2:23-28"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "bede-the-venerable",
                    "john-chrysostom",
                    "augustine-of-hippo",
                    "theophylact-of-ohrid",
                },
                segments = 7,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "bede-the-venerable", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MRK 3:1-6"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "pseudo-chrysostom" },
                segments = 5,
            },
            weekday = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 2 },
        },
        ["MRK 3:13-19"] = {
            solemn = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-chrysostom" },
                segments = 8,
            },
            weekday = {
                authors = { "bede-the-venerable", "theophylact-of-ohrid", "pseudo-chrysostom" },
                segments = 5,
            },
        },
        ["MRK 3:20-21"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "theophylact-of-ohrid",
                    "pseudo-jerome",
                },
                segments = 6,
            },
            weekday = { authors = { "bede-the-venerable", "pseudo-chrysostom" }, segments = 3 },
        },
        ["MRK 3:20-35"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "theophylact-of-ohrid",
                    "glossa-ordinaria",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = { authors = { "bede-the-venerable", "pseudo-chrysostom" }, segments = 2 },
        },
        ["MRK 3:22-30"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                },
                segments = 6,
            },
            weekday = { authors = { "bede-the-venerable", "pseudo-chrysostom" }, segments = 2 },
        },
        ["MRK 3:31-35"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "john-chrysostom", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 3:7-12"] = {
            solemn = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 5 },
            weekday = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["MRK 4:1-20"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-jerome",
                    "john-chrysostom",
                },
                segments = 9,
            },
            weekday = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-jerome",
                    "john-chrysostom",
                },
                segments = 5,
            },
        },
        ["MRK 4:21-25"] = {
            solemn = {
                authors = { "john-chrysostom", "pseudo-jerome", "theophylact-of-ohrid" },
                segments = 6,
            },
            weekday = { authors = { "john-chrysostom", "pseudo-jerome" }, segments = 3 },
        },
        ["MRK 4:26-34"] = {
            solemn = {
                authors = {
                    "pseudo-chrysostom",
                    "pseudo-jerome",
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "pseudo-chrysostom",
                    "pseudo-jerome",
                    "glossa-ordinaria",
                    "john-chrysostom",
                },
                segments = 4,
            },
        },
        ["MRK 4:35-41"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MRK 5:1-20"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "augustine-of-hippo",
                    "john-chrysostom",
                    "gregory-of-nyssa",
                },
                segments = 7,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "pseudo-chrysostom" },
                segments = 3,
            },
        },
        ["MRK 5:21-43"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "augustine-of-hippo", "john-chrysostom" },
                segments = 5,
            },
            weekday = { authors = { "theophylact-of-ohrid", "augustine-of-hippo" }, segments = 3 },
        },
        ["MRK 6:1-6"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "augustine-of-hippo" },
                segments = 6,
            },
            weekday = { authors = { "theophylact-of-ohrid", "augustine-of-hippo" }, segments = 4 },
        },
        ["MRK 6:14-29"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                },
                segments = 9,
            },
            weekday = {
                authors = { "glossa-ordinaria", "pseudo-chrysostom", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["MRK 6:17-29"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "glossa-ordinaria",
                    "remigius-of-auxerre",
                },
                segments = 8,
            },
            weekday = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 4 },
        },
        ["MRK 6:30-34"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                },
                segments = 8,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["MRK 6:34-44"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "augustine-of-hippo",
                },
                segments = 10,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                },
                segments = 5,
            },
        },
        ["MRK 6:45-52"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "pseudo-chrysostom",
                    "bede-the-venerable",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = { "glossa-ordinaria", "pseudo-chrysostom", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["MRK 6:53-56"] = {
            solemn = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-jerome",
                },
                segments = 6,
            },
            weekday = {
                authors = {
                    "glossa-ordinaria",
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-jerome",
                },
                segments = 4,
            },
        },
        ["MRK 6:7-13"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "gregory-the-great",
                    "pseudo-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "pseudo-chrysostom" },
                segments = 3,
            },
        },
        ["MRK 7:1-13"] = {
            solemn = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 3 },
            weekday = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["MRK 7:1-8"] = {
            solemn = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 3 },
            weekday = { authors = { "bede-the-venerable", "theophylact-of-ohrid" }, segments = 2 },
        },
        ["MRK 7:14-15"] = {
            solemn = {
                authors = { "pseudo-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 7,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 7:14-23"] = {
            solemn = {
                authors = { "pseudo-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 7,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 7:21-23"] = {
            solemn = {
                authors = { "pseudo-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 7,
            },
            weekday = {
                authors = { "pseudo-chrysostom", "theophylact-of-ohrid", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 7:24-30"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "pseudo-chrysostom", "pseudo-augustine" },
                segments = 5,
            },
            weekday = { authors = { "theophylact-of-ohrid", "pseudo-chrysostom" }, segments = 3 },
        },
        ["MRK 7:31-37"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "pseudo-chrysostom" },
                segments = 5,
            },
            weekday = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 2 },
        },
        ["MRK 8:1-10"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "augustine-of-hippo" },
                segments = 6,
            },
            weekday = { authors = { "theophylact-of-ohrid" }, segments = 2 },
        },
        ["MRK 8:11-13"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "augustine-of-hippo", "bede-the-venerable" },
                segments = 6,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "augustine-of-hippo", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 8:14-21"] = {
            solemn = {
                authors = { "theophylact-of-ohrid", "augustine-of-hippo", "bede-the-venerable" },
                segments = 6,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "augustine-of-hippo", "bede-the-venerable" },
                segments = 4,
            },
        },
        ["MRK 8:27-35"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "john-chrysostom",
                },
                segments = 8,
            },
            weekday = { authors = { "theophylact-of-ohrid", "bede-the-venerable" }, segments = 5 },
        },
        ["MRK 9:2-10"] = {
            solemn = {
                authors = {
                    "pseudo-jerome",
                    "john-chrysostom",
                    "theophylact-of-ohrid",
                    "pseudo-chrysostom",
                    "origen",
                },
                segments = 8,
            },
            weekday = {
                authors = { "pseudo-jerome", "theophylact-of-ohrid", "john-chrysostom", "origen" },
                segments = 4,
            },
        },
        ["MRK 9:30-37"] = {
            solemn = {
                authors = {
                    "theophylact-of-ohrid",
                    "bede-the-venerable",
                    "pseudo-jerome",
                    "jerome",
                },
                segments = 8,
            },
            weekday = {
                authors = { "theophylact-of-ohrid", "bede-the-venerable", "pseudo-jerome" },
                segments = 4,
            },
        },
        ["MRK 9:38-40"] = {
            solemn = {
                authors = { "bede-the-venerable", "pseudo-chrysostom", "theophylact-of-ohrid" },
                segments = 7,
            },
            weekday = {
                authors = { "bede-the-venerable", "pseudo-chrysostom", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["MRK 9:38-43"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "pseudo-chrysostom",
                    "theophylact-of-ohrid",
                    "john-chrysostom",
                },
                segments = 7,
            },
            weekday = {
                authors = { "bede-the-venerable", "pseudo-chrysostom", "john-chrysostom" },
                segments = 4,
            },
        },
        ["MRK 9:41-50"] = {
            solemn = { authors = {}, segments = 0 },
            weekday = { authors = {}, segments = 0 },
        },
        ["MRK 9:45"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "pseudo-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "bede-the-venerable", "john-chrysostom", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
        ["MRK 9:47-48"] = {
            solemn = {
                authors = {
                    "bede-the-venerable",
                    "john-chrysostom",
                    "glossa-ordinaria",
                    "pseudo-jerome",
                    "pseudo-chrysostom",
                },
                segments = 8,
            },
            weekday = {
                authors = { "bede-the-venerable", "john-chrysostom", "theophylact-of-ohrid" },
                segments = 4,
            },
        },
    },
}
