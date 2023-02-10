return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'seaweed-crop-mk01',
        'seaweed-crop-mk02',
        'seaweed-crop-mk03',
        'seaweed-crop-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'seaweed-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-seaweed.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'botany-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                -- {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'improved-pathfinding',
            icon = '__pyalienlifegraphics3__/graphics/technology/improved-pathfinding.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'precise-cutting',
            icon = '__pyalienlifegraphics3__/graphics/technology/precise-cutting.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'recirculation-pump',
            icon = '__pyalienlifegraphics3__/graphics/technology/recirculation-pump.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'seaweed'
}