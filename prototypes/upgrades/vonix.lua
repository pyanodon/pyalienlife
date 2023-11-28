local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
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
            {type = 'item', name = 'vonix-cub', amount_min = 7, amount_max = 8},
            {type = 'item', name = 'vonix-eggs', amount_min = 4, amount_max = 5},
            {type = 'item', name = 'vonix', amount = 1},
            {type = 'item', name = 'vonix', amount = 1, probability = 0.95},
            {type = 'item', name = 'cage', amount = 2},
            {type = 'item', name = 'empty-barrel', amount = 6},
        },
        energy_required = 85,
        category = 'rc',
        allowed_module_categories = {'vonix'},
        main_product = 'vonix-cub'
    }}

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['vonix-raising-1']),
        table.deepcopy(data.raw.recipe['vonix-raising-2']),
        table.deepcopy(data.raw.recipe['vonix-raising-3']),
    }) do
        recipe.name = recipe.name .. '-cancer'
        local barrel_count = FUN.remove_result(recipe, 'empty-barrel')
        FUN.add_result(recipe, {'mutant-enzymes-barrel', barrel_count})
        recipe.icon = '__pyalienlifegraphics__/graphics/icons/mutant-enzymes.png'
        recipe.icon_size = 64
        data:extend{recipe}
    end

    local previous = {{'soil', 20}, {'vonix-den-mk01', 1}, {'vonix-den-mk02', 1}}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['vonix-den-mk01']),
        table.deepcopy(data.raw.recipe['vonix-den-mk02']),
        table.deepcopy(data.raw.recipe['vonix-den-mk03']),
    }) do
        recipe.name = recipe.name .. '-free'
        recipe.ingredients = {previous[i]}
        data:extend{recipe}
    end

    data:extend{{
        type = 'recipe',
        enabled = false,
        energy_required = 1,
        name = 'vonix-den-mk04-free',
        ingredients = {{'vonix-den-mk03', 1}},
        results = {{'vonix-den-mk04', 1}}
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'vonix-den-mk01',
        'vonix-den-mk02',
        'vonix-den-mk03',
        'vonix-den-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'vonix-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-vonix.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'simik-mk01', 'vonix', 'speed-module-3'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
                {'production-science-pack', 1},
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
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {type = 'unlock-recipe', recipe = 'vonix-direct-raising'}
            },
        },
        {
            name = 'uge',
            icon = '__pyalienlifegraphics3__/graphics/technology/uge.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
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
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {productivity = 0.05, type = 'module-effects'},
                {old = 'vonix-den-mk01', new = 'vonix-den-mk01-free', type = 'recipe-replacement'},
                {old = 'vonix-den-mk02', new = 'vonix-den-mk02-free', type = 'recipe-replacement'},
                {old = 'vonix-den-mk03', new = 'vonix-den-mk03-free', type = 'recipe-replacement'},
                {recipe = 'vonix-den-mk04-free', type = 'unlock-recipe'},
            }
        }
    },
    module_category = 'vonix'
}