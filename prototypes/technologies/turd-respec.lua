TECHNOLOGY {
    type = 'technology',
    name = 'turd-respec-1',
    icon = '__pyalienlifegraphics3__/graphics/technology/updates/restart.png',
    icon_size = 128,
    prerequisites = {'dhilmos-upgrade', 'dingrits-upgrade'},
    effects = {},
    unit = {
        count_formula = '2^(L-1)*5000',
        ingredients = {
            {'automation-science-pack', 100},
            {'py-science-pack-1', 60},
            {'logistic-science-pack', 30},
            {'military-science-pack', 20},
            {'py-science-pack-2', 20},
            {'chemical-science-pack', 10},
            {'py-science-pack-3', 6},
            {'production-science-pack', 3},
            {'py-science-pack-4', 2},
            {'utility-science-pack', 1},
        },
        time = 1200,
    },
    max_level = 1,
    is_turd = true,
    localised_description = {'', {'turd.font', {'turd.tech'}}, '\n', {'technology-description.turd-respec'}}
}

TECHNOLOGY {
    type = 'technology',
    name = 'turd-respec-2',
    icon = '__pyalienlifegraphics3__/graphics/technology/updates/restart.png',
    icon_size = 128,
    prerequisites = {'turd-respec-1'},
    effects = {},
    unit = {
        count_formula = '2^(L-1)*2500',
        ingredients = {
            {'automation-science-pack', 200},
            {'py-science-pack-1', 100},
            {'logistic-science-pack', 60},
            {'military-science-pack', 30},
            {'py-science-pack-2', 30},
            {'chemical-science-pack', 20},
            {'py-science-pack-3', 10},
            {'production-science-pack', 6},
            {'py-science-pack-4', 3},
            {'utility-science-pack', 2},
            {'space-science-pack', 1},
        },
        time = 1200,
    },
    max_level = 'infinite',
    is_turd = true,
    localised_description = {'', {'turd.font', {'turd.tech'}}, '\n', {'technology-description.turd-respec'}}
}

TECHNOLOGY {
    type = 'technology',
    name = 'turd-partial-respec-1',
    icon = '__pyalienlifegraphics3__/graphics/technology/updates/restart.png',
    icon_size = 128,
    prerequisites = {'chemical-science-pack'},
    effects = {},
    unit = {
        count_formula = '2^(L-1)*5000',
        ingredients = {
            {'automation-science-pack', 10},
            {'py-science-pack-1', 6},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 2},
            {'chemical-science-pack', 1},
        },
        time = 1200,
    },
    max_level = 1,
    is_turd = true,
    localised_description = {'', {'turd.font', {'turd.tech'}}, '\n', {'technology-description.turd-partial-respec'}}
}

TECHNOLOGY {
    type = 'technology',
    name = 'turd-partial-respec-2',
    icon = '__pyalienlifegraphics3__/graphics/technology/updates/restart.png',
    icon_size = 128,
    prerequisites = {'turd-partial-respec-1'},
    effects = {},
    unit = {
        count_formula = '2^(L-1)*2500',
        ingredients = {
            {'automation-science-pack', 20},
            {'py-science-pack-1', 10},
            {'logistic-science-pack', 6},
            {'py-science-pack-2', 3},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
        },
        time = 1200,
    },
    max_level = 'infinite',
    is_turd = true,
    localised_description = {'', {'turd.font', {'turd.tech'}}, '\n', {'technology-description.turd-partial-respec'}}
}
