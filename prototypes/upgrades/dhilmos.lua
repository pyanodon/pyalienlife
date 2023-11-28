local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['dhilmos-1']),
        table.deepcopy(data.raw.recipe['dhilmos-2']),
        table.deepcopy(data.raw.recipe['dhilmos-3']),
        table.deepcopy(data.raw.recipe['dhilmos-4']),
    }) do
        recipe.name = recipe.name .. '-cover'
        FUN.remove_ingredient(recipe, 'phytoplankton')
        FUN.add_ingredient(recipe, {name = 'bacteria-1', amount = 1, type = 'fluid'})
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['dhilmos-1']),
        table.deepcopy(data.raw.recipe['dhilmos-2']),
        table.deepcopy(data.raw.recipe['dhilmos-3']),
        table.deepcopy(data.raw.recipe['dhilmos-4']),
        table.deepcopy(data.raw.recipe['dhilmos-egg-1']),
        table.deepcopy(data.raw.recipe['dhilmos-egg-2']),
        table.deepcopy(data.raw.recipe['dhilmos-egg-3']),
        table.deepcopy(data.raw.recipe['dhilmos-egg-4']),
    }) do
        recipe.name = recipe.name .. '-skimmer'
        FUN.remove_result(recipe, 'waste-water')
        FUN.remove_ingredient(recipe, 'filtration-media')
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['dhilmos-1']),
        table.deepcopy(data.raw.recipe['dhilmos-2']),
        table.deepcopy(data.raw.recipe['dhilmos-3']),
        table.deepcopy(data.raw.recipe['dhilmos-4']),
    }) do
        recipe.name = recipe.name .. '-double-intake'
        FUN.remove_ingredient(recipe, 'water-saline')
        FUN.add_ingredient(recipe, {'salt', 2})
        FUN.add_ingredient(recipe, {type = 'fluid', name = 'water', amount = 400})
        FUN.multiply_result_amount(recipe, 'waste-water', 4)
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'dhilmos-pool-mk01',
        'dhilmos-pool-mk02',
        'dhilmos-pool-mk03',
        'dhilmos-pool-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'dhilmos-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-dhilmos.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'dhilmos-mk04'},
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
                {'utility-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'cover',
            icon = '__pyalienlifegraphics3__/graphics/technology/cover.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {productivity = 0.16, type = 'module-effects'},
                {old = 'dhilmos-1', new = 'dhilmos-1-cover', type = 'recipe-replacement'},
                {old = 'dhilmos-2', new = 'dhilmos-2-cover', type = 'recipe-replacement'},
                {old = 'dhilmos-3', new = 'dhilmos-3-cover', type = 'recipe-replacement'},
                {old = 'dhilmos-4', new = 'dhilmos-4-cover', type = 'recipe-replacement'},
            },
        },
        {
            name = 'skimmer',
            icon = '__pyalienlifegraphics3__/graphics/technology/skimmer.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 0.2, speed = 0.2, type = 'module-effects'},
                {old = 'dhilmos-1', new = 'dhilmos-1-skimmer', type = 'recipe-replacement'},
                {old = 'dhilmos-2', new = 'dhilmos-2-skimmer', type = 'recipe-replacement'},
                {old = 'dhilmos-3', new = 'dhilmos-3-skimmer', type = 'recipe-replacement'},
                {old = 'dhilmos-4', new = 'dhilmos-4-skimmer', type = 'recipe-replacement'},
                {old = 'dhilmos-egg-1', new = 'dhilmos-egg-1-skimmer', type = 'recipe-replacement'},
                {old = 'dhilmos-egg-2', new = 'dhilmos-egg-2-skimmer', type = 'recipe-replacement'},
                {old = 'dhilmos-egg-3', new = 'dhilmos-egg-3-skimmer', type = 'recipe-replacement'},
                {old = 'dhilmos-egg-4', new = 'dhilmos-egg-4-skimmer', type = 'recipe-replacement'},
            }
        },
        {
            name = 'double-intake',
            icon = '__pyalienlifegraphics3__/graphics/technology/double-intake.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.5, type = 'module-effects'},
                {old = 'dhilmos-1', new = 'dhilmos-1-double-intake', type = 'recipe-replacement'},
                {old = 'dhilmos-2', new = 'dhilmos-2-double-intake', type = 'recipe-replacement'},
                {old = 'dhilmos-3', new = 'dhilmos-3-double-intake', type = 'recipe-replacement'},
                {old = 'dhilmos-4', new = 'dhilmos-4-double-intake', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'dhilmos'
}