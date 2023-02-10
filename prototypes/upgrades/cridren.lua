return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'cridren-enclosure-mk01',
        'cridren-enclosure-mk02',
        'cridren-enclosure-mk03',
        'cridren-enclosure-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'cridren-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-cridren.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'cridren-mk02'},
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
            name = 'sixth-layer',
            icon = '__pyalienlifegraphics3__/graphics/technology/sixth-layer.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'neural-cranio',
            icon = '__pyalienlifegraphics3__/graphics/technology/neural-cranio.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'mufflers',
            icon = '__pyalienlifegraphics3__/graphics/technology/mufflers.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'cridren'
}