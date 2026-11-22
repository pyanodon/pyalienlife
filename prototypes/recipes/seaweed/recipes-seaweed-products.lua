--------------------------SEA WEED-----------------------

py.autorecipes {
    name = "seaweed",
    category = "seaweed",
    number_icons = true,
    mats = {
        --base
        {
            ingredients =
            {
                {type = "fluid", name = "water", amount = 200, fluidbox_index = 2},
            },
            results =
            {
                {type = "item", name = "seaweed", amount = 10},
            },
            crafting_speed = 50,
            tech = "seaweed-mk01",
        },
        {
            ingredients = {
                {type = "fluid", name = "water-saline",   amount = 100,      fluidbox_index = 1},
                {type = "fluid", name = "carbon-dioxide", amount = 100,      fluidbox_index = 3},
                {type = "item",  name = "limestone",      amount = 2},
                {type = "fluid", name = "water",          remove_item = true}
            },
            results = {
                {type = "item", name = "seaweed", add_amount = 10},
            },
            crafting_speed = 40,
            tech = "seaweed-mk02",
        },
        {
            ingredients = {
                {type = "fluid", name = "slacked-lime", amount = 50,       fluidbox_index = 4},
                {type = "item",  name = "fertilizer",   amount = 1},
                {type = "item",  name = "limestone",    remove_item = true},
            },
            results = {
                {type = "item", name = "seaweed", add_amount = 10},
            },
            crafting_speed = 30,
            tech = "seaweed-mk03",
        },
        {
            ingredients = {
                {type = "fluid", name = "slacked-lime",  add_amount = 50},
                {type = "item",  name = "iron-ore-dust", amount = 3},
            },
            results = {
                {type = "item", name = "seaweed", add_amount = 30},
            },
            crafting_speed = 20,
            tech = "seaweed-mk04",
        },
        {
            ingredients = {
                {type = "fluid", name = "water-saline",   add_amount = 100},
                {type = "fluid", name = "carbon-dioxide", add_amount = 100},
                {type = "item",  name = "fertilizer",     add_amount = 2},
                {type = "item",  name = "iron-ore-dust",  add_amount = 2},
                mods.pyhightech and {type = "item", name = "powdered-phosphate-rock", amount = 10} or nil
            },
            results = {
                {type = "item", name = "seaweed", add_amount = 60},
            },
            crafting_speed = 10,
            tech = "seaweed-mk05",
        }
    }
}
