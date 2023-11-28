local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local fiber = table.deepcopy(data.raw.recipe['fiber-01'])
    fiber.name = 'fiber-dry-storage'
    fiber.energy_required = fiber.energy_required * 3
    FUN.multiply_result_amount(fiber, 'raw-fiber', 2)
    FUN.add_result(fiber, {'biomass', 1})
    fiber.main_product = 'raw-fiber'
    data:extend{fiber}

    local fiber = table.deepcopy(data.raw.recipe['fiber'])
    fiber.name = 'fiber-dry-storage-2'
    FUN.add_result_amount(fiber, 'fiber', 1)
    fiber.energy_required = 6
    data:extend{fiber}

    local wood_fast = table.deepcopy(data.raw.recipe['log-wood'])
    wood_fast.name = 'log-wood-fast'
    FUN.add_result_amount(wood_fast, 'wood', 1)
    wood_fast.energy_required = 1
    wood_fast.enabled = false
    data:extend{wood_fast}

    local machine_recipe = table.deepcopy(data.raw.recipe['fwf-mk01'])
    machine_recipe.name = machine_recipe.name .. '-with-furnace'
    FUN.add_ingredient(machine_recipe, {name = 'stone-furnace', amount = 1, type = 'item'})
    data:extend{machine_recipe}

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['log3']),
        table.deepcopy(data.raw.recipe['log6']),
    }) do
        recipe.name = recipe.name .. '-cheap'
        FUN.multiply_ingredient_amount(recipe, 'ash', 1/3)
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'fwf-mk01',
        'fwf-mk02',
        'fwf-mk03',
        'fwf-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'fast-wood-forestry-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-fwf.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'wood-processing'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
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
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'fiber-01', new = 'fiber-dry-storage', type = 'recipe-replacement'},
                {old = 'fiber', new = 'fiber-dry-storage-2', type = 'recipe-replacement'}
            },
        },
        {
            name = 'selective-heads',
            icon = '__pyalienlifegraphics3__/graphics/technology/selective-heads.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'log-wood', new = 'log-wood-fast', type = 'recipe-replacement'}
            }
        },
        {
            name = 'self-generation',
            icon = '__pyalienlifegraphics3__/graphics/technology/self-generation.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.30, speed = 0.08, type = 'module-effects'},
                {old = 'fwf-mk01', new = 'fwf-mk01-with-furnace', type = 'recipe-replacement'},
                {old = 'log3', new = 'log3-cheap', type = 'recipe-replacement'},
                {old = 'log6', new = 'log6-cheap', type = 'recipe-replacement'}
            }
        }
    },
    module_category = 'tree'
}