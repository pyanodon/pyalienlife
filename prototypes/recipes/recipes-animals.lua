--VRAUKS--

RECIPE {
    type = 'recipe',
    name = 'cocoon-1',
    category = 'vrauks',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'water-barrel', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "cocoon",
}:add_unlock("zoology")


--SPONGE--

RECIPE {
    type = 'recipe',
    name = 'sea-sponge-1',
    category = 'sponge',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 100},
        {type = 'fluid', name = 'zogna-bacteria', amount = 40},
    },
    results = {
        {type = 'item', name = 'sea-sponge', amount = 1},
        {type = 'fluid', name = 'water-saline', amount = 100},
    },
    main_product = "sea-sponge",
}:add_unlock("water-animals-mk01")

RECIPE {
    type = 'recipe',
    name = 'sea-sponge-2',
    category = 'sponge',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'fluid', name = 'phytoplankton', amount = 40},
        {type = 'fluid', name = 'zogna-bacteria', amount = 40},
    },
    results = {
        {type = 'item', name = 'sea-sponge', amount = 3},
        {type = 'fluid', name = 'water-saline', amount = 50},
    },
    main_product = "sea-sponge",
}:add_unlock("water-animals-mk02")

--ULRIC--

RECIPE {
    type = 'recipe',
    name = 'ulric-sex-01',
    category = 'ulric',
    enabled = false,
    energy_required = 180,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 1, probability = 0.4},
    },
    --main_product = "cocoon",
}:add_unlock("organic-breeding")


RECIPE {
    type = 'recipe',
    name = 'ulric-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 3, probability = 0.4},
        {type = 'item', name = 'meat', amount = 3, probability = 0.4},
        {type = 'fluid', name = 'blood', amount = 50},
        {type = 'item', name = 'skin', amount = 3, probability = 0.4},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
    },
    --main_product = "bonemeal",
    icon = '__pyalienlife__/graphics/icons/rendering-ulric.png',
    icon_size = 64,
    subgroup = 'py-alienlife-recipes',
    order = 'a'
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'ulric-bonemeal-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'bonemeal', amount = 6},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'ulric-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 4},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'ulric-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'ulric-skin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'skin', amount = 2},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'ulric-bones-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 8},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'ulric-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 100},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

if not mods["pyhightech"] then

    RECIPE {
        type = 'recipe',
        name = 'bonemeal-from-bones',
        category = 'crusher',
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = 'item', name = 'bones', amount = 5},
        },
        results = {
            {type = 'item', name = 'bonemeal', amount = 4}
        }
    }:add_unlock('biotech-mk02')

end



--initial caged ulric fazer na creature chamber.