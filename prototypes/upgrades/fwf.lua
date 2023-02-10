return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'fwf-mk01',
        'fwf-mk02',
        'fwf-mk03',
        'fwf-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'fwf-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-fwf.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'wood-processing-2'},
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
            name = 'dry-storage',
                    icon = '__pyalienlifegraphics3__/graphics/technology/dry-storage.png',
                    icon_size = 128,
                    order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'selective-heads',
                    icon = '__pyalienlifegraphics3__/graphics/technology/selective-heads.png',
                    icon_size = 128,
                    order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'self-generation',
                    icon = '__pyalienlifegraphics3__/graphics/technology/self-generation.png',
                    icon_size = 128,
                    order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'tree'
}