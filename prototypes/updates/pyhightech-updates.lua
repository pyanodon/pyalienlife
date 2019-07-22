----BUILDINDS----
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE('ralesia-plantation-mk04'):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})
RECIPE('auog-paddock'):subgroup_order("py-alienlife-buildings-others", "a")
----RECIPES----
RECIPE('fungal-substrate'):add_ingredient({type = "item", name = "urea", amount = 3})
RECIPE('log7-2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3})
RECIPE('urea'):replace_ingredient("fawogae", "seaweed")

----EXCLUSIVE RECIPES----


RECIPE {
    type = 'recipe',
    name = 'seaweed-8',
    category = 'seaweed',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'slacked-lime', amount = 100},
        {type = 'item', name = 'iron-ore-dust', amount = 1},
        {type = 'item', name = 'py-fertilizer', amount = 3},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 30},
    },
}:add_unlock("botany-mk04")

RECIPE {
    type = "recipe",
    name = "phytoplankton-2",
    category = "plankton",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 100},
        {type = "fluid", name = "water", amount = 500},
        {type = 'item', name = 'py-fertilizer', amount = 3},
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 20}
    },
    main_product = "phytoplankton",
    subgroup = 'py-alienlife-plants',
    order = 'b'
}:add_unlock("botany-mk04")

RECIPE {
    type = 'recipe',
    name = 'moss-4',
    category = 'moss',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'limestone', amount = 3},
        {type = 'item', name = 'coarse', amount = 5},
        {type = 'item', name = 'py-fertilizer', amount = 3},
    },
    results = {
        {type = 'item', name = 'moss', amount = 25},
    },
    icon = '__pyalienlife__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk04")

RECIPE {
    type = "recipe",
    name = "ralesia-4",
    category = "ralesia",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 200},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "coarse", amount = 10},
        {type = 'item', name = 'py-fertilizer', amount = 3}
    },
    results = {
        {type = "item", name = "ralesia", amount = 25}
    },
    subgroup = "py-alienlife-plants",
    order = "a"
}:add_unlock("botany-mk04")