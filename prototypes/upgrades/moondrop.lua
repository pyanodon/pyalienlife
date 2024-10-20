if data and not yafc_turd_integration then
    for _, recipe in pairs {
        RECIPE("moondrop-1"):copy(),
        RECIPE("moondrop-2"):copy(),
        RECIPE("moondrop-3"):copy(),
        RECIPE("moondrop-4"):copy(),
        RECIPE("moondrop-5"):copy(),
    } do
        recipe.name = recipe.name .. "-cu"
        recipe:add_ingredient {name = "copper-ore", amount = 10, type = "item"}
        recipe:multiply_result_amount("moondrop", 1.2)
        recipe.energy_required = math.ceil(recipe.energy_required * 0.8)
        data:extend {recipe}
    end

    data:extend {{
        name = "methane-co2-with-lamp",
        results = {
            {type = "fluid", amount = 60, name = "methane"},
            {type = "fluid", amount = 40, name = "oxygen"},
            {type = "item",  amount = 1,  name = "small-lamp", probability = 0.75},
        },
        energy_required = 8,
        ingredients = {
            {type = "item",  amount = 1,   name = "small-lamp"},
            {type = "fluid", amount = 100, name = "water"},
        },
        category = "moon",
        enabled = false,
        type = "recipe",
        main_product = "methane"
    }}

    data:extend {{
        name = "moondrop-co2",
        results = {{type = "fluid", amount = 100, name = "carbon-dioxide", fluidbox_index = 1}},
        energy_required = 10,
        ingredients = {},
        category = "moon",
        enabled = false,
        type = "recipe"
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "moondrop-greenhouse-mk01",
        "moondrop-greenhouse-mk02",
        "moondrop-greenhouse-mk03",
        "moondrop-greenhouse-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "moondrop-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-moondrop.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"moondrop"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "cu",
            icon = "__pyalienlifegraphics3__/graphics/technology/cu.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "moondrop-1", new = "moondrop-1-cu", type = "recipe-replacement"},
                {old = "moondrop-2", new = "moondrop-2-cu", type = "recipe-replacement"},
                {old = "moondrop-3", new = "moondrop-3-cu", type = "recipe-replacement"},
                {old = "moondrop-4", new = "moondrop-4-cu", type = "recipe-replacement"},
                {old = "moondrop-5", new = "moondrop-5-cu", type = "recipe-replacement"},
            },
        },
        {
            name = "moon",
            icon = "__pyalienlifegraphics3__/graphics/technology/moon.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "methane-co2-with-lamp", type = "unlock-recipe"},
            }
        },
        {
            name = "carbon-capture",
            icon = "__pyalienlifegraphics3__/graphics/technology/carbon-capture.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 1,         type = "module-effects"},
                {recipe = "moondrop-co2", type = "unlock-recipe"}
            }
        }
    },
    module_category = "moondrop"
}
