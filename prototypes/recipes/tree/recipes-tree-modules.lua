RECIPE {
    type = 'recipe',
    name = 'tree-mk02',
    category = 'fwf',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'planter-box', amount = 1},
        {type = 'item', name = 'wood-seedling-mk02', amount = 3},
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
    },
    results = {
        {type = 'item', name = 'tree-mk02', amount = 1},
    },
}:add_unlock('wood-processing-2')

RECIPE {
    type = 'recipe',
    name = 'tree-mk03',
    category = 'fwf',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'planter-box', amount = 1},
        {type = 'item', name = 'wood-seedling-mk03', amount = 3},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
    },
    results = {
        {type = 'item', name = 'tree-mk03', amount = 1},
    },
}:add_unlock('wood-processing-3')

RECIPE {
    type = 'recipe',
    name = 'tree-mk04',
    category = 'fwf',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'planter-box', amount = 1},
        {type = 'item', name = 'wood-seedling-mk04', amount = 3},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = "item", name = 'urea', amount = 3},
    },
    results = {
        {type = 'item', name = 'tree-mk04', amount = 1},
    },
}:add_unlock('wood-processing-4')

RECIPE {
    type = 'recipe',
    name = 'wood-seedling-mk02',
    category = 'nursery',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'wood-seeds-mk02', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'fluid', name = 'water', amount = 200},
        {type = 'item', name = 'ground-sample01', amount = 5},
    },
    results = {
        {type = 'item', name = 'wood-seedling-mk02', amount = 1},
    },
}:add_unlock('wood-processing-2')

RECIPE {
    type = 'recipe',
    name = 'wood-seedling-mk03',
    category = 'nursery',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'wood-seeds-mk03', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'fluid', name = 'water', amount = 200},
        {type = 'item', name = 'ground-sample01', amount = 5},
        {type = 'fluid', name = 'chelator', amount = 50},
    },
    results = {
        {type = 'item', name = 'wood-seedling-mk03', amount = 1},
    },
}:add_unlock('wood-processing-3')

RECIPE {
    type = 'recipe',
    name = 'wood-seedling-mk04',
    category = 'nursery',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'wood-seeds-mk04', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'fluid', name = 'psc', amount = 50},
        {type = 'item', name = 'ground-sample01', amount = 5},
        {type = 'fluid', name = 'chelator', amount = 50},
        {type = 'item', name = 'cobalt-fluoride', amount = 5},
    },
    results = {
        {type = 'item', name = 'wood-seedling-mk04', amount = 1},
    },
}:add_unlock('wood-processing-4')

RECIPE {
    type = 'recipe',
    name = 'wood-seeds-mk02',
    category = 'nursery',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'tree-mk01', amount = 1},
        {type = 'fluid', name = 'dirty-water-heavy', amount = 200},
        {type = 'item', name = 'moss-gen', amount = 3},
    },
    results = {
        {type = 'item', name = 'wood-seeds-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'wood-seeds', amount = 1, probability = 0.5},
    },
    main_product = 'wood-seeds-mk02',
    icons = {
        {icon = '__pyalienlifegraphics2__/graphics/icons/c-mk02.png', icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/wood-seeds.png', icon_size = 64, scale = 0.35},
    },
}:add_unlock('wood-processing-2')

RECIPE {
    type = 'recipe',
    name = 'wood-seeds-mk03',
    category = 'nursery',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'tree-mk02', amount = 1},
        {type = 'fluid', name = 'dirty-water-heavy', amount = 200},
        {type = 'fluid', name = 'anthracene-oil', amount = 200},
        {type = 'item', name = 'moss-gen', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
    },
    results = {
        {type = 'item', name = 'wood-seeds-mk03', amount = 1, probability = 0.005},
        {type = 'item', name = 'wood-seeds-mk02', amount = 1, probability = 0.5},
    },
    main_product = 'wood-seeds-mk03',
    icons = {
        {icon = '__pyalienlifegraphics2__/graphics/icons/c-mk03.png', icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/wood-seeds.png', icon_size = 64, scale = 0.35},
    },
}:add_unlock('wood-processing-3')

RECIPE {
    type = 'recipe',
    name = 'wood-seeds-mk04',
    category = 'nursery',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'tree-mk03', amount = 1},
        {type = 'fluid', name = 'chelator', amount = 200},
        {type = 'fluid', name = 'anthracene-oil', amount = 400},
        {type = 'item', name = 'moss-gen', amount = 7},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'peptidase-m58', amount = 3},
    },
    results = {
        {type = 'item', name = 'wood-seeds-mk04', amount = 1, probability = 0.005},
        {type = 'item', name = 'wood-seeds-mk03', amount = 1, probability = 0.5},
    },
    main_product = 'wood-seeds-mk04',
    icons = {
        {icon = '__pyalienlifegraphics2__/graphics/icons/c-mk04.png', icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/wood-seeds.png', icon_size = 64, scale = 0.35},
    },
}:add_unlock('wood-processing-4')

RECIPE {
    type = 'recipe',
    name = 'wood-seeds-mk02-breeder',
    category = 'wpu',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'tree-mk02', amount = 1},
    },
    results = {
        {type = 'item', name = 'wood-seeds-mk02', amount = 5},
    },
    icons = {
        {icon = '__pyalienlifegraphics__/graphics/icons/wood-seeds.png', icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
    },
}:add_unlock('wood-processing-2')

RECIPE {
    type = 'recipe',
    name = 'wood-seeds-mk03-breeder',
    category = 'wpu',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'tree-mk03', amount = 1},
    },
    results = {
        {type = 'item', name = 'wood-seeds-mk03', amount = 5},
    },
    icons = {
        {icon = '__pyalienlifegraphics__/graphics/icons/wood-seeds.png', icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
    },
}:add_unlock('wood-processing-3')

RECIPE {
    type = 'recipe',
    name = 'wood-seeds-mk04-breeder',
    category = 'wpu',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'tree-mk04', amount = 1},
    },
    results = {
        {type = 'item', name = 'wood-seeds-mk04', amount = 5},
    },
    icons = {
        {icon = '__pyalienlifegraphics__/graphics/icons/wood-seeds.png', icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
    },
}:add_unlock('wood-processing-4')