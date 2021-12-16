local fun = require("prototypes/functions/functions")

if mods['pyhightech'] then
    require('prototypes/recipes/moondrop/recipes-moondrop-products')
    RECIPE('arqad-mk02'):remove_ingredient('filled-canister-crude-oil'):add_ingredient({type = 'item', name = 'moondrop-fueloil', amount = 25}):add_ingredient({type = 'item', name = 'moondrop-diesel', amount = 5})
    --data.raw.recipe['arqad-mk02'].results[3] = nil
    fun.results_replacer('arqad-mk02','empty-barrel','empty-barrel', 2)
    RECIPE('arqad-mk03'):remove_ingredient('filled-canister-crude-oil'):add_ingredient({type = 'item', name = 'moondrop-diesel', amount = 40}):add_ingredient({type = 'item', name = 'moondrop-kerosene', amount = 10})
    --data.raw.recipe['arqad-mk03'].results[4] = nil
    fun.results_replacer('arqad-mk03','empty-barrel','empty-barrel', 4)
    RECIPE('arqad-mk04'):remove_ingredient('filled-canister-crude-oil'):add_ingredient({type = 'item', name = 'moondrop-kerosene', amount = 40}):add_ingredient({type = 'item', name = 'moondrop-gas', amount = 10})
    --data.raw.recipe['arqad-mk04'].results[5] = nil
    fun.results_replacer('arqad-mk04','empty-barrel','empty-barrel', 8)
end

--BUILDINDS--

--TECHNOLOGIES--
TECHNOLOGY('oil-machines-mk03'):add_pack('py-science-pack-2')
TECHNOLOGY('oil-machines-mk04'):add_pack('py-science-pack-2')
TECHNOLOGY('fracking'):add_pack('py-science-pack-2')
TECHNOLOGY('kerogen'):add_pack('py-science-pack-2')
TECHNOLOGY('light-oil-mk03'):add_pack('py-science-pack-2')
TECHNOLOGY('petroleum-gas-mk03'):add_pack('py-science-pack-2')
TECHNOLOGY('tholin-mk03'):add_pack('py-science-pack-2')
TECHNOLOGY('tholin-mk04'):add_pack('py-science-pack-2')

----RECIPES----
RECIPE('guar-separation'):remove_unlock("oil-machines-mk02")
RECIPE('guar-01'):remove_unlock("oil-machines-mk01")
RECIPE('guar-02'):remove_unlock("oil-machines-mk02")
RECIPE('guar-03'):remove_unlock("oil-machines-mk02")
RECIPE('guar-04'):remove_unlock("oil-machines-mk02")
RECIPE('guar-05'):remove_unlock("oil-machines-mk02")

RECIPE('guar-gum-plantation'):subgroup_order("py-alienlife-buildings-mk01", "a"):remove_unlock("oil-machines-mk01"):add_unlock('guar')
RECIPE('guar-gum-plantation-mk02'):subgroup_order("py-alienlife-buildings-mk02", "a"):remove_unlock("oil-machines-mk02"):add_unlock('guar-mk02'):add_ingredient({type = "item", name = "neuroprocessor", amount = 20}):add_ingredient({type = "item", name = "latex", amount = 20})
RECIPE('guar-gum-plantation-mk03'):subgroup_order("py-alienlife-buildings-mk03", "a"):remove_unlock("oil-machines-mk03"):add_unlock('guar-mk03')
RECIPE('guar-gum-plantation-mk04'):subgroup_order("py-alienlife-buildings-mk04", "a"):remove_unlock("oil-machines-mk04"):add_unlock('guar-mk04')

RECIPE('retrovirus'):add_ingredient({type = "fluid", name = "hot-air", amount = 50})
RECIPE('cobalt-fluoride'):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "hot-air", amount = 100})
RECIPE('nitrogen-mustard'):remove_ingredient("anthraquinone"):add_ingredient({type = "fluid", name = "chloroethanol", amount = 100})
RECIPE('rubber-01'):add_ingredient({type = "item", name = "latex", amount = 1})
RECIPE('rubber-02'):add_ingredient({type = "item", name = "latex", amount = 2})
RECIPE('rubber-03'):add_ingredient({type = "item", name = "latex", amount = 3})
RECIPE('rubber-04'):add_ingredient({type = "item", name = "latex", amount = 4})
RECIPE('logistic-science-01'):replace_ingredient("water","crude-oil")
RECIPE('chemical-science-01'):replace_ingredient("water","crude-oil")
RECIPE('production-science-01'):replace_ingredient("water","crude-oil")
RECIPE('production-science-pack'):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE('chemical-science-01'):replace_ingredient("water","crude-oil")
RECIPE('harvester'):replace_ingredient("small-parts-01","small-parts-03")
RECIPE('seeds-extract-01'):add_ingredient({type = "item", name = "guar-seeds", amount = 100})
RECIPE('arqad-jelly-01'):replace_ingredient("active-carbon","carbon-black"):replace_ingredient("oleochemicals-barrel","btx-barrel")

fun.results_replacer("crude-from-manure", "crude-oil", "scrude")
fun.results_replacer("crude-from-manure", "ash", "soot")
fun.results_replacer("guar-separation", "organics", "biomass")
fun.results_replacer("bitumen-comb", "tar", "bitumen")

RECIPE('hotair-empty-petri-dish'):add_unlock('coal-processing-1'):set_fields{enabled = false}
RECIPE('hotair-molten-glass'):add_unlock('coal-processing-1'):set_fields{enabled = false}

----EXCLUSIVE RECIPES----

RECIPE {
    type = 'recipe',
    name = 'dried-grods-02',
    category = 'evaporator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'grod', amount = 5},
        {type = 'fluid', name = 'hot-air', amount = 25},
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
    name = 'subcritical-water-03',
    category = 'heat-exchanger',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'pressured-water', amount = 200},
        {type = 'fluid', name = 'hot-air', amount = 300},
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
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
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
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
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
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
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
        {type = 'fluid', name = 'hot-air', amount = 50},
    },
    results = {
        {type = 'fluid', name = 'flue-gas', amount = 200},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("compost")

RECIPE {
    type = "recipe",
    name = "stopper-2",
    category = "crafting",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'rubber', amount = 1},
    },
    results = {
        {type = 'item', name = 'stopper', amount = 2}
    }
}:add_unlock("rubber")
