local fun = require("prototypes/functions/functions")

if mods['pyhightech'] then
    require('prototypes/recipes/recipes-moondrop-products')
end

--BUILDINDS--


----RECIPES----

RECIPE('retrovirus'):add_ingredient({type = "fluid", name = "hot-air", amount = 50})
RECIPE('cobalt-fluoride'):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "hot-air", amount = 100})
RECIPE('nitrogen-mustard'):remove_ingredient("anthraquinone"):add_ingredient({type = "fluid", name = "chloroethanol", amount = 100})
RECIPE('rubber-01'):add_ingredient({type = "item", name = "latex", amount = 1})
RECIPE('rubber-02'):add_ingredient({type = "item", name = "latex", amount = 1})
RECIPE('rubber-03'):add_ingredient({type = "item", name = "latex", amount = 1})
RECIPE('rubber-04'):add_ingredient({type = "item", name = "latex", amount = 1})
RECIPE('logistic-science-01'):replace_ingredient("water","crude-oil")
RECIPE('chemical-science-01'):replace_ingredient("water","crude-oil")
RECIPE('production-science-01'):replace_ingredient("water","crude-oil")
RECIPE('chemical-science-01'):replace_ingredient("water","crude-oil")
RECIPE('harvester'):replace_ingredient("small-parts-01","small-parts-03")
RECIPE('seeds-extract-01'):add_ingredient({type = "item", name = "guar-seeds", amount = 100})
RECIPE('arqad-jelly-01'):replace_ingredient("active-carbon","carbon-black"):replace_ingredient("oleochemicals-barrel","btx-barrel")

fun.results_replacer("crude-from-manure", "crude-oil", "scrude")
fun.results_replacer("crude-from-manure", "ash", "soot")
fun.results_replacer("guar-separation", "organics", "biomass")
fun.results_replacer("bitumen-comb", "tar", "bitumen")

----EXCLUSIVE RECIPES----

RECIPE {
    type = 'recipe',
    name = 'dried-grods-02',
    category = 'evaporator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'grod', amount = 5},
        {type = 'fluid', name = 'hot-air', amount = 100},
    },
    results = {
        {type = 'item', name = 'dried-grods', amount = 6},
    },
}:add_unlock('grod')

RECIPE {
    type = 'recipe',
    name = 'gas-bladder-to-natura-gas',
    category = 'gas-separator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'gas-bladder', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'natural-gas', amount = 50}
    }
}:add_unlock('phagnot-mk02'):change_category('gas-refinery')

RECIPE {
    type = 'recipe',
    name = 'subcritical-water-2',
    category = 'heat-exchanger',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'pressured-water', amount = 200},
        {type = 'fluid', name = 'hot-air', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'subcritical-water', amount = 200},
    },
}:add_unlock("biotech-mk02")


RECIPE {
    type = 'recipe',
    name = 'guar-nb',
    category = 'guar',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'guar-seeds', amount = 40},
    },
    results = {
        {type = 'item', name = 'nb-biomass', amount = 10},
        {type = 'fluid', name = 'waste-water', amount = 50},
    },
    main_product = "nb-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/nb-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'guar-nb-2',
    category = 'guar',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'guar-seeds', amount = 40},
        {type = 'fluid', name = 'chelator', amount = 50},
    },
    results = {
        {type = 'item', name = 'nb-biomass', amount = 20},
        {type = 'fluid', name = 'waste-water', amount = 80},
    },
    main_product = "nb-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/nb-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk02")

RECIPE {
    type = 'recipe',
    name = 'guar-nb-3',
    category = 'guar',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'guar-seeds', amount = 40},
        {type = 'fluid', name = 'chelator', amount = 50},
        {type = 'item', name = 'hmas', amount = 1},
    },
    results = {
        {type = 'item', name = 'nb-biomass', amount = 60},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "nb-biomass",
    icon = '__pyalienlifegraphics__/graphics/icons/nb-biomass.png',
    icon_size = 64,
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "lab-instrument-2",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "lens", amount = 3},
        {type = "item", name = "engine-unit", amount = 1},
        {type = "item", name = "equipment-chassi", amount = 2},
        {type = "item", name = "electronic-circuit", amount = 1},
        {type = "item", name = "small-parts-01", amount = 5},
        {type = "item", name = "rubber", amount = 10},
    },
    results = {
        {type = "item", name = "lab-instrument", amount = 4}
    },
    main_product = "lab-instrument",
    icon = "__pycoalprocessinggraphics__/graphics/icons/mip/lab-05.png",
    icon_size = 64,
    subgroup = "py-items",
    order = "o"
}:add_unlock("engine")

RECIPE('fawogae-mk04-breeder'):replace_ingredient("iron-plate", "nb-biomass")

RECIPE {
    type = 'recipe',
    name = 'flue-gas-3',
    category = 'gas-refinery',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'biomass', amount = 10},
        {type = 'fluid', name = 'hot-air', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'flue-gas', amount = 200},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("compost")