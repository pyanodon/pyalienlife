local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['zipir-a-1']),
        table.deepcopy(data.raw.recipe['zipir-a-2']),
        table.deepcopy(data.raw.recipe['zipir-a-3']),
        table.deepcopy(data.raw.recipe['zipir-a-4']),
        table.deepcopy(data.raw.recipe['zipir-a-5']),
        table.deepcopy(data.raw.recipe['zipir-a-6']),
    }) do
        recipe.name = recipe.name .. '-suicide'
        FUN.add_result(recipe, {name = 'zipir-eggs', amount_min = 2, amount_max = 3, type = 'item'})
        FUN.add_result(recipe, {name = 'guts', amount = 1, type = 'item'})
        FUN.multiply_ingredient_amount(recipe, 'zipir-food-01', 0.5)
        FUN.multiply_ingredient_amount(recipe, 'zipir-food-02', 0.5)
        for _, result in pairs(recipe.results) do
            if result.name == 'zipir1' then
                if result.probability then
                    result.probability = result.probability - 0.15
                else
                    result.probability = 0.85
                end
            end
        end
        recipe.energy_required = math.ceil(recipe.energy_required * 0.8)
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['zipir-eggs-1']),
        table.deepcopy(data.raw.recipe['zipir-eggs-2']),
        table.deepcopy(data.raw.recipe['zipir-eggs-3']),
        table.deepcopy(data.raw.recipe['zipir-eggs-4']),
        table.deepcopy(data.raw.recipe['zipir-eggs-5']),
    }) do
        recipe.name = recipe.name .. '-trits-gen'
        recipe.energy_required = recipe.energy_required * 1.5
        FUN.add_ingredient(recipe, {name = 'trits-codex', type = 'item', amount = 1})
        FUN.add_result(recipe, {name = 'trits-codex', type = 'item', amount = 1, probability = 0.95})
        for _, result in pairs(recipe.results) do
            if result.name == 'zipir-eggs' then
                result.amount_max = result.amount_max * 2
                break
            end
        end
        data:extend{recipe}
    end

    for i, machine_recipe in pairs({
        table.deepcopy(data.raw.recipe['zipir-reef-mk01']),
        table.deepcopy(data.raw.recipe['zipir-reef-mk02']),
        table.deepcopy(data.raw.recipe['zipir-reef-mk03']),
        table.deepcopy(data.raw.recipe['zipir-reef-mk04']),
    }) do
        machine_recipe.name = machine_recipe.name .. '-with-rc'
        FUN.add_ingredient(machine_recipe, {name = 'rc-mk0'..i, amount = 1, type = 'item'})
        data:extend{machine_recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'zipir-reef-mk01',
        'zipir-reef-mk02',
        'zipir-reef-mk03',
        'zipir-reef-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'zipir-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-zipir.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'zipir', 'trits'},
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
            name = 'suicide',
            icon = '__pyalienlifegraphics3__/graphics/technology/suicide.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'zipir-a-1', new = 'zipir-a-1-suicide', type = 'recipe-replacement'},
                {old = 'zipir-a-2', new = 'zipir-a-2-suicide', type = 'recipe-replacement'},
                {old = 'zipir-a-3', new = 'zipir-a-3-suicide', type = 'recipe-replacement'},
                {old = 'zipir-a-4', new = 'zipir-a-4-suicide', type = 'recipe-replacement'},
                {old = 'zipir-a-5', new = 'zipir-a-5-suicide', type = 'recipe-replacement'},
                {old = 'zipir-a-6', new = 'zipir-a-6-suicide', type = 'recipe-replacement'},
            },
        },
        {
            name = 'sr',
            icon = '__pyalienlifegraphics3__/graphics/technology/sr.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'zipir-eggs-1', new = 'zipir-eggs-1-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-2', new = 'zipir-eggs-2-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-3', new = 'zipir-eggs-3-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-4', new = 'zipir-eggs-4-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-5', new = 'zipir-eggs-5-trits-gen', type = 'recipe-replacement'},
            }
        },
        {
            name = 'hatchery',
            icon = '__pyalienlifegraphics3__/graphics/technology/hatchery.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.40, speed = 0.15, type = 'module-effects'},
                {old = 'zipir1-pyvoid', new = 'zipir1-pyvoid-hatchery', type = 'recipe-replacement'},
                {old = 'zipir-reef-mk01', new = 'zipir-reef-mk01-with-rc', type = 'recipe-replacement'},
                {old = 'zipir-reef-mk02', new = 'zipir-reef-mk02-with-rc', type = 'recipe-replacement'},
                {old = 'zipir-reef-mk03', new = 'zipir-reef-mk03-with-rc', type = 'recipe-replacement'},
                {old = 'zipir-reef-mk04', new = 'zipir-reef-mk04-with-rc', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'zipir'
}