return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'compost-plant-mk01',
        'compost-plant-mk02',
        'compost-plant-mk03',
        'compost-plant-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'compost-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-compost.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'biotech-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                -- {'py-science-pack-3', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'constant',
            icon = '__pyalienlifegraphics3__/graphics/technology/constant.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'humus',
            icon = '__pyalienlifegraphics3__/graphics/technology/humus.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'worm-hotel',
            icon = '__pyalienlifegraphics3__/graphics/technology/worm-hotel.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}