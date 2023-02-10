return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'xyhiphoe-pool-mk01',
        'xyhiphoe-pool-mk02',
        'xyhiphoe-pool-mk03',
        'xyhiphoe-pool-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'xyhiphoe-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-xyhiphoe.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'water-invertebrates-mk02'},
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
            name = 'temp-c',
            icon = '__pyalienlifegraphics3__/graphics/technology/temp-c.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'rst',
            icon = '__pyalienlifegraphics3__/graphics/technology/rst.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'reuse-ev',
            icon = '__pyalienlifegraphics3__/graphics/technology/reuse-ev.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'xyhiphoe'
}