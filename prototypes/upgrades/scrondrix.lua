local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['Scrondrix cub 1']),
        table.deepcopy(data.raw.recipe['Scrondrix cub 2']),
        table.deepcopy(data.raw.recipe['Scrondrix cub 3']),
        table.deepcopy(data.raw.recipe['Scrondrix cub 4']),
    }) do
        recipe.name = recipe.name .. '-boron'
        FUN.add_ingredient(recipe, {name = 'boron-trioxide', amount = i, type = 'item'})
        FUN.add_result_amount(recipe, 'scrondrix-pup', i)
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['Scrondrix 1']),
        table.deepcopy(data.raw.recipe['Scrondrix 2']),
        table.deepcopy(data.raw.recipe['Scrondrix 3']),
        table.deepcopy(data.raw.recipe['Scrondrix 4']),
        table.deepcopy(data.raw.recipe['Scrondrix cub 1']),
        table.deepcopy(data.raw.recipe['Scrondrix cub 2']),
        table.deepcopy(data.raw.recipe['Scrondrix cub 3']),
        table.deepcopy(data.raw.recipe['Scrondrix cub 4']),
    }) do
        recipe.name = recipe.name .. '-vegan'
        FUN.remove_ingredient(recipe, 'meat')
        data:extend{recipe}
    end

    local brains = table.deepcopy(data.raw.recipe['ex-bra-scro'])
    brains.name = 'scrondrix-brain-slaughterhouse-ex'
    brains.localised_name = {'recipe-name.ex-bra-scro'}
    FUN.multiply_result_amount(brains, 'brain', 24)
    FUN.multiply_result_amount(brains, 'pineal-gland', 0.25)

    local experimental = table.deepcopy(data.raw.recipe['Caged scrondrix 9'])
    experimental.name = 'scrondrix-experimental-treatment'
    FUN.add_ingredient(experimental, {name = 'arthurian-codex', amount = 1, type = 'item'})
    experimental.results = {
        {name = 'bones', amount = 1, type = 'item', probability = 0.6},
        {name = 'cage', amount = 1, type = 'item', probability = 0.6},
        {name = 'electronic-circuit', amount_min = 8, amount_max = 9, type = 'item'},
        {name = 'brain-caged-scrondrix', amount = 1, type = 'item', probability = 0.4},
    }
    experimental.main_product = 'brain-caged-scrondrix'

    data:extend{brains, experimental}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'scrondrix-pen-mk01',
        'scrondrix-pen-mk02',
        'scrondrix-pen-mk03',
        'scrondrix-pen-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'scrondrix-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-scrondrix.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'scrondrix'},
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
            name = 'boronb',
            icon = '__pyalienlifegraphics3__/graphics/technology/boronb.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {speed = 0.2, productivity = 0.05, type = 'module-effects'},
                {old = 'Scrondrix cub 1', new = 'Scrondrix cub 1-boron', type = 'recipe-replacement'},
                {old = 'Scrondrix cub 2', new = 'Scrondrix cub 2-boron', type = 'recipe-replacement'},
                {old = 'Scrondrix cub 3', new = 'Scrondrix cub 3-boron', type = 'recipe-replacement'},
                {old = 'Scrondrix cub 4', new = 'Scrondrix cub 4-boron', type = 'recipe-replacement'},
            },
        },
        {
            name = 'hspa',
            icon = '__pyalienlifegraphics3__/graphics/technology/hspa.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.7, type = 'module-effects'},
                {old = 'Scrondrix cub 1', new = 'Scrondrix cub 1-vegan', type = 'recipe-replacement'},
                {old = 'Scrondrix cub 2', new = 'Scrondrix cub 2-vegan', type = 'recipe-replacement'},
                {old = 'Scrondrix cub 3', new = 'Scrondrix cub 3-vegan', type = 'recipe-replacement'},
                {old = 'Scrondrix cub 4', new = 'Scrondrix cub 4-vegan', type = 'recipe-replacement'},
                {old = 'Scrondrix 1', new = 'Scrondrix 1-vegan', type = 'recipe-replacement'},
                {old = 'Scrondrix 2', new = 'Scrondrix 2-vegan', type = 'recipe-replacement'},
                {old = 'Scrondrix 3', new = 'Scrondrix 3-vegan', type = 'recipe-replacement'},
                {old = 'Scrondrix 4', new = 'Scrondrix 4-vegan', type = 'recipe-replacement'},
            }
        },
        {
            name = 'neuron',
            icon = '__pyalienlifegraphics3__/graphics/technology/neuron.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'ex-bra-scro', new = 'scrondrix-brain-slaughterhouse-ex', type = 'recipe-replacement'},
                {old = 'Caged scrondrix 9', new = 'scrondrix-experimental-treatment', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'scrondrix'
}