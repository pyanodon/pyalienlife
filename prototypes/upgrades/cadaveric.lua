return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'cadaveric-arum-mk01',
        'cadaveric-arum-mk02',
        'cadaveric-arum-mk03',
        'cadaveric-arum-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'cadaveric-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-cadaveric.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'cadaveric-arum-mk02'},
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
            name = 'acid-comtemplator',
            icon = '__pyalienlifegraphics3__/graphics/technology/acid-comtemplator.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'solar-scope',
            icon = '__pyalienlifegraphics3__/graphics/technology/solar-scope.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'e-photo',
            icon = '__pyalienlifegraphics3__/graphics/technology/e-photo.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'arum'
}