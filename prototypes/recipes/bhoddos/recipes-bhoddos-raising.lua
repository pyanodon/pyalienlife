py.autorecipes {
    name = "bhoddos",
    category = "bhoddos",
    subgroup = "py-alienlife-bhoddos",
    order = "b",
    mats =
    {
        --green
        {
            ingredients =
            {
                {name = "bhoddos-spore",       amount = 5},
                {name = "fungal-substrate-02", amount = 1},
                {name = "biomass",             amount = 10},
                {name = "water",               amount = 100, fluidbox_index = 1},
            },
            results =
            {
                {name = "bhoddos", amount = 5}
            },
            crafting_speed = 130,
            tech = "bhoddos"
        },
        --py
        {
            ingredients =
            {
                {name = "fungal-substrate-03", amount = 2},
                {name = "ash",                 amount = 10},
                {name = "manure",              amount = 5},
            },
            results =
            {
                {name = "bhoddos", add_amount = 5}
            },
            crafting_speed = 100,
            tech = "bhoddos-mk02"
        },
        --chem
        {
            ingredients =
            {
                {name = "fungal-substrate-03", add_amount = 2},
                {name = "manure",              add_amount = 5},
                {name = "moss",                amount = 10},
                {name = "ammonia",             amount = 50,   fallback = "nitrogen", fluidbox_index = 2},
                {name = "urea",                amount = 10,   fallback = "manure"},
            },
            results =
            {
                {name = "bhoddos", add_amount = 5}
            },
            crafting_speed = 70,
            tech = "bhoddos-mk03"
        },
        --prod
        {
            ingredients =
            {
                {name = "gh",                amount = 1},
                {name = "urea",              amount = 10,    fallback = "manure"},
                {name = "bacteria-2-barrel", amount = 1,     fallback = "bacteria-1-barrel"},
                {name = "manure",            add_amount = 10},
                {name = "moss",              add_amount = 15},
            },
            results =
            {
                {name = "bhoddos", add_amount = 10},
                {name = "barrel",  amount = 1}
            },
            crafting_speed = 40,
            tech = "bhoddos-mk04",
            main_product = "bhoddos"
        },
    }
}
