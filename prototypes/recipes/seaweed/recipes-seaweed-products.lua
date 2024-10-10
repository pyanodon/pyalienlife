--------------------------SEA WEED-----------------------

RECIPE {
    type = "recipe",
    name = "seaweed",
    category = "seaweed",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "water", amount = 200, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "seaweed", amount = 10},
    },
}:add_unlock("seaweed-mk01")

RECIPE {
    type = "recipe",
    name = "seaweed-2",
    category = "seaweed",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "water-saline",   amount = 100, fluidbox_index = 1},
        {type = "fluid", name = "carbon-dioxide", amount = 100, fluidbox_index = 3},
        {type = "item",  name = "limestone",      amount = 2},
    },
    results = {
        {type = "item", name = "seaweed", amount = 20},
    },
}:add_unlock("seaweed-mk02")

RECIPE {
    type = "recipe",
    name = "seaweed-3",
    category = "seaweed",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "water-saline",   amount = 100, fluidbox_index = 1},
        {type = "fluid", name = "carbon-dioxide", amount = 100, fluidbox_index = 3},
        {type = "fluid", name = "slacked-lime",   amount = 50,  fluidbox_index = 4},
        {type = "item",  name = "fertilizer",     amount = 1},
    },
    results = {
        {type = "item", name = "seaweed", amount = 30},
    },
}:add_unlock("seaweed-mk03")

RECIPE {
    type = "recipe",
    name = "seaweed-4",
    category = "seaweed",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "water-saline",   amount = 100, fluidbox_index = 1},
        {type = "fluid", name = "carbon-dioxide", amount = 100, fluidbox_index = 3},
        {type = "fluid", name = "slacked-lime",   amount = 100, fluidbox_index = 4},
        {type = "item",  name = "fertilizer",     amount = 1},
        {type = "item",  name = "iron-ore-dust",  amount = 3},
    },
    results = {
        {type = "item", name = "seaweed", amount = 60},
    },
}:add_unlock("seaweed-mk04")

RECIPE {
    type = "recipe",
    name = "seaweed-5",
    category = "seaweed",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water-saline",   amount = 200, fluidbox_index = 1},
        {type = "fluid", name = "carbon-dioxide", amount = 200, fluidbox_index = 3},
        {type = "fluid", name = "slacked-lime",   amount = 100, fluidbox_index = 4},
        {type = "item",  name = "fertilizer",     amount = 3},
        {type = "item",  name = "iron-ore-dust",  amount = 5},
    },
    results = {
        {type = "item", name = "seaweed", amount = 120},
    },
}:add_unlock("seaweed-mk05"):add_ingredient {type = "item", name = "powdered-phosphate-rock", amount = 10}
