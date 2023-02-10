return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'micro-mine-mk01',
        'micro-mine-mk02',
        'micro-mine-mk03',
        'micro-mine-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'micromine-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-micromine.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'microbiology-mk02'},
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
            name = 'adv',
            icon = '__pyalienlifegraphics3__/graphics/technology/adv.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = '4D',
            icon = '__pyalienlifegraphics3__/graphics/technology/4D.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'dna-damage',
            icon = '__pyalienlifegraphics3__/graphics/technology/dna-damage.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    }
}