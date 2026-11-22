--MANURE

py.autorecipes {
    name = "mukmoux-manure",
    category = "mukmoux",
    main_product = "manure",
    subgroup = "py-alienlife-mukmoux",
    order = "c",
    number_icons = true,
    mats =
    {
        --logistic
        {
            ingredients =
            {
                {name = "fawogae",         amount = 30},
                {name = "ralesia-seeds",   amount = 30},
                {name = "mukmoux-food-01", amount = 2},
                {name = "bedding",         amount = 2},
                {name = "water-barrel",    amount = 15},
            },
            results =
            {
                {name = "manure",                 amount = 5},
                {name = "barrel",                 amount = 14},
                {name = "manure-bacteria-barrel", amount = 1},
            },
            crafting_speed = 90,
            tech = "mukmoux"
        },
        --py
        {
            ingredients =
            {
                {name = "salt",      amount = 5},
                {name = "raw-fiber", amount = 4},
            },
            results =
            {
                {name = "manure",                 add_amount = 5},
                {name = "barrel",                 add_amount = -1},
                {name = "manure-bacteria-barrel", add_amount = 1},
            },
            crafting_speed = 80,
            tech = "mukmoux-mk02"
        },
        --chem
        {
            ingredients =
            {
                {name = "mukmoux-food-02", amount = 2},
                {name = "mukmoux-food-01", remove_item = true},
                {name = "salt",            amount = 4},
            },
            results =
            {
                {name = "manure",                 add_amount = 5},
                {name = "barrel",                 add_amount = -1},
                {name = "manure-bacteria-barrel", add_amount = 1},
            },
            crafting_speed = 60,
            tech = "mukmoux-mk03"
        },
        --prod
        {
            ingredients =
            {
                {name = "raw-fiber", add_amount = 5},
            },
            results =
            {
                {name = "manure",                 add_amount = 5},
                {name = "barrel",                 add_amount = -1},
                {name = "manure-bacteria-barrel", add_amount = 1},
            },
            crafting_speed = 50,
            tech = "mukmoux-mk04"
        },
    }
}
