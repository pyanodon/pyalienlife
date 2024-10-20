if data and not yafc_turd_integration then
    for _, recipe in pairs {
        RECIPE("grod-1"):copy(),
        RECIPE("grod-2"):copy(),
        RECIPE("grod-3"):copy(),
        RECIPE("grod-4"):copy(),
    } do
        recipe.name = recipe.name .. "-pressured"
        recipe:remove_ingredient("water")
        recipe:add_ingredient {name = "pressured-water", amount = 2000, type = "fluid", fluidbox_index = 1}
        recipe:remove_ingredient("soil")
        recipe:remove_ingredient("urea")
        recipe:remove_ingredient("pesticide-mk01")
        recipe:remove_ingredient("pesticide-mk02")
        recipe:remove_ingredient("fertilizer")
        recipe:remove_ingredient("coarse")
        recipe:remove_ingredient("limestone")
        recipe:remove_ingredient("ash")
        data:extend {recipe}
    end

    for recipe, result in pairs {
        [RECIPE("grod-al"):copy()] = "al-biomass",
        [RECIPE("grod-al-2"):copy()] = "al-biomass",
        [RECIPE("grod-al-3"):copy()] = "al-biomass",
        [RECIPE("grod-pb"):copy()] = "pb-biomass",
        [RECIPE("grod-pb-2"):copy()] = "pb-biomass",
        [RECIPE("grod-pb-3"):copy()] = "pb-biomass",
        [RECIPE("grod-sn"):copy()] = "sn-biomass",
        [RECIPE("grod-sn-2"):copy()] = "sn-biomass",
        [RECIPE("grod-sn-3"):copy()] = "sn-biomass",
    } do
        recipe.name = recipe.name .. "-tailings"
        recipe:add_ingredient_amount("dirty-water-heavy", 100)
        recipe:multiply_result_amount(result, 8)
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("grod-1"):copy(),
        RECIPE("grod-2"):copy(),
        RECIPE("grod-3"):copy(),
        RECIPE("grod-4"):copy(),
    } do
        recipe.name = recipe.name .. "-dry"
        recipe:remove_ingredient("water")
        data:extend {recipe}
    end

    local seeds = RECIPE("grod-seeds"):copy()
    seeds.name = "grod-seeds-heavy-water"
    seeds.main_product = "grod-seeds"
    seeds:add_result {type = "fluid", name = "flavonoids", amount = 160}
    data:extend {seeds}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "grods-swamp-mk01",
        "grods-swamp-mk02",
        "grods-swamp-mk03",
        "grods-swamp-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "grod-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-grod.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"grod-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "hi-sprinkler",
            icon = "__pyalienlifegraphics3__/graphics/technology/hi-sprinkler.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "grod-1", new = "grod-1-pressured", type = "recipe-replacement"},
                {old = "grod-2", new = "grod-2-pressured", type = "recipe-replacement"},
                {old = "grod-3", new = "grod-3-pressured", type = "recipe-replacement"},
                {old = "grod-4", new = "grod-4-pressured", type = "recipe-replacement"},
            },
        },
        {
            name = "ground-irrigation",
            icon = "__pyalienlifegraphics3__/graphics/technology/ground-irrigation.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "grod-al",   new = "grod-al-tailings",   type = "recipe-replacement"},
                {old = "grod-pb",   new = "grod-pb-tailings",   type = "recipe-replacement"},
                {old = "grod-sn",   new = "grod-sn-tailings",   type = "recipe-replacement"},
                {old = "grod-al-2", new = "grod-al-2-tailings", type = "recipe-replacement"},
                {old = "grod-pb-2", new = "grod-pb-2-tailings", type = "recipe-replacement"},
                {old = "grod-sn-2", new = "grod-sn-2-tailings", type = "recipe-replacement"},
                {old = "grod-al-3", new = "grod-al-3-tailings", type = "recipe-replacement"},
                {old = "grod-pb-3", new = "grod-pb-3-tailings", type = "recipe-replacement"},
                {old = "grod-sn-3", new = "grod-sn-3-tailings", type = "recipe-replacement"},
            }
        },
        {
            name = "carbide-c",
            icon = "__pyalienlifegraphics3__/graphics/technology/carbide-c.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = -0.5, productivity = 0.25, speed = -0.5, type = "module-effects"},
                {old = "grod-seeds", new = "grod-seeds-heavy-water", type = "recipe-replacement"},
                {old = "grod-1",     new = "grod-1-dry",             type = "recipe-replacement"},
                {old = "grod-2",     new = "grod-2-dry",             type = "recipe-replacement"},
                {old = "grod-3",     new = "grod-3-dry",             type = "recipe-replacement"},
                {old = "grod-4",     new = "grod-4-dry",             type = "recipe-replacement"},
            }
        }
    },
    module_category = "grod"
}
