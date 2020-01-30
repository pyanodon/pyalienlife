local fun = require("prototypes/functions/functions")


--Example result replacer
--results_replacer(recipe name*, old item*, new item*, new_amount**)
--to use copy the local at top to the given file and then add the following line with the required variables
--fun.results_replacer("biomass-1", "biomass", "iron-plate", 3)

--*required
--**optional. whole numbers only

--log(serpent.block(data.raw.recipe["biomass-1"]))


RECIPE {
    type = 'recipe',
    name = 'yotoi-to-chelator',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'yotoi', amount = 3},
    },
    results = {
        {type = 'fluid', name = 'chelator', amount = 25},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'fawogae-to-chelator',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'chelator', amount = 50},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'yeadols-to-chelator',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'yaedols', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'chelator', amount = 50},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'phytoplankton-to-chelator',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'phytoplankton', amount = 50},
    },
    results = {
        {type = 'fluid', name = 'chelator', amount = 50},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'seaweed-to-chelator',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'seaweed', amount = 20},
        {type = 'item', name = 'moss', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'chelator', amount = 100},
    },
}:add_unlock("phytomining-mk02")


-------PLANTS EXTRACTION----------

RECIPE {
    type = 'recipe',
    name = 'grod-pb',
    category = 'grod',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'grod', amount = 1},
    },
    results = {
        {type = 'item', name = 'pb-biomass', amount = 10},
        {type = 'fluid', name = 'waste-water', amount = 50},
    },
    main_product = "pb-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/pb-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining")

-------BIOMASS EXTRACTION----------

RECIPE {
    type = 'recipe',
    name = 'pb-biomass-extraction',
    category = 'biofactory',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'pb-biomass', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100, temperature = 165},
    },
    results = {
        {type = 'item', name = 'ore-lead', amount = 15},
        {type = 'item', name = 'biomass', amount = 5},
    },
    main_product = "ore-lead",
    icon = '__pyraworesgraphics__/graphics/icons/mip/ore-lead.png',
    icon_size = 64,
}:add_unlock("phytomining"):change_category('pulp')