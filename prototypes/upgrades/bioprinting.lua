return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'bio-printer-mk01',
        'bio-printer-mk02',
        'bio-printer-mk03',
        'bio-printer-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'bioprinting-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-bioprinting.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'organ-printing-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 2},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 2},
                {'production-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'high-viability',
            icon = '__pyalienlifegraphics3__/graphics/technology/high-viability.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'biomimetics',
            icon = '__pyalienlifegraphics3__/graphics/technology/biomimetics.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'covalent',
            icon = '__pyalienlifegraphics3__/graphics/technology/covalent.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}