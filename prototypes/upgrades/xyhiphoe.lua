local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['xyhiphoe-1']),
        table.deepcopy(data.raw.recipe['xyhiphoe-2']),
        table.deepcopy(data.raw.recipe['xyhiphoe-3']),
        table.deepcopy(data.raw.recipe['xyhiphoe-4']),
    }) do
        recipe.name = recipe.name .. '-hot-cold'

        FUN.add_ingredient_amount(recipe, 'xyhiphoe-cub', 1)
        if i == 4 then
            FUN.add_result_amount(recipe, 'xyhiphoe', 1)
        else
            FUN.add_result(recipe, {'xyhiphoe', 1})
        end

        local phyto_barrel_count = math.ceil(FUN.remove_ingredient(recipe, 'phytoplankton') / 50)
        if phyto_barrel_count > 0 then
            FUN.add_ingredient(recipe, {'phytoplankton-barrel', phyto_barrel_count})
            FUN.add_result(recipe, {'empty-barrel', phyto_barrel_count})
        end

        FUN.add_ingredient(recipe, {name = 'liquid-nitrogen', amount = 5, type = 'fluid', fluidbox_index = 1})
        FUN.add_result(recipe, {type = 'fluid', name = 'nitrogen', amount = 50})

        FUN.add_ingredient(recipe, {name = 'redhot-coke', amount = 1, type = 'item'})
        FUN.add_result(recipe, {type = 'item', name = 'coke', amount = 1})

        recipe.energy_required = math.ceil(recipe.energy_required * 8 / 14)
        data:extend{recipe}
    end

    data:extend{{
        type = 'recipe',
        name = 'xyhiphoe-single',
        ingredients = {
            {'fish-food-01', 1},
            {'xyhiphoe-cub', 1},
            {type = 'fluid', name = 'phytoplankton', amount = 50},
            {type = 'fluid', name = 'pressured-water', amount = 1000},
        },
        results = {
            {type = 'fluid', name = 'waste-water', amount = 100},
            {'xyhiphoe', 1}
        },
        main_product = 'xyhiphoe',
        enabled = false,
        category = 'xyhiphoe',
        energy_required = 140
    }}

    for i, recipe in pairs{
        table.deepcopy(data.raw.recipe['xyhiphoe-cub-1']),
        table.deepcopy(data.raw.recipe['xyhiphoe-cub-2']),
        table.deepcopy(data.raw.recipe['xyhiphoe-cub-3']),
        table.deepcopy(data.raw.recipe['xyhiphoe-cub-4']),
    } do
        recipe.name = recipe.name .. '-acetone'
        FUN.remove_result(recipe, 'waste-water')
        FUN.add_ingredient(recipe, {type = 'fluid', name = 'waste-water', amount = 250, fluidbox_index = 2})
        FUN.add_result_amount(recipe, 'xyhiphoe-cub', 2)
        FUN.remove_ingredient(recipe, 'pressured-water')
        FUN.add_result(recipe, {type = 'fluid', name = 'acetone', amount = i*150})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'xyhiphoe-pool-mk01',
        'xyhiphoe-pool-mk02',
        'xyhiphoe-pool-mk03',
        'xyhiphoe-pool-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'xyhiphoe-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-xyhiphoe.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'water-invertebrates-mk01'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'temp-c',
            icon = '__pyalienlifegraphics3__/graphics/technology/temp-c.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'xyhiphoe-1', new = 'xyhiphoe-1-hot-cold', type = 'recipe-replacement'},
                {old = 'xyhiphoe-2', new = 'xyhiphoe-2-hot-cold', type = 'recipe-replacement'},
                {old = 'xyhiphoe-3', new = 'xyhiphoe-3-hot-cold', type = 'recipe-replacement'},
                {old = 'xyhiphoe-4', new = 'xyhiphoe-4-hot-cold', type = 'recipe-replacement'},
            },
        },
        {
            name = 'rst',
            icon = '__pyalienlifegraphics3__/graphics/technology/rst.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'xyhiphoe-single', type = 'unlock-recipe'}
            }
        },
        {
            name = 'reuse-ev',
            icon = '__pyalienlifegraphics3__/graphics/technology/reuse-ev.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'xyhiphoe-cub-1', new = 'xyhiphoe-cub-1-acetone', type = 'recipe-replacement'},
                {old = 'xyhiphoe-cub-2', new = 'xyhiphoe-cub-2-acetone', type = 'recipe-replacement'},
                {old = 'xyhiphoe-cub-3', new = 'xyhiphoe-cub-3-acetone', type = 'recipe-replacement'},
                {old = 'xyhiphoe-cub-4', new = 'xyhiphoe-cub-4-acetone', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'xyhiphoe'
}