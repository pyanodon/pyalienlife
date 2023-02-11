local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['zipir-eggs-1']),
        table.deepcopy(data.raw.recipe['zipir-eggs-2']),
        table.deepcopy(data.raw.recipe['zipir-eggs-3']),
        table.deepcopy(data.raw.recipe['zipir-eggs-4']),
        table.deepcopy(data.raw.recipe['zipir-eggs-5']),
    }) do
        recipe.name = recipe.name .. '-suicide'
        local death_count = FUN.remove_result(recipe, 'zipir1')
        FUN.add_result(recipe, {name = 'zipir-carcass', type = 'item', amount = death_count})
        for _, result in pairs(recipe.results) do
            if result.name == 'zipir-eggs' then
                result.amount = result.amount_max + 2
                result.amount_max = nil
                result.amount_min = nil
                break
            end
        end
        data:extend{recipe}
    end

    local rendering = data.raw.recipe['rendering']
    rendering.category = 'slaughterhouse'
    rendering.subgroup = 'py-alienlife-zipir'
    rendering.results = table.deepcopy(data.raw.recipe['full-render-zipir'].results)
    for _, result in pairs(rendering.results) do
        result.amount = math.ceil(result.amount / 2)
    end
    FUN.remove_result(rendering, 'brain')
    rendering.hidden = false

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['zipir-eggs-1']),
        table.deepcopy(data.raw.recipe['zipir-eggs-2']),
        table.deepcopy(data.raw.recipe['zipir-eggs-3']),
        table.deepcopy(data.raw.recipe['zipir-eggs-4']),
        table.deepcopy(data.raw.recipe['zipir-eggs-5']),
    }) do
        recipe.name = recipe.name .. '-trits-gen'
        recipe.energy_required = recipe.energy_required * 3
        FUN.add_ingredient(recipe, {name = 'trits-codex', type = 'item', amount = 1})
        for _, result in pairs(recipe.results) do
            if result.name == 'zipir-eggs' then
                result.amount_max = result.amount_max * 3
                result.amount_min = result.amount_min * 3
                break
            end
        end
        data:extend{recipe}
    end

    local machine_recipe = table.deepcopy(data.raw.recipe['zipir-reef-mk01'])
    machine_recipe.name = machine_recipe.name .. '-with-rc'
    FUN.add_ingredient(machine_recipe, {name = 'rc-mk01', amount = 1, type = 'item'})
    data:extend{machine_recipe}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'zipir-reef-mk01',
        'zipir-reef-mk02',
        'zipir-reef-mk03',
        'zipir-reef-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'zipir-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-zipir.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'zipir', 'trits'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'suicide',
            icon = '__pyalienlifegraphics3__/graphics/technology/suicide.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'rendering', type = 'unlock-recipe'},
                {old = 'zipir-eggs-1', new = 'zipir-eggs-1-suicide', type = 'recipe-replacement'},
                {old = 'zipir-eggs-2', new = 'zipir-eggs-2-suicide', type = 'recipe-replacement'},
                {old = 'zipir-eggs-3', new = 'zipir-eggs-3-suicide', type = 'recipe-replacement'},
                {old = 'zipir-eggs-4', new = 'zipir-eggs-4-suicide', type = 'recipe-replacement'},
                {old = 'zipir-eggs-5', new = 'zipir-eggs-5-suicide', type = 'recipe-replacement'},
            },
        },
        {
            name = 'sr',
            icon = '__pyalienlifegraphics3__/graphics/technology/sr.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {old = 'zipir-eggs-1', new = 'zipir-eggs-1-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-2', new = 'zipir-eggs-2-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-3', new = 'zipir-eggs-3-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-4', new = 'zipir-eggs-4-trits-gen', type = 'recipe-replacement'},
                {old = 'zipir-eggs-5', new = 'zipir-eggs-5-trits-gen', type = 'recipe-replacement'},
            }
        },
        {
            name = 'hatchery',
            icon = '__pyalienlifegraphics3__/graphics/technology/hatchery.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = -0.40, speed = 0.1, type = 'module-effects'},
                {old = 'zipir-reef-mk01', new = 'zipir-reef-mk01-with-rc', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'zipir'
}