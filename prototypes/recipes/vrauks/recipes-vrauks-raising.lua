py.autorecipes {
    name = "vrauks",
    category = "vrauks",
    module_limitations = "vrauks",
    subgroup = "py-alienlife-vrauks",
    order = "b",
    main_product = "vrauks",
    crafting_speed = 160,
    mats = {
        -- base
        {
            ingredients = {
                {name = "cocoon", amount = 10},
                {name = "native-flora", amount = 15},
                {name = "moss", amount = 5},
                {name = "water-barrel", amount = 3, return_barrel = true}
            },
            results = {
                {name = "vrauks", amount = 2},
            },
            tech = "vrauks"
        },
        -- py science 1
        {
            ingredients = {
                {name = "cocoon", add_amount = 10},
                {name = "native-flora", remove_item = true},
                {name = "moss", add_amount = 3},
                {name = "vrauks-food-01", amount = 2},
                {name = "saps", amount = 10}
            },
            results = {{name = "vrauks", amount = 4},},
            tech = "vrauks-mk02"
        },
        -- py science 2
        {
            ingredients = {
                {name = "cocoon", add_amount = 10},
                {name = "bedding", amount = 1},
                {name = "vrauks-food-02", amount = 1},
                {name = "saps", add_amount = 10}
            },
            results = {{name = "vrauks", amount = 8}},
            tech = "vrauks-mk03"
        },
        -- py science 3
        {
            ingredients = {
                {name = "cocoon", add_amount = 10},
                {name = "bedding", add_amount = 5},
                {name = "honeycomb", amount = 4},
                {name = "syrup-01-barrel", amount = 2, return_barrel = true},
                {name = "gh", amount = 1}
            },
            results = {{name = "vrauks", amount = 12}},
            tech = "vrauks-mk04"
        },
        -- py science 4
        {
            ingredients = {
                {name = "cocoon", add_amount = 10},
                {name = "bedding", add_amount = 5},
                {name = "vrauks-food-01", add_amount = 7},
                {name = "vrauks-food-02", add_amount = 6},
                {name = "antiviral", amount = 1}
            },
            results = {{name = "vrauks", remove_item = true}, {name = "vrauks", amount = 20}},
            tech = "vrauks-mk05"
        }
    }
}

------------------CUB MAKER------------------

py.autorecipes {
    name = "vrauks-cocoon",
    category = 'rc',
	allowed_module_categories = {'vrauks'},
    -- module_limitations = 'vrauks',
    subgroup = "py-alienlife-vrauks",
    order = "c",
    main_product = "cocoon",
    crafting_speed = 40,
    mats = {
        -- base
        {
            ingredients = {
                --{name = "vrauks", amount = 2},
                {name = "moss", amount = 10},
                {name = "saps", amount = 3},
                {name = "water-barrel", amount = 4, return_barrel = true}
            },
            results = {
                {name = "cocoon", amount_min = 5, amount_max = 8},
                --{name = "vrauks", amount = 2},
            },
            tech = "vrauks"
        },
        -- -- py science 1
        {
            ingredients = {{name = "native-flora", amount = 5}, {name = "vrauks-food-01", amount = 1}},
            results = {{name = "cocoon", amount_min = 8, amount_max = 12}},
            tech = "vrauks-mk02"
        },
        -- -- py science 2
        {
            ingredients = {
                {name = "bedding", amount = 1},
                {name='vrauks-food-01',remove_item = true},
                {name = "vrauks-food-02", amount = 1},
                {name = "saps", add_amount = 7}
            },
            results = {{name = "cocoon", amount_min = 12, amount_max = 18}},
            tech = "vrauks-mk03"
        },
        -- -- py science 3
        {
            ingredients = {
                {name = "vrauks-food-02", add_amount = 8},
                {name = "bedding", add_amount = 5},
                {name = "honeycomb", amount = 4},
                {name = "syrup-01-barrel", amount = 2, return_barrel = true},
                {name = "fawogae", amount = 5}
            },
            results = {{name = "cocoon", amount_min = 17, amount_max = 28}},
            tech = "vrauks-mk04"
        },
        -- -- py science 4
        {
            ingredients = {
                {name = "vrauks-food-02", add_amount = 8},
                {name = "bedding", add_amount = 5},
				{name = "pheromones", amount = 1},
            },
            results = {{name = "cocoon", amount_min = 26, amount_max = 41}},
            tech = "vrauks-mk05"
        }
    }
}
