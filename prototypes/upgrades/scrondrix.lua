return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'scrondrix-pen-mk01',
        'scrondrix-pen-mk02',
        'scrondrix-pen-mk03',
        'scrondrix-pen-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'scrondrix-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-scrondrix.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'scrondrix-mk02'},
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
            name = 'boronb',
            icon = '__pyalienlifegraphics3__/graphics/technology/boronb.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'hspa',
            icon = '__pyalienlifegraphics3__/graphics/technology/hspa.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'neuron',
            icon = '__pyalienlifegraphics3__/graphics/technology/neuron.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'scrondrix'
}