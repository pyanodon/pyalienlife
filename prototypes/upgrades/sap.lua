return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'sap-extractor-mk01',
        'sap-extractor-mk02',
        'sap-extractor-mk03',
        'sap-extractor-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'sap-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-sap.png',
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
            name = 'inoculator',
            icon = '__pyalienlifegraphics3__/graphics/technology/inoculator.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 1, speed = 0.05, type = 'module-effects'}
            },
        },
        {
            name = 'patch',
            icon = '__pyalienlifegraphics3__/graphics/technology/patch.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 2, productivity = 0.03, type = 'module-effects'}
            }
        },
        {
            name = 'bark',
            icon = '__pyalienlifegraphics3__/graphics/technology/bark.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 4, speed = -0.5, productivity = 0.1, type = 'module-effects'}
            }
        }
    },
    module_category = 'sap'
}