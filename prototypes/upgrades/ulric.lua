return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'ulric-corral-mk01',
        'ulric-corral-mk02',
        'ulric-corral-mk03',
        'ulric-corral-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'ulric-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-ulric.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'ulric-mk02'},
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
            name = 'dummy-ulric',
            icon = '__pyalienlifegraphics3__/graphics/technology/dummy-ulric.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'heated-pads',
            icon = '__pyalienlifegraphics3__/graphics/technology/heating-pad.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'scraping-bots',
            icon = '__pyalienlifegraphics3__/graphics/technology/scraping-bots.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'ulric'
}