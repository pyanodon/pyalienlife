return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'atomizer-mk01',
        'atomizer-mk02',
        'atomizer-mk03',
        'atomizer-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'atomizer-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-atomizer.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'molecular-decohesion-mk02'},
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
            name = 'sc-core',
            icon = '__pyalienlifegraphics3__/graphics/technology/sc-core.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'sub-atomic',
            icon = '__pyalienlifegraphics3__/graphics/technology/sub-atomic.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'd-core',
            icon = '__pyalienlifegraphics3__/graphics/technology/d-core.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}