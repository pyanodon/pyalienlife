-- Secondary Upgrade Recipes --

RECIPE {
    type = "recipe",
    name = "seaweed-mk02",
    category = "seaweed",
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "water",            amount = 200, fluidbox_index = 2},
        {type = "item",  name = "molybdenum-oxide", amount = 5},
        {type = "item",  name = "fertilizer",       amount = 1},
        {type = "item",  name = "seaweed",          amount = 5}
    },
    results = {{type = "item", name = "seaweed-mk02", amount = 1}}
}:add_unlock("seaweed-mk02")

RECIPE {
    type = "recipe",
    name = "seaweed-mk03",
    category = "seaweed",
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "water-saline",     amount = 200, fluidbox_index = 2},
        {type = "item",  name = "molybdenum-oxide", amount = 10},
        {type = "item",  name = "fertilizer",       amount = 1},
        {type = "item",  name = "seaweed-mk02",     amount = 5},
        {type = "item",  name = "pesticide-mk01",   amount = 5},
    },
    results = {{type = "item", name = "seaweed-mk03", amount = 1}}
}:add_unlock("seaweed-mk03")

RECIPE {
    type = "recipe",
    name = "seaweed-mk04",
    category = "seaweed",
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "slacked-lime",     amount = 200, fluidbox_index = 2},
        {type = "item",  name = "molybdenum-oxide", amount = 15},
        {type = "item",  name = "fertilizer",       amount = 1},
        {type = "item",  name = "seaweed-mk03",     amount = 5},
        {type = "item",  name = "pesticide-mk01",   amount = 5},
        {type = "item",  name = "pesticide-mk02",   amount = 5},
    },
    results = {{type = "item", name = "seaweed-mk04", amount = 1}}
}:add_unlock("seaweed-mk04")
