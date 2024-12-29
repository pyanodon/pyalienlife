if data and not yafc_turd_integration then
    for recipe, ingredient in pairs {
        [RECIPE("seaweed-crop-mk01"):copy()] = {"decider-combinator", 10},
        [RECIPE("seaweed-crop-mk02"):copy()] = {"arithmetic-combinator", 20},
        [RECIPE("seaweed-crop-mk03"):copy()] = {"decider-combinator", 30},
        [RECIPE("seaweed-crop-mk04"):copy()] = {"arithmetic-combinator", 40},
    } do
        recipe.name = recipe.name .. "-with-ai"
        recipe:add_ingredient(ingredient)
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("seaweed"):copy(),
        RECIPE("seaweed-2"):copy(),
        RECIPE("seaweed-3"):copy(),
        RECIPE("seaweed-4"):copy(),
        RECIPE("seaweed-5"):copy(),
    } do
        recipe.name = recipe.name .. "-dry"
        recipe:remove_ingredient("water")
        recipe:remove_ingredient("water-saline")
        data:extend {recipe}
    end

    data:extend {{
        name = "slacked-lime-seaweed-recycle",
        energy_required = 16,
        category = "seaweed",
        ingredients = {
            {type = "fluid", name = "slacked-lime", amount = 200},
            {type = "item",  name = "carbon-dust",  amount = 2},
        },
        results = {
            {"calcium-carbide", 16},
            {type = "fluid",    name = "oxygen", amount = 100},
        },
        enabled = false,
        type = "recipe",
        main_product = "calcium-carbide"
    }}

    data:extend {{
        name = "slacked-lime-from-seaweed",
        energy_required = 4,
        category = "bof",
        ingredients = {
            {type = "fluid", name = "water",   amount = 100},
            {type = "fluid", name = "oxygen",  amount = 50},
            {type = "item",  name = "seaweed", amount = 2},
        },
        results = {
            {type = "fluid", name = "slacked-lime", amount = 100},
            {type = "fluid", name = "chlorine",     amount = 20},
        },
        enabled = false,
        type = "recipe",
        main_product = "slacked-lime"
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "seaweed-crop-mk01",
        "seaweed-crop-mk02",
        "seaweed-crop-mk03",
        "seaweed-crop-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "seaweed-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-seaweed.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"seaweed-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "improved-pathfinding",
            icon = "__pyalienlifegraphics3__/graphics/technology/improved-pathfinding.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 0.5,         speed = 1.5,                       type = "module-effects"},
                {old = "seaweed-crop-mk01", new = "seaweed-crop-mk01-with-ai", type = "recipe-replacement"},
                {old = "seaweed-crop-mk02", new = "seaweed-crop-mk02-with-ai", type = "recipe-replacement"},
                {old = "seaweed-crop-mk03", new = "seaweed-crop-mk03-with-ai", type = "recipe-replacement"},
                {old = "seaweed-crop-mk04", new = "seaweed-crop-mk04-with-ai", type = "recipe-replacement"},
            },
        },
        {
            name = "precise-cutting",
            icon = "__pyalienlifegraphics3__/graphics/technology/precise-cutting.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "carbon-dust",                  type = "unlock-recipe", also_unlocked_by_techs = true},
                {recipe = "slacked-lime-seaweed-recycle", type = "unlock-recipe"},
                {recipe = "slacked-lime-from-seaweed",    type = "unlock-recipe"},
            }
        },
        {
            name = "recirculation-pump",
            icon = "__pyalienlifegraphics3__/graphics/technology/recirculation-pump.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "seaweed",   new = "seaweed-dry",   type = "recipe-replacement"},
                {old = "seaweed-2", new = "seaweed-2-dry", type = "recipe-replacement"},
                {old = "seaweed-3", new = "seaweed-3-dry", type = "recipe-replacement"},
                {old = "seaweed-4", new = "seaweed-4-dry", type = "recipe-replacement"},
                {old = "seaweed-5", new = "seaweed-5-dry", type = "recipe-replacement"}
            }
        }
    },
    module_category = "seaweed"
}
