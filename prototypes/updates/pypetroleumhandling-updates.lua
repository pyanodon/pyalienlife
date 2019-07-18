--BUILDINDS--

----EXCLUSIVE RECIPES----

RECIPE('retrovirus'):add_ingredient({type = "fluid", name = "hot-air", amount = 50})


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
    icon = '__pyalienlife__/graphics/icons/biomass.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("microbiology-mk01")