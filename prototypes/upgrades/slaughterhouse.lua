return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'slaughterhouse-mk01',
        'slaughterhouse-mk02',
        'slaughterhouse-mk03',
        'slaughterhouse-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'slaughterhouse-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-slaugterhouse.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'rendering'},
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
            name = 'laser-cutting',
            icon = '__pyalienlifegraphics3__/graphics/technology/laser-cutting.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'mercy-killing',
            icon = '__pyalienlifegraphics3__/graphics/technology/mercy-killing.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'lard-machine',
            icon = '__pyalienlifegraphics3__/graphics/technology/lard-machine.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}