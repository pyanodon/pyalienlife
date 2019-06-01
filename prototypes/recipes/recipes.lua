RECIPE {
    type = 'recipe',
    name = 'moss-1',
    category = 'moss',
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
    },
    results = {
        {type = 'item', name = 'moss', amount = 5},
    },
    --main_product = "silicon-wafer",
    icon = '__pyalienlife__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}

RECIPE {
    type = 'recipe',
    name = 'biomass-1',
    category = 'evaporator',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'phytoplankton', amount = 20},
    },
    results = {
        {type = 'item', name = 'biomass', amount = 5},
    },
    --main_product = "silicon-wafer",
    icon = '__pyalienlife__/graphics/icons/biomass.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("microbiology-mk01")