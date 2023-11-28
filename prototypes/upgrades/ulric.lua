local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{
        {
            type = 'item',
            name = 'saddle',
            stack_size = 10,
            subgroup = 'py-alienlife-items',
            icon = '__pyalienlifegraphics__/graphics/icons/saddle.png',
            icon_size = 64
        },
        {
            type = 'recipe',
            name = 'saddle',
            energy_required = 4,
            category = 'crafting-with-fluid',
            enabled = false,
            ingredients = {
                {name = 'skin', amount = 4, type = 'item'},
                {name = 'niobium-plate', amount = 1, type = 'item'},
                {name = 'flue-gas', amount = 250, type = 'fluid'},
            },
            results = {{'saddle', 20}}
        },
        {
            type = 'recipe',
            name = 'saddle-b',
            energy_required = 4,
            category = 'crafting-with-fluid',
            enabled = false,
            ingredients = {
                {name = 'skin', amount = 4, type = 'item'},
                {name = 'nichrome', amount = 1, type = 'item'},
                {name = 'micro-fiber', amount = 1, type = 'item'},
            },
            results = {{'saddle', 40}}
        },
        {
            type = 'recipe',
            name = 'noooo dont turn that horse into glue',
            energy_required = 8,
            enabled = false,
            category = 'impact-crusher',
            ingredients = {
                {name = 'caged-ulric', amount = 1, type = 'item'},
                {name = 'collagen', amount = 1, type = 'item'},
            },
            results = {
                {name = 'epoxy', amount = 2, type = 'item'},
                {name = 'cage', amount = 1, type = 'item'},
            },
            main_product = 'epoxy',
            subgroup = 'py-rawores-titanium'
        }
    }

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['ulric-cub-1']),
        table.deepcopy(data.raw.recipe['ulric-cub-2']),
        table.deepcopy(data.raw.recipe['ulric-cub-3']),
        table.deepcopy(data.raw.recipe['ulric-cub-4']),
    }) do
        recipe.name = recipe.name .. '-saddle'
        FUN.add_ingredient(recipe, {name = 'saddle', amount = 1, type = 'item'})
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['ulric-1']),
        table.deepcopy(data.raw.recipe['ulric-2']),
        table.deepcopy(data.raw.recipe['ulric-3']),
        table.deepcopy(data.raw.recipe['ulric-4']),
    }) do
        recipe.name = recipe.name .. '-manure'
        FUN.add_result(recipe, {name = 'manure', amount = 2, type = 'item'})
        if i ~= 1 then FUN.add_result(recipe, {name = 'bedding', amount_max = 1, type = 'item', amount_min = 0}) end
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'ulric-corral-mk01',
        'ulric-corral-mk02',
        'ulric-corral-mk03',
        'ulric-corral-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'ulric-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-ulric.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'ulric-mk02'},
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
            name = 'dummy-ulric',
            icon = '__pyalienlifegraphics3__/graphics/technology/dummy-ulric.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'noooo dont turn that horse into glue', type = 'unlock-recipe'},
            },
        },
        {
            name = 'heated-pads',
            icon = '__pyalienlifegraphics3__/graphics/technology/heating-pad.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {speed = 0.15, productivity = 0.15, type = 'module-effects'},
                {recipe = 'saddle', type = 'unlock-recipe'},
                {recipe = 'saddle-b', type = 'unlock-recipe'},
                {old = 'ulric-cub-1', new = 'ulric-cub-1-saddle', type = 'recipe-replacement'},
                {old = 'ulric-cub-2', new = 'ulric-cub-2-saddle', type = 'recipe-replacement'},
                {old = 'ulric-cub-3', new = 'ulric-cub-3-saddle', type = 'recipe-replacement'},
                {old = 'ulric-cub-4', new = 'ulric-cub-4-saddle', type = 'recipe-replacement'},
            }
        },
        {
            name = 'scraping-bots',
            icon = '__pyalienlifegraphics3__/graphics/technology/scraping-bots.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'ulric-1', new = 'ulric-1-manure', type = 'recipe-replacement'},
                {old = 'ulric-2', new = 'ulric-2-manure', type = 'recipe-replacement'},
                {old = 'ulric-3', new = 'ulric-3-manure', type = 'recipe-replacement'},
                {old = 'ulric-4', new = 'ulric-4-manure', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'ulric'
}