local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['fawogae-1']),
        table.deepcopy(data.raw.recipe['fawogae with manure']),
        table.deepcopy(data.raw.recipe['fawogae with improved substrate']),
        table.deepcopy(data.raw.recipe['fawogae with special substrate']),
        table.deepcopy(data.raw.recipe['fawogae with growth hormone']),
    }) do
        recipe.name = recipe.name .. '-nitrogen'
        FUN.remove_ingredient(recipe, 'water')
        FUN.add_ingredient(recipe, {type = 'fluid', name = 'purest-nitrogen-gas', amount = 20 + 20 * i})
        FUN.multiply_result_amount(recipe, 'fawogae', 1.35)
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        data:extend{recipe}
    end

    data:extend{{
        type = 'recipe',
        name = 'acid-gas-fawogae',
        enabled = false,
        category = 'desulfurization',
        energy_required = 8,
        ingredients = {
            {'fawogae', 2},
            {'sulfur', 2},
            {type = 'fluid', name = 'oxygen', amount = 50},
        },
        results = {
            {type = 'fluid', name = 'acidgas', amount = 150},
        }
    }}

    for _, recipe in pairs{
        table.deepcopy(data.raw.recipe['fawogae-sample']),
        table.deepcopy(data.raw.recipe['fawogae-mk02']),
        table.deepcopy(data.raw.recipe['fawogae-mk03']),
        table.deepcopy(data.raw.recipe['fawogae-mk04']),
    } do
        recipe.name = recipe.name .. '-with-xeno-codex'
        FUN.add_ingredient(recipe, {'xeno-codex', 1})
        data:extend{recipe}
    end

    local coal_fawogae = table.deepcopy(data.raw.recipe['coal-fawogae'])
    coal_fawogae.name = 'coal-fawogae-buffed'
    coal_fawogae.energy_required = coal_fawogae.energy_required * 4
    FUN.remove_result(coal_fawogae, 'raw-coal')
    FUN.add_result(coal_fawogae, {'active-carbon', 3})
    coal_fawogae.icons = nil
    coal_fawogae.icon = nil
    coal_fawogae.main_product = 'active-carbon'
    data:extend{coal_fawogae}

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['fawogae-plantation-mk01']),
        table.deepcopy(data.raw.recipe['fawogae-plantation-mk02']),
        table.deepcopy(data.raw.recipe['fawogae-plantation-mk03']),
        table.deepcopy(data.raw.recipe['fawogae-plantation-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-pressure-pump'
        FUN.add_ingredient(recipe, {name = 'vacuum-pump-mk0' .. i, amount = 1, type = 'item'})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'fawogae-plantation-mk01',
        'fawogae-plantation-mk02',
        'fawogae-plantation-mk03',
        'fawogae-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'fawogae-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-fawogae.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'fawogae-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'n2-ferti',
            icon = '__pyalienlifegraphics3__/graphics/technology/n2-ferti.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'fawogae-1', new = 'fawogae-1-nitrogen', type = 'recipe-replacement'},
                {old = 'fawogae with manure', new = 'fawogae with manure-nitrogen', type = 'recipe-replacement'},
                {old = 'fawogae with improved substrate', new = 'fawogae with improved substrate-nitrogen', type = 'recipe-replacement'},
                {old = 'fawogae with special substrate', new = 'fawogae with special substrate-nitrogen', type = 'recipe-replacement'},
                {old = 'fawogae with growth hormone', new = 'fawogae with growth hormone-nitrogen', type = 'recipe-replacement'},
            }
        },
        {
            name = 'acidosis',
            icon = '__pyalienlifegraphics3__/graphics/technology/acidosis.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {speed = 0.1, type = 'module-effects'},
                {recipe = 'acid-gas-fawogae', type = 'unlock-recipe'},
                {recipe = 'xeno-codex', type = 'unlock-recipe', also_unlocked_by_techs = true},
                {old = 'fawogae-sample', new = 'fawogae-sample-with-xeno-codex', type = 'recipe-replacement'},
                {old = 'fawogae-mk02', new = 'fawogae-mk02-with-xeno-codex', type = 'recipe-replacement'},
                {old = 'fawogae-mk03', new = 'fawogae-mk03-with-xeno-codex', type = 'recipe-replacement'},
                {old = 'fawogae-mk04', new = 'fawogae-mk04-with-xeno-codex', type = 'recipe-replacement'},
            }
        },
        {
            name = 'dry',
            icon = '__pyalienlifegraphics3__/graphics/technology/dry.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 3.5, type = 'module-effects'},
                {old = 'coal-fawogae', new = 'coal-fawogae-buffed', type = 'recipe-replacement'},
                {old = 'fawogae-plantation-mk01', new = 'fawogae-plantation-mk01-with-pressure-pump', type = 'recipe-replacement'},
                {old = 'fawogae-plantation-mk02', new = 'fawogae-plantation-mk02-with-pressure-pump', type = 'recipe-replacement'},
                {old = 'fawogae-plantation-mk03', new = 'fawogae-plantation-mk03-with-pressure-pump', type = 'recipe-replacement'},
                {old = 'fawogae-plantation-mk04', new = 'fawogae-plantation-mk04-with-pressure-pump', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'fawogae'
}