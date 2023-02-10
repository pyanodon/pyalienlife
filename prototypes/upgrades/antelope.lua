return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'antelope-enclosure-mk01'
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'antelope-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-antelope.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'schrodinger-antelope'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
                {'production-science-pack', 1},
                -- {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'pentadimensional',
            icon = '__pyalienlifegraphics3__/graphics/technology/pentadimensional.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'existential-hazard',
            icon = '__pyalienlifegraphics3__/graphics/technology/existential-hazard.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'higgs-field',
            icon = '__pyalienlifegraphics3__/graphics/technology/higgs-field.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'antelope'
}