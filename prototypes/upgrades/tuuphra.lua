local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local recipe = table.deepcopy(data.raw.recipe['tuuphra-seeds'])
    recipe.name = recipe.name .. '-with-water'
    FUN.add_ingredient(recipe, {type = 'fluid', name = 'water', amount = 1000})
    FUN.add_result_amount(recipe, 'tuuphra-seeds', 3)
    data:extend{recipe}

    data:extend{
        {
            type = 'item',
            name = 'alcl3',
            icon = '__pyalienlifegraphics3__/graphics/icons/alcl3.png',
            icon_size = 64,
            subgroup = 'py-alienlife-genetics',
            order = 'xx',
            stack_size = 50
        },
        {
            type = 'recipe',
            name = 'alcl3',
            category = 'mixer',
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type = 'item', name = 'aluminium-plate', amount = 5},
                {type = 'fluid', name = 'hydrogen-chloride', amount = 100},
            },
            results = {
                {type = 'item', name = 'alcl3', amount = 2},
            },
        },
        {
            type = 'item',
            name = 'fungicide',
            icon = '__pyalienlifegraphics__/graphics/icons/fungicide.png',
            icon_size = 64,
            subgroup = 'py-alienlife-genetics',
            order = 'xx',
            stack_size = 50,
        },
        {
            type = 'recipe',
            name = 'fungicide',
            enabled = false,
            category = 'biofactory',
            ingredients = {
                {type = 'item', name = 'phenol', amount = 10},
                {type = 'item', name = 'plastic-bar', amount = 2},
                {type = 'item', name = 'alcl3', amount = 1},
                {type = 'fluid', name = 'chlorine', amount = 30},
                {type = 'fluid', name = 'liquid-nitrogen', amount = 20},
                {type = 'fluid', name = 'methanol', amount = 30},
            },
            results = {{'fungicide', 50}},
            energy_required = 250
        }
    }

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['tuuphra-1']),
        table.deepcopy(data.raw.recipe['tuuphra-2']),
        table.deepcopy(data.raw.recipe['tuuphra-3']),
        table.deepcopy(data.raw.recipe['tuuphra-4']),
    }) do
        recipe.name = recipe.name .. '-fungicide'
        FUN.add_ingredient(recipe, {'fungicide', 1})
        FUN.add_result_amount(recipe, 'tuuphra', 1)
        FUN.remove_ingredient(recipe, 'pesticide-mk01')
        FUN.remove_ingredient(recipe, 'pesticide-mk02')
        recipe.energy_required = math.ceil(recipe.energy_required * 0.85)
        data:extend{recipe}
    end

    data:extend{{
        type = 'recipe',
        name = 'tuuphra-grease',
        energy_required = 2,
        ingredients = {{'tuuphra', 1}},
        results = {
            {type = 'item', name = 'starch', amount = 1, probability = 0.4},
            {type = 'fluid', name = 'grease', amount = 16}
        },
        enabled = false,
        category = 'biofactory',
        main_product = 'grease'
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'tuuphra-plantation-mk01',
        'tuuphra-plantation-mk02',
        'tuuphra-plantation-mk03',
        'tuuphra-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'tuuphra-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-tuuphra.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'tuuphra-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'fi',
            icon = '__pyalienlifegraphics3__/graphics/technology/fi.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 0.5, type = 'module-effects'},
                {old = 'tuuphra-seeds', new = 'tuuphra-seeds-with-water', type = 'recipe-replacement'}
            },
        },
        {
            name = 'fungicide',
            icon = '__pyalienlifegraphics3__/graphics/technology/fungicide.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {pollution = 2, type = 'module-effects'},
                {recipe = 'alcl3', type = 'unlock-recipe'},
                {recipe = 'fungicide', type = 'unlock-recipe'},
                {old = 'tuuphra-1', new = 'tuuphra-1-fungicide', type = 'recipe-replacement'},
                {old = 'tuuphra-2', new = 'tuuphra-2-fungicide', type = 'recipe-replacement'},
                {old = 'tuuphra-3', new = 'tuuphra-3-fungicide', type = 'recipe-replacement'},
                {old = 'tuuphra-4', new = 'tuuphra-4-fungicide', type = 'recipe-replacement'},
            }
        },
        {
            name = 'tr',
            icon = '__pyalienlifegraphics3__/graphics/technology/tr.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'tuuphra-grease', type = 'unlock-recipe'}
            }
        }
    },
    module_category = 'tuuphra'
}