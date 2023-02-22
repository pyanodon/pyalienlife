local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

local pyAE = (data and mods.pyalternativeenergy) or (script and script.active_mods.pyalternativeenergy)

if data then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['kmauts-cub-1']),
        table.deepcopy(data.raw.recipe['kmauts-cub-2']),
        table.deepcopy(data.raw.recipe['kmauts-cub-3']),
        table.deepcopy(data.raw.recipe['kmauts-cub-4']),
    }) do
        recipe.name = recipe.name .. '-eye-out'
        if pyAE then
            for _, result in pairs(recipe.results) do
                if result.name == 'kmauts-cub' then
                    FUN.add_result(recipe, {type = 'item', name = 'animal-eye', amount = result.amount})
                    break
                end
            end
        end
        data:extend{recipe}
    end

    local food = table.deepcopy(data.raw.recipe['kmauts-ration'])
    FUN.add_ingredient(food, {type = 'item', name = 'chitin', amount = 10})
    FUN.add_result_amount(food, 'kmauts-ration', 1)
    food.name = 'kmauts-ration-chitin'
    data:extend{food}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'kmauts-enclosure-mk01',
        'kmauts-enclosure-mk02',
        'kmauts-enclosure-mk03',
        'kmauts-enclosure-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'kmauts-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-kmauts.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'kmauts-mk03'},
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
            name = 'sex-ratio',
            icon = '__pyalienlifegraphics3__/graphics/technology/sex-ratio.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {productivity = 0.03, type = 'module-effects'}
            },
        },
        {
            name = 'eye-out',
            icon = '__pyalienlifegraphics3__/graphics/technology/eye-out.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'kmauts-cub-1', new = 'kmauts-cub-1-eye-out', type = 'recipe-replacement'},
                {old = 'kmauts-cub-2', new = 'kmauts-cub-2-eye-out', type = 'recipe-replacement'},
                {old = 'kmauts-cub-3', new = 'kmauts-cub-3-eye-out', type = 'recipe-replacement'},
                {old = 'kmauts-cub-4', new = 'kmauts-cub-4-eye-out', type = 'recipe-replacement'},
            }
        },
        {
            name = 'moult-recycle',
            icon = '__pyalienlifegraphics3__/graphics/technology/moult-recycle.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'kmauts-ration', new = 'kmauts-ration-chitin', type = 'recipe-replacement'}
            }
        }
    },
    module_category = 'kmauts'
}