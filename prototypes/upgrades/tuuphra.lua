return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'tuuphra-plantation-mk01',
        'tuuphra-plantation-mk02',
        'tuuphra-plantation-mk03',
        'tuuphra-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'tuuphra-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-tuuphra.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'tuuphra-mk02'},
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
            name = 'fi',
            icon = '__pyalienlifegraphics3__/graphics/technology/fi.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'fungicide',
            icon = '__pyalienlifegraphics3__/graphics/technology/fungicide.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'tr',
            icon = '__pyalienlifegraphics3__/graphics/technology/tr.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'tuuphra'
}