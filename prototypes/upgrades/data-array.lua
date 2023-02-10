return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'data-array'
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'data-array-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-data-array.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'xenobiology'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'booster',
            icon = '__pyalienlifegraphics3__/graphics/technology/booster.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'dbwt',
            icon = '__pyalienlifegraphics3__/graphics/technology/dbwt.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'solar-p',
            icon = '__pyalienlifegraphics3__/graphics/technology/solar-p.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}