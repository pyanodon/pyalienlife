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

----EXCLUSIVE RECIPES----


RECIPE {
    type = "recipe",
    name = "guar-separation-b",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "guar", amount = 10},
        },
    results = {
        {type = "item", name = "guar-seeds", amount = 50},
        {type = "item", name = "biomass", amount = 10},
    },
    main_product = "guar-seeds",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = 'recipe',
    name = 'biomass-1-a',
    category = 'evaporator',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'phytoplankton', amount = 20},
        {type = 'fluid', name = 'hot-air', amount = 100},
    },
    results = {
        {type = 'item', name = 'biomass', amount = 10},
    },
    --main_product = "silicon-wafer",
    icon = '__pyalienlifegraphics__/graphics/icons/biomass.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("microbiology-mk01")

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
        {type = 'item', name = 'dried-grods', amount = 1},
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