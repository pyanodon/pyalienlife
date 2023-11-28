local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{
        {
            name = 'paper-towel',
            type = 'item',
            stack_size = 50,
            subgroup = 'py-alienlife-items',
            icon = '__pyalienlifegraphics__/graphics/icons/paper-towel.png',
            icon_size = 64
        },
        {
            name = 'paper-towel',
            type = 'recipe',
            enabled = false,
            category = 'pulp',
            energy_required = 4,
            ingredients = {
                {name = 'cellulose', type = 'item', amount = 2},
                {name = 'water', type = 'fluid', amount = 25},
                {name = 'hot-air', type = 'fluid', amount = 25},
            },
            result = 'paper-towel',
            result_count = 4
        }
    }

    local recipe = table.deepcopy(data.raw.recipe['ralesia-seeds'])
    FUN.add_ingredient(recipe, {'paper-towel', 1})
    recipe.energy_required = 3
    FUN.multiply_result_amount(recipe, 'ralesia-seeds', 2)
    recipe.name = 'ralesia-seeds-paper-towel'
    data:extend{recipe}

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['ralesia-plantation-mk01']),
        table.deepcopy(data.raw.recipe['ralesia-plantation-mk02']),
        table.deepcopy(data.raw.recipe['ralesia-plantation-mk03']),
        table.deepcopy(data.raw.recipe['ralesia-plantation-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-ceramic'
        FUN.add_ingredient(recipe, {name = 'mirror-mk0'..i, amount = 50 * i, type = 'item'})
        data:extend{recipe}
    end

    local fluidbox_indexs = {2, 2, 2, 1, 1}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['ralesias-1']),
        table.deepcopy(data.raw.recipe['ralesias-2']),
        table.deepcopy(data.raw.recipe['ralesias-3']),
        table.deepcopy(data.raw.recipe['ralesias-4']),
    }) do
        recipe.name = recipe.name .. '-hydrogen-burn'
        FUN.remove_ingredient(recipe, 'water')
        local old_hydrogen = FUN.remove_ingredient(recipe, 'hydrogen')
        FUN.add_ingredient(recipe, {name = 'hydrogen', amount = old_hydrogen + 50, type = 'fluid', fluidbox_index = fluidbox_indexs[i]})
        FUN.add_result(recipe, {name = 'helium', type = 'fluid', amount = i*2})
        recipe.main_product = 'helium'
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'ralesia-plantation-mk01',
        'ralesia-plantation-mk02',
        'ralesia-plantation-mk03',
        'ralesia-plantation-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'ralesia-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-ralesia.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'ralesia-mk04'},
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
            name = 'improved-burst',
            icon = '__pyalienlifegraphics3__/graphics/technology/improved-burst.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'paper-towel', type = 'unlock-recipe'},
                {old = 'ralesia-seeds', new = 'ralesia-seeds-paper-towel', type = 'recipe-replacement'}
            },
        },
        {
            name = 'sun-concentration',
            icon = '__pyalienlifegraphics3__/graphics/technology/sun-concentration.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {speed = 0.12, type = 'module-effects'},
                {old = 'ralesia-plantation-mk01', new = 'ralesia-plantation-mk01-with-ceramic', type = 'recipe-replacement'},
                {old = 'ralesia-plantation-mk02', new = 'ralesia-plantation-mk02-with-ceramic', type = 'recipe-replacement'},
                {old = 'ralesia-plantation-mk03', new = 'ralesia-plantation-mk03-with-ceramic', type = 'recipe-replacement'},
                {old = 'ralesia-plantation-mk04', new = 'ralesia-plantation-mk04-with-ceramic', type = 'recipe-replacement'},
            }
        },
        {
            name = 'h2-recycle',
            icon = '__pyalienlifegraphics3__/graphics/technology/h2-recycle.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.8, type = 'module-effects'},
                {old = 'ralesias-1', new = 'ralesias-1-hydrogen-burn', type = 'recipe-replacement'},
                {old = 'ralesias-2', new = 'ralesias-2-hydrogen-burn', type = 'recipe-replacement'},
                {old = 'ralesias-3', new = 'ralesias-3-hydrogen-burn', type = 'recipe-replacement'},
                {old = 'ralesias-4', new = 'ralesias-4-hydrogen-burn', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'ralesia'
}