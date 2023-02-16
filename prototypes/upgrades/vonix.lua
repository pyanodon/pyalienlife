local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    data:extend{{
        type = 'recipe',
        name = 'vonix-direct-raising',
        enabled = false,
        subgroup = 'py-alienlife-vonix',
        ingredients = {
            {type = 'item', name = 'vonix', amount = 2},
            {type = 'item', name = 'meat', amount = 5},
            {type = 'item', name = 'guts', amount = 10},
            {type = 'item', name = 'caged-mukmoux', amount = 1},
            {type = 'item', name = 'caged-auog', amount = 1},
            {type = 'item', name = 'arqad-honey-barrel', amount = 3},
            {type = 'item', name = 'water-barrel', amount = 3},
            {type = 'item', name = 'bedding', amount = 1},
        },
        results = {
            {type = 'item', name = 'vonix-cub', amount_min = 4, amount_max = 6},
            {type = 'item', name = 'vonix', amount = 1},
            {type = 'item', name = 'vonix', amount = 1, probability = 0.95},
            {type = 'item', name = 'cage', amount = 2},
            {type = 'item', name = 'empty-barrel', amount = 6},
        },
        energy_required = 70,
        category = 'rc',
        main_product = 'vonix-cub'
    }}

    local creature_recipe = table.deepcopy(data.raw.recipe['vonix'])
    FUN.add_ingredient(creature_recipe, {'strorix-unknown-sample', 5})
    creature_recipe.name = 'vonix-with-cancer'
    data:extend{creature_recipe}

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['vonix-raising-1']),
        table.deepcopy(data.raw.recipe['vonix-raising-2']),
        table.deepcopy(data.raw.recipe['vonix-raising-3']),
    }) do
        recipe.name = recipe.name .. '-cancer'
        local barrel_count = FUN.remove_result(recipe, 'empty-barrel')
        FUN.add_result(recipe, {'mutant-enzymes-barrel', barrel_count})
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        recipe.icon = '__pyalienlifegraphics__/graphics/icons/mutant-enzymes.png'
        recipe.icon_size = 64
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['vonix-den-mk01']),
        table.deepcopy(data.raw.recipe['vonix-den-mk02']),
        table.deepcopy(data.raw.recipe['vonix-den-mk03']),
    }) do
        recipe.name = recipe.name .. '-cheap'
        for _, ingredient in pairs(recipe.ingredients) do
            ingredient.name = ingredient[1] or ingredient.name
            ingredient.type = ingredient.type or 'item'
            ingredient.amount = math.ceil((ingredient[2] or ingredient.amount) / 4)
            ingredient[1] = nil
            ingredient[2] = nil
        end
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'vonix-den-mk01',
        'vonix-den-mk02',
        'vonix-den-mk03',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'vonix-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-vonix.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-mk01', 'vonix'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'evoa',
            icon = '__pyalienlifegraphics3__/graphics/technology/evoa.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {type = 'unlock-recipe', recipe = 'vonix-direct-raising'}
            },
        },
        {
            name = 'uge',
            icon = '__pyalienlifegraphics3__/graphics/technology/uge.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'vonix', new = 'vonix-with-cancer', type = 'recipe-replacement'},
                {old = 'vonix-raising-1', new = 'vonix-raising-1-cancer', type = 'recipe-replacement'},
                {old = 'vonix-raising-2', new = 'vonix-raising-2-cancer', type = 'recipe-replacement'},
                {old = 'vonix-raising-3', new = 'vonix-raising-3-cancer', type = 'recipe-replacement'},
            }
        },
        {
            name = 'dermal',
            icon = '__pyalienlifegraphics3__/graphics/technology/dermal.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.5, type = 'module-effects'},
                {old = 'vonix-den-mk01', new = 'vonix-den-mk01-cheap', type = 'recipe-replacement'},
                {old = 'vonix-den-mk02', new = 'vonix-den-mk02-cheap', type = 'recipe-replacement'},
                {old = 'vonix-den-mk03', new = 'vonix-den-mk03-cheap', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'vonix'
}