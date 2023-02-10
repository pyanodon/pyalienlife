return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'trits-reef-mk01',
        'trits-reef-mk02',
        'trits-reef-mk03',
        'trits-reef-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'trits-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-trits.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'trits-mk02'},
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
            name = 'mgo',
            icon = '__pyalienlifegraphics3__/graphics/technology/mgo.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'dc',
            icon = '__pyalienlifegraphics3__/graphics/technology/dc.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'nexelit-axis',
            icon = '__pyalienlifegraphics3__/graphics/technology/nexelit-axis.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'trits'
}