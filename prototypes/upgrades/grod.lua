return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'grods-swamp-mk01',
        'grods-swamp-mk02',
        'grods-swamp-mk03',
        'grods-swamp-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'grod-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-grod.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'grod-mk02'},
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
            name = 'hi-sprinkler',
            icon = '__pyalienlifegraphics3__/graphics/technology/hi-sprinkler.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'ground-irrigation',
            icon = '__pyalienlifegraphics3__/graphics/technology/ground-irrigation.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'carbide-c',
            icon = '__pyalienlifegraphics3__/graphics/technology/carbide-c.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'grod'
}