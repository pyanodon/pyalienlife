py.autorecipes {
    name = "vrauks",
    category = "vrauks",
    subgroup = "py-alienlife-vrauks",
    order = "b",
    main_product = "vrauks",
    mats = {
        -- base
        {
            ingredients = {
                {name = "cocoon",       amount = 10},
                {name = "native-flora", amount = 15},
                {name = "moss",         amount = 5},
                {name = "water-barrel", amount = 3, return_barrel = true}
            },
            results = {
                {name = "vrauks", amount = 2},
            },
            crafting_speed = 160,
            tech = "vrauks"
        },
        -- py science 1
        {
            ingredients = {
                {name = "cocoon",         add_amount = 10},
                {name = "native-flora",   remove_item = true},
                {name = "moss",           add_amount = 3},
                {name = "vrauks-food-01", amount = 2},
                {name = "saps",           amount = 10}
            },
            results = {{name = "vrauks", amount = 4},},
            crafting_speed = 130,
            tech = "vrauks-mk02"
        },
        -- py science 2
        {
            ingredients = {
                {name = "cocoon",         add_amount = 10},
                {name = "bedding",        amount = 1},
                {name = "vrauks-food-02", amount = 1},
                {name = "saps",           add_amount = 10}
            },
            results = {{name = "vrauks", amount = 8}},
            crafting_speed = 100,
            tech = "vrauks-mk03"
        },
        -- py science 3
        {
            ingredients = {
                {name = "saps",            remove_item = true},
                {name = "moss",            remove_item = true},
                {name = "vrauks-food-01",  remove_item = true},
                {name = "cocoon",          add_amount = 10},
                {name = "bedding",         add_amount = 3},
                {name = "honeycomb",       amount = 4},
                {name = "syrup-01-barrel", amount = 2,        return_barrel = true},
                {name = "gh",              amount = 1}
            },
            results = {{name = "vrauks", amount = 16}},
            crafting_speed = 70,
            tech = "vrauks-mk04"
        },
        -- py science 4
        {
            ingredients = {
                {name = "cocoon",         add_amount = 10},
                {name = "bedding",        add_amount = 4},
                {name = "vrauks-food-02", add_amount = 6},
                {name = "antiviral",      amount = 1}
            },
            results = {{name = "vrauks", amount = 32}},
            crafting_speed = 40,
            tech = "vrauks-mk05"
        }
    }
}

------------------CUB MAKER------------------

py.autorecipes {
    name = "vrauks-cocoon",
    category = "rc",
    allowed_module_categories = {"vrauks"},
    subgroup = "py-alienlife-vrauks",
    order = "c",
    main_product = "cocoon",
    mats = {
        -- base
        {
            ingredients = {
                --{name = "vrauks", amount = 2},
                {name = "moss",         amount = 10},
                {name = "saps",         amount = 3},
                {name = "native-flora", amount = 5},
                {name = "water-barrel", amount = 4, return_barrel = true}
            },
            results = {
                {name = "cocoon", amount_min = 4, amount_max = 6},
                --{name = "vrauks", amount = 2},
            },
            crafting_speed = 40,
            tech = "vrauks"
        },
        -- -- py science 1
        {
            ingredients = {
                {name = "moss",           add_amount = 10},
                {name = "saps",           add_amount = 3},
                {name = "native-flora",   add_amount = 5},
                {name = "vrauks-food-01", amount = 1}
            },
            results = {{name = "cocoon", amount_min = 8, amount_max = 12}},
            crafting_speed = 35,
            tech = "vrauks-mk02"
        },
        -- -- py science 2
        {
            ingredients = {
                {name = "saps",           remove_item = true},
                {name = "moss",           remove_item = true},
                {name = "native-flora",   add_amount = 5},
                {name = "bedding",        amount = 1},
                {name = "vrauks-food-01", add_amount = 1},
                {name = "vrauks-food-02", amount = 1},
                {name = "saps",           add_amount = 7},
                {name = "fawogae",        amount = 5}
            },
            results = {{name = "cocoon", amount_min = 16, amount_max = 24}},
            crafting_speed = 30,
            tech = "vrauks-mk03"
        },
        -- -- py science 3
        {
            ingredients = {
                {name = "vrauks-food-01", remove_item = true},
                {name = "native-flora",   remove_item = true},
                {name = "vrauks-food-02", add_amount = 2},
                {name = "bedding",        add_amount = 3},
                {name = "honeycomb",      amount = 4},
                --{name = "syrup-01-barrel", amount = 2, return_barrel = true},
            },
            results = {{name = "cocoon", amount_min = 32, amount_max = 48}},
            crafting_speed = 20,
            tech = "vrauks-mk04"
        },
        -- -- py science 4
        {
            ingredients = {
                {name = "vrauks-food-02", add_amount = 3},
                {name = "bedding",        add_amount = 4},
                --{name = "pheromones", amount = 1},
            },
            results = {{name = "cocoon", amount_min = 64, amount_max = 96}},
            crafting_speed = 10,
            tech = "vrauks-mk05"
        }
    }
}
