
RECIPE {
    type = 'recipe',
    name = 'ulric-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 3, probability = 0.4},
        {type = 'item', name = 'meat', amount = 3, probability = 0.4},
        {type = 'fluid', name = 'blood', amount = 50},
        {type = 'item', name = 'skin', amount = 3, probability = 0.4},
        {type = 'item', name = 'mukmoux-fat', amount = 1, probability = 0.3},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
        {type = 'item', name = 'guts', amount = 1, probability = 0.4},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-ulric.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'b'
}:add_unlock("ulric")

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
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

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
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

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
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

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
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

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
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 3},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

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
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 3},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-01',
    category = 'ulric',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'ulric-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-sex-01',
    category = 'ulric',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'ulric-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("organic-breeding")


RECIPE {
    type = 'recipe',
    name = 'ulric-sex-01-food',
    category = 'ulric',
    enabled = false,
    energy_required = 110,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("organic-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-02',
    category = 'ulric',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'ulric-food-01', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-01-food',
    category = 'ulric',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'ulric-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 8},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-02-food',
    category = 'ulric',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'ulric-food-02', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("ulric")


RECIPE {
    type = 'recipe',
    name = 'ulric-manure-03',
    category = 'ulric',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'ulric-food-01', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'raw-fiber', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-03-food',
    category = 'ulric',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'ulric-food-02', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'raw-fiber', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 12},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("ulric")



--ralesias

RECIPE {
    type = "recipe",
    name = "ralesia-0",
    category = "ralesia",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "ralesia-seeds", amount = 5},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "soil", amount = 35}
    },
    results = {
        {type = "item", name = "ralesias", amount = 10}
    },
}:add_unlock("ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-1",
    category = "ralesia",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 200},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "ralesia-seeds", amount = 5},
        {type = "item", name = "coarse", amount = 10},
    },
    results = {
        {type = "item", name = "ralesias", amount = 10}
    },
}:add_unlock("ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-2",
    category = "ralesia",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 200},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "ralesia-seeds", amount = 5},
        {type = "item", name = "coarse", amount = 10},
        {type = "fluid", name = "carbon-dioxide", amount = 200},
    },
    results = {
        {type = "item", name = "ralesias", amount = 15}
    },
}:add_unlock("ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-3",
    category = "ralesia",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 200},
        {type = "item", name = "ralesia-seeds", amount = 5},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "coarse", amount = 10},
    },
    results = {
        {type = "item", name = "ralesias", amount = 20}
    },
}:add_unlock("botany-mk02")

RECIPE {
    type = "recipe",
    name = "ralesia-5",
    category = "ralesia",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 300},
        {type = "item", name = "ralesia-seeds", amount = 5},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "coarse", amount = 10},
    },
    results = {
        {type = "item", name = "ralesias", amount = 20}
    },
}:add_unlock("botany-mk03")

RECIPE {
    type = "recipe",
    name = "ralesia-6",
    category = "ralesia",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 200},
        {type = "item", name = "ralesia-seeds", amount = 5},
        {type = "item", name = "fertilizer", amount = 7},
        {type = "item", name = "coarse", amount = 10},
    },
    results = {
        {type = "item", name = "ralesias", amount = 25}
    },
}:add_unlock("botany-mk02")

---NAVENS


RECIPE {
    type = "recipe",
    name = "navens-0",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "manure", amount = 15},
    },
    results = {
        {type = "item", name = "navens", amount = 2}
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-1",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "manure", amount = 15},
        {type = "item", name = "fungal-substrate", amount = 7},
    },
    results = {
        {type = "item", name = "navens", amount = 5}
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-2",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "fungal-substrate", amount = 7},
        {type = "item", name = "guts", amount = 5},
    },
    results = {
        {type = "item", name = "navens", amount = 7}
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-3",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "fungal-substrate", amount = 7},
        {type = "item", name = "guts", amount = 5},
        {type = "fluid", name = "nitrogen", amount = 200},
    },
    results = {
        {type = "item", name = "navens", amount = 10}
    },
}:add_unlock("navens")

------MUKMOUX----


RECIPE {
    type = 'recipe',
    name = 'mukmoux-sex-calf-01',
    category = 'mukmoux',
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'mukmoux-calf', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "mukmoux-calf",
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-sex-calf-02',
    category = 'mukmoux',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'mukmoux-calf', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "mukmoux-calf",
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-sex-01',
    category = 'mukmoux',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'caged-mukmoux', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "caged-mukmoux",
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("organic-breeding")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-sex-01-food',
    category = 'mukmoux',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'caged-mukmoux', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "caged-mukmoux",
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("organic-breeding")


RECIPE {
    type = 'recipe',
    name = 'mukmoux-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 2, probability = 0.4},
        {type = 'item', name = 'meat', amount = 4, probability = 0.4},
        {type = 'fluid', name = 'blood', amount = 50},
        {type = 'item', name = 'mukmoux-fat', amount = 5, probability = 0.8},
        {type = 'item', name = 'skin', amount = 4, probability = 0.4},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
        {type = 'item', name = 'guts', amount = 4, probability = 0.4},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-mukmoux.png',
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'b',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-bonemeal-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'bonemeal', amount = 4},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 5},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-skin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'skin', amount = 4},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-bones-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 4},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 8},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 130},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 10},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-01',
    category = 'mukmoux',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 6},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-02',
    category = 'mukmoux',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-01-food',
    category = 'mukmoux',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-02-food',
    category = 'mukmoux',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'vonix-',
    category = 'vonix',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 15},
    },
    results = {
        {type = 'item', name = 'vonix-eggs', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 15},
    },
    main_product = "vonix-eggs",
    subgroup = 'py-alienlife-vonix',
    order = 'a',
}:add_unlock("vonix")