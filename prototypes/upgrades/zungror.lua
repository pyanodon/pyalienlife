local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local zungror = table.deepcopy(data.raw.recipe['zungror'])
    zungror.name = 'zungror-with-yaedols-codex'
    FUN.add_ingredient(zungror, {name = 'yaedols-codex', amount = 6, type = 'item'})
    data:extend{zungror}

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['zungror-cocoon-1']),
        table.deepcopy(data.raw.recipe['zungror-cocoon-2']),
        table.deepcopy(data.raw.recipe['zungror-cocoon-3']),
    }) do
        recipe.name = recipe.name .. '-rich-clay'
        FUN.add_ingredient(recipe, {name = 'rich-clay', amount = 2, type = 'item'})
        data:extend{recipe}
    end

    local duplicated_spinner = table.deepcopy(data.raw.recipe['vsk'])
    duplicated_spinner.name = 'vsk-duplicated'
    duplicated_spinner.energy_required = duplicated_spinner.energy_required * 3
    FUN.multiply_result_amount(duplicated_spinner, 'vsk', 3)
    data:extend{duplicated_spinner}

    local buffed_fiber = table.deepcopy(data.raw.recipe['pre-fiber-1'])
    buffed_fiber.name = 'pre-fiber-1-buffed'
    FUN.multiply_ingredient_amount(buffed_fiber, 'zungror-cocoon', 0.5)
    data:extend{buffed_fiber}

    for isotope, recipe in pairs({
        [{'pu-239', 2}] = table.deepcopy(data.raw.recipe['zungror-raising-1']),
        [{'pu-240', 2}] = table.deepcopy(data.raw.recipe['zungror-raising-2']),
        [{'pu-238', 2}] = table.deepcopy(data.raw.recipe['zungror-raising-3']),
    }) do
        recipe.name = recipe.name .. '-with-funny-rock'
        FUN.add_ingredient(recipe, isotope)
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'zungror-lair-mk01',
        'zungror-lair-mk02',
        'zungror-lair-mk03',
        'zungror-lair-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'zungror-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-zungror.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'zungror-mk03'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'military-science-pack', 1},
                {'py-science-pack-2', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
                {'production-science-pack', 1},
                {'py-science-pack-4', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'geooxidation',
            icon = '__pyalienlifegraphics3__/graphics/technology/geooxidation.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {productivity = 0.1, speed = 0.05, type = 'module-effects'},
                {old = 'zungror', new = 'zungror-with-yaedols-codex', type = 'recipe-replacement'},
                {old = 'zungror-cocoon-1', new = 'zungror-cocoon-1-rich-clay', type = 'recipe-replacement'},
                {old = 'zungror-cocoon-2', new = 'zungror-cocoon-2-rich-clay', type = 'recipe-replacement'},
                {old = 'zungror-cocoon-3', new = 'zungror-cocoon-3-rich-clay', type = 'recipe-replacement'},
            },
        },
        {
            name = 'genooscillation',
            icon = '__pyalienlifegraphics3__/graphics/technology/genooscillation.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'vsk', new = 'vsk-duplicated', type = 'recipe-replacement'},
            }
        },
        {
            name = 'oviduct-bombardment',
            icon = '__pyalienlifegraphics3__/graphics/technology/oviduct-bombardment.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'pre-fiber-1', new = 'pre-fiber-1-buffed', type = 'recipe-replacement'},
                {old = 'zungror-raising-1', new = 'zungror-raising-1-with-funny-rock', type = 'recipe-replacement'},
                {old = 'zungror-raising-2', new = 'zungror-raising-2-with-funny-rock', type = 'recipe-replacement'},
                {old = 'zungror-raising-3', new = 'zungror-raising-3-with-funny-rock', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'zungror'
}