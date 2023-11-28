local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['breed-fish-1']),
        table.deepcopy(data.raw.recipe['breed-fish-2']),
        table.deepcopy(data.raw.recipe['breed-fish-3']),
        table.deepcopy(data.raw.recipe['breed-fish-4']),
    }) do
        recipe.name = recipe.name .. '-agressive-selection'
        FUN.add_result_amount(recipe, 'fish', -i)
        FUN.add_result(recipe, {'fish-food-01', i})
        data:extend{recipe}
    end

    local ingredients = table.deepcopy(data.raw.recipe['fish-hydrolysate'].ingredients)
    ingredients[#ingredients+1] = {type = 'item', name = 'cooling-tower-mk01', amount = 1}
    data:extend{{
        type = 'recipe',
        category = data.raw.recipe['fish-hydrolysate'].category,
        energy_required = data.raw.recipe['fish-hydrolysate'].energy_required * 2,
        results = {
            {type = 'item', name = 'cooling-tower-mk01', amount = 1, probability = 0.999},
            {type = 'fluid', name = 'fish-hydrolysate', amount = 300}
        },
        ingredients = ingredients,
        main_product = 'fish-hydrolysate',
        enabled = false,
        name = 'fish-hydrolysate-cooling'
    }}

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['breed-fish-egg-1']),
        table.deepcopy(data.raw.recipe['breed-fish-egg-2']),
        table.deepcopy(data.raw.recipe['breed-fish-egg-3']),
        table.deepcopy(data.raw.recipe['breed-fish-egg-4']),
    }) do
        recipe.name = recipe.name .. '-doused'
        FUN.remove_result(recipe, 'waste-water')
        FUN.add_result(recipe, {type = 'fluid', name = 'pressured-water', amount = 100})
        FUN.multiply_result_amount(recipe, 'fish-egg', 1.2)
        for _, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == 'water-saline' then
                ingredient.name = 'water'
                break
            end
        end
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'fish-farm-mk01',
        'fish-farm-mk02',
        'fish-farm-mk03',
        'fish-farm-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'fish-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-fish.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'fish-mk01', 'cooling-tower-1'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'a-select',
            icon = '__pyalienlifegraphics3__/graphics/technology/a-select.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'breed-fish-1', new = 'breed-fish-1-agressive-selection', type = 'recipe-replacement'},
                {old = 'breed-fish-2', new = 'breed-fish-2-agressive-selection', type = 'recipe-replacement'},
                {old = 'breed-fish-3', new = 'breed-fish-3-agressive-selection', type = 'recipe-replacement'},
                {old = 'breed-fish-4', new = 'breed-fish-4-agressive-selection', type = 'recipe-replacement'},
            },
        },
        {
            name = 'temp-control',
            icon = '__pyalienlifegraphics3__/graphics/technology/temp-control.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {type = 'recipe-replacement', old = 'fish-hydrolysate', new = 'fish-hydrolysate-cooling'}
            }
        },
        {
            name = 'dosing-pump',
            icon = '__pyalienlifegraphics3__/graphics/technology/dosing-pump.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'breed-fish-egg-1', new = 'breed-fish-egg-1-doused', type = 'recipe-replacement'},
                {old = 'breed-fish-egg-2', new = 'breed-fish-egg-2-doused', type = 'recipe-replacement'},
                {old = 'breed-fish-egg-3', new = 'breed-fish-egg-3-doused', type = 'recipe-replacement'},
                {old = 'breed-fish-egg-4', new = 'breed-fish-egg-4-doused', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'fish'
}