if data and not yafc_turd_integration then
    for _, recipe in pairs {
        RECIPE("vrauks-1"):copy(),
        RECIPE("vrauks-2"):copy(),
        RECIPE("vrauks-3"):copy(),
        RECIPE("vrauks-4"):copy(),
        RECIPE("vrauks-5"):copy(),
        RECIPE("vrauks-cocoon-1"):copy(),
        RECIPE("vrauks-cocoon-2"):copy(),
        RECIPE("vrauks-cocoon-3"):copy(),
        RECIPE("vrauks-cocoon-4"):copy(),
        RECIPE("vrauks-cocoon-5"):copy(),
    } do
        recipe.name = recipe.name .. "-no-water"
        recipe:remove_ingredient("syrup-01-barrel")
        recipe:remove_ingredient("water-barrel")
        recipe:remove_result("barrel")
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("vrauks-paddock-mk01"):copy(),
        RECIPE("vrauks-paddock-mk02"):copy(),
        RECIPE("vrauks-paddock-mk03"):copy(),
        RECIPE("vrauks-paddock-mk04"):copy(),
    } do
        recipe.main_product = recipe.name
        recipe.name = recipe.name .. "-with-lamp"
        recipe:add_result {type = "item", name = "small-lamp", amount = i * 32}
        data:extend {recipe}
    end

    data:extend {{
        type = "recipe",
        name = "ammonia-from-cyanic",
        category = "distilator",
        enabled = false,
        energy_required = 24,
        ingredients = {
            {type = "fluid", name = "cyanic-acid", amount = 60},
            {type = "fluid", name = "hydrogen",    amount = 300},
            {type = "fluid", name = "formic-acid", amount = 30},
        },
        results = {
            {type = "fluid", name = "ammonia",        amount = 350},
            {type = "fluid", name = "carbon-dioxide", amount = 30},
        },
        main_product = "ammonia",
        localised_name = {"technology-name.cyanic-recycling"}
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "vrauks-paddock-mk01",
        "vrauks-paddock-mk02",
        "vrauks-paddock-mk03",
        "vrauks-paddock-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "vrauks-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-vrauk.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"vrauks-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "reuse-water",
            icon = "__pyalienlifegraphics3__/graphics/technology/reuse-water.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "vrauks-1",        new = "vrauks-1-no-water",        type = "recipe-replacement"},
                {old = "vrauks-2",        new = "vrauks-2-no-water",        type = "recipe-replacement"},
                {old = "vrauks-3",        new = "vrauks-3-no-water",        type = "recipe-replacement"},
                {old = "vrauks-4",        new = "vrauks-4-no-water",        type = "recipe-replacement"},
                {old = "vrauks-5",        new = "vrauks-5-no-water",        type = "recipe-replacement"},
                {old = "vrauks-cocoon-1", new = "vrauks-cocoon-1-no-water", type = "recipe-replacement"},
                {old = "vrauks-cocoon-2", new = "vrauks-cocoon-2-no-water", type = "recipe-replacement"},
                {old = "vrauks-cocoon-3", new = "vrauks-cocoon-3-no-water", type = "recipe-replacement"},
                {old = "vrauks-cocoon-4", new = "vrauks-cocoon-4-no-water", type = "recipe-replacement"},
                {old = "vrauks-cocoon-5", new = "vrauks-cocoon-5-no-water", type = "recipe-replacement"},
            },
        },
        {
            name = "natural-cycle",
            icon = "__pyalienlifegraphics3__/graphics/technology/natural-cycle.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = -0.5,          speed = -0.25,                         productivity = 0.15,        type = "module-effects"},
                {old = "vrauks-paddock-mk01", new = "vrauks-paddock-mk01-with-lamp", type = "recipe-replacement"},
                {old = "vrauks-paddock-mk02", new = "vrauks-paddock-mk02-with-lamp", type = "recipe-replacement"},
                {old = "vrauks-paddock-mk03", new = "vrauks-paddock-mk03-with-lamp", type = "recipe-replacement"},
                {old = "vrauks-paddock-mk04", new = "vrauks-paddock-mk04-with-lamp", type = "recipe-replacement"},
            }
        },
        {
            name = "cyanic-recycling",
            icon = "__pyalienlifegraphics3__/graphics/technology/cyanic-recycling.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "ammonia-from-cyanic", type = "unlock-recipe"}
            }
        }
    },
    module_category = "vrauks"
}
