return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'phadai-enclosure-mk01',
        'phadai-enclosure-mk02',
        'phadai-enclosure-mk03',
        'phadai-enclosure-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'phadai-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-phadai.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'phadai-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'ethanol-boost',
            icon = '__pyalienlifegraphics3__/graphics/technology/ethanol-boost.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'piezoelectric-floor',
            icon = '__pyalienlifegraphics3__/graphics/technology/piezoelectric-floor.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'dubstep-track',
            icon = '__pyalienlifegraphics3__/graphics/technology/dubstep-track.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'phadai'
}
