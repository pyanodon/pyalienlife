py.autorecipes {
    name = "yaedols",
    category = "yaedols",
    main_product = "yaedols",
    mats =
    {
        --logistic
        {
            ingredients =
            {
                {name = "yaedols-spores",   amount = 2},
                {name = "wood",             amount = 10},
                {name = "water",            amount = 80, fluidbox_index = 1},
                {name = "fungal-substrate", amount = 2},
                {name = "fertilizer",       amount = 5},
            },
            results =
            {
                {name = "yaedols", amount = 3}
            },
            crafting_speed = 140,
            tech = "yaedols"
        },
        --py
        {
            ingredients =
            {
                {name = "yaedols-spores",      add_amount = 2},
                {name = "fungal-substrate-03", amount = 2},
                {name = "fertilizer",          add_amount = 5},
            },
            results =
            {
                {name = "yaedols", add_amount = 3}
            },
            crafting_speed = 110,
            tech = "yaedols-mk02"
        },
        --prod
        {
            ingredients =
            {
                {name = "yaedols-spores", add_amount = 4},
                {name = "biomass",        amount = 10},
                {name = "nitrogen",       amount = 150,  fluidbox_index = 2},
                {name = "urea",           amount = 10,   fallback = "manure"},
            },
            results =
            {
                {name = "yaedols", add_amount = 6}
            },
            crafting_speed = 80,
            tech = "yaedols-mk03"
        },
        --utility
        {
            ingredients =
            {
                {name = "yaedols-spores",    add_amount = 8},
                {name = "urea",              add_amount = 10, fallback = "manure"},
                {name = "bacteria-2-barrel", amount = 4,      fallback = "bacteria-1-barrel", return_barrel = true},
                {name = "fertilizer",        add_amount = 5},
                {name = "biomass",           add_amount = 15},
            },
            results =
            {
                {name = "yaedols", add_amount = 12}
            },
            crafting_speed = 50,
            tech = "yaedols-mk04"
        },
    }
}

--[[
    {
        ingredients =
            {
                {name='gh', amount =1},
            },
        results =
            {
                {name='yaedols', amount =15}
            },
        crafting_speed = 70,
        tech = 'yaedols-mk04'
    },
	}
}
]] --
