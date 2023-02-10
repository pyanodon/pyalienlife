return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'fawogae-plantation-mk01',
        'fawogae-plantation-mk02',
        'fawogae-plantation-mk03',
        'fawogae-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'fawogae-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-fawogae.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'mycology-mk02'},
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
            name = 'lichen',
            icon = '__pyalienlifegraphics3__/graphics/technology/lichen.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'acidosis',
            icon = '__pyalienlifegraphics3__/graphics/technology/acidosis.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'dry',
            icon = '__pyalienlifegraphics3__/graphics/technology/dry.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'fawogae'
}