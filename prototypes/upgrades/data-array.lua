local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{{
        type = 'recipe',
        name = 'earth-generic-sample-duplication',
        ingredients = {
            {'iron-chest', 1},
            {'earth-generic-sample', 1}
        },
        results = {{name = 'earth-generic-sample', amount = 2, type = 'item', catalyst_amount = 1}},
        enabled = false,
        energy_required = 40,
        category = 'data-array'
    }}

    data:extend{{
        type = 'recipe',
        name = 'solar-panel-equipment-cheap',
        ingredients = {
            {'plastic-bar', 10},
            {'zinc-plate', 10},
            {'capacitor1', 10},
            {'glass', 10},
            {'small-electric-pole', 1},
            {'water-barrel', 1},
        },
        results = {{name = 'solar-panel-mk01', amount = 1, type = 'item'}},
        enabled = false,
        energy_required = 40,
        category = 'crafting'
    }}

    local machine_recipe = table.deepcopy(data.raw.recipe['data-array'])
    machine_recipe.name = machine_recipe.name .. '-with-solar'
    FUN.add_ingredient(machine_recipe, {name = 'solar-panel-mk01', amount = 2, type = 'item'})
    data:extend{machine_recipe}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'data-array'
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'data-array-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-data-array.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'genetics-mk03'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'booster',
            icon = '__pyalienlifegraphics3__/graphics/technology/booster.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 20, productivity = 0.1, type = 'module-effects'}
            },
        },
        {
            name = 'dbwt',
            icon = '__pyalienlifegraphics3__/graphics/technology/dbwt.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'earth-generic-sample-duplication', type = 'unlock-recipe'}
            }
        },
        {
            name = 'solar-p',
            icon = '__pyalienlifegraphics3__/graphics/technology/solar-p.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.3, speed = 0.3, type = 'module-effects'},
                {recipe = 'solar-panel-equipment-cheap', type = 'unlock-recipe'},
                {old = 'data-array', new = 'data-array-with-solar', type = 'recipe-replacement'},
            }
        }
    }
}