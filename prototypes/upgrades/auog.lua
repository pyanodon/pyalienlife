return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'auog-paddock-mk01',
        'auog-paddock-mk02',
        'auog-paddock-mk03',
        'auog-paddock-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'auog-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-auog.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'auog-mk02'},
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
            name = 'sawdust',
            icon = '__pyalienlifegraphics3__/graphics/technology/sawdust.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'glowing-mushrooms',
            icon = '__pyalienlifegraphics3__/graphics/technology/glowing-mushroom.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'underground-chambers',
            icon = '__pyalienlifegraphics3__/graphics/technology/underground-chambers.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'auog'
}