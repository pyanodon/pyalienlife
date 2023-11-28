local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['cadaveric-arum-1']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-2']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-3']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-4']),
    }) do
        recipe.name = recipe.name .. '-soil'
        FUN.add_ingredient(recipe, {name = 'soil', amount = 40 * i, type = 'item'})
        FUN.multiply_result_amount(recipe, 'cadaveric-arum', 1.3)
        recipe.energy_required = math.ceil(recipe.energy_required * 1.15)
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['cadaveric-arum-mk01']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-mk02']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-mk03']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-nanofibrils'
        FUN.add_ingredient(recipe, {name = 'nanofibrils', amount = 10 * (2 ^ (i - 1)), type = 'item'})
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['cadaveric-arum-1']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-2']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-3']),
        table.deepcopy(data.raw.recipe['cadaveric-arum-4']),
    }) do
        recipe.name = recipe.name .. '-msa'
        recipe.main_product = 'cadaveric-arum'
        FUN.add_result(recipe, {name = 'msa', amount = 55 * i, type = 'fluid'})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'cadaveric-arum-mk01',
        'cadaveric-arum-mk02',
        'cadaveric-arum-mk03',
        'cadaveric-arum-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'cadaveric-arum-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-cadaveric.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'cadaveric-arum-mk02', 'chitin'},
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
            name = 'acid-comtemplator',
            icon = '__pyalienlifegraphics3__/graphics/technology/acid-comtemplator.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'cadaveric-arum-1', new = 'cadaveric-arum-1-soil', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-2', new = 'cadaveric-arum-2-soil', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-3', new = 'cadaveric-arum-3-soil', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-4', new = 'cadaveric-arum-4-soil', type = 'recipe-replacement'},
            },
        },
        {
            name = 'solar-scope',
            icon = '__pyalienlifegraphics3__/graphics/technology/solar-scope.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.5, speed = 0.1, productivity = 0.14, type = 'module-effects'},
                {old = 'cadaveric-arum-mk01', new = 'cadaveric-arum-mk01-with-nanofibrils', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-mk02', new = 'cadaveric-arum-mk02-with-nanofibrils', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-mk03', new = 'cadaveric-arum-mk03-with-nanofibrils', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-mk04', new = 'cadaveric-arum-mk04-with-nanofibrils', type = 'recipe-replacement'},
            }
        },
        {
            name = 'e-photo',
            icon = '__pyalienlifegraphics3__/graphics/technology/e-photo.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 2, type = 'module-effects'},
                {old = 'cadaveric-arum-1', new = 'cadaveric-arum-1-msa', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-2', new = 'cadaveric-arum-2-msa', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-3', new = 'cadaveric-arum-3-msa', type = 'recipe-replacement'},
                {old = 'cadaveric-arum-4', new = 'cadaveric-arum-4-msa', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'arum'
}