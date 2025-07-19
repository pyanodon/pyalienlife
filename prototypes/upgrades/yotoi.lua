if data and not yafc_turd_integration then
    local recipe = RECIPE("yotoi-seeds"):copy()
    recipe.name = "yotoi-seeds-cold"
    recipe:add_ingredient {type = "fluid", name = "cold-air", amount = 30}
    recipe:add_ingredient {type = "item", name = "yotoi-leaves", amount = 1}
    recipe:multiply_result_amount("yotoi-seeds", 3)
    recipe.energy_required = recipe.energy_required * 4
    data:extend {recipe}

    for i, recipe in pairs {
        RECIPE("yotoi-1"):copy(),
        RECIPE("yotoi-2"):copy(),
        RECIPE("yotoi-3"):copy(),
        RECIPE("yotoi-4"):copy(),
    } do
        recipe.name = recipe.name .. "-free-leaves"
        recipe:add_ingredient {type = "item", name = "burner-inserter", amount = 1}
        recipe:add_result {name = "yotoi-leaves", amount = i * 4, type = "item"}
        recipe.main_product = "yotoi-leaves"
        data:extend {recipe}
    end

    data:extend {
        {
            type = "item",
            name = "nutrient",
            icon_size = 64,
            icon = "__pyalienlifegraphics__/graphics/icons/nutrient.png",
            stack_size = 50,
            subgroup = "py-alienlife-items"
        },
        {
            type = "recipe",
            enabled = false,
            energy_required = 40,
            results = {{type = "item", name = "nutrient", amount = 1}},
            name = "nutrient",
            category = "electronic",
            ingredients = {
                {type = "fluid", name = "manure-bacteria",       amount = 100},
                {type = "fluid", name = "etching",               amount = 100},
                {type = "item",  name = "soil",                  amount = 100},
                {type = "item",  name = "silica-shell",          amount = 15},
                {type = "item",  name = "polycrystalline-plate", amount = 40},
                {type = "item",  name = "electronics-mk03",      amount = 2},
                {type = "item",  name = "controler-mk03",        amount = 1},
                {type = "item",  name = "polycrystalline-cell",  amount = 12},
                {type = "item",  name = "processing-unit",       amount = 20},
            }
        }
    }

    for _, recipe in pairs {
        RECIPE("yotoi-2"):copy(),
        RECIPE("yotoi-3"):copy(),
        RECIPE("yotoi-4"):copy(),
        RECIPE("yotoi-fruit-2"):copy(),
        RECIPE("yotoi-fruit-3"):copy(),
        RECIPE("yotoi-fruit-4"):copy(),
    } do
        recipe.name = recipe.name .. "-nutrient"
        local _, amount = recipe:remove_ingredient("fertilizer")
        recipe:add_result {type = "item", name = "fertilizer", amount = amount}
        recipe:add_result_amount("yotoi", 1)
        recipe:add_result_amount("yotoi-fruit", 1)
        recipe.main_product = "fertilizer"
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("yotoi-aloe-orchard-mk01"):copy(),
        RECIPE("yotoi-aloe-orchard-mk02"):copy(),
        RECIPE("yotoi-aloe-orchard-mk03"):copy(),
        RECIPE("yotoi-aloe-orchard-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-nutrient"
        recipe:add_ingredient {type = "item", name = "nutrient", amount = 2 ^ (i - 1)}
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "yotoi-aloe-orchard-mk01",
        "yotoi-aloe-orchard-mk02",
        "yotoi-aloe-orchard-mk03",
        "yotoi-aloe-orchard-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "yotoi-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-yotoi.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"yotoi-mk02", "machine-components-mk03"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"military-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "cryopreservation",
            icon = "__pyalienlifegraphics3__/graphics/technology/cryopreservation.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "yotoi-seeds", new = "yotoi-seeds-cold", type = "recipe-replacement"}
            },
        },
        {
            name = "harvest",
            icon = "__pyalienlifegraphics3__/graphics/technology/harvest.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "yotoi-1", new = "yotoi-1-free-leaves", type = "recipe-replacement"},
                {old = "yotoi-2", new = "yotoi-2-free-leaves", type = "recipe-replacement"},
                {old = "yotoi-3", new = "yotoi-3-free-leaves", type = "recipe-replacement"},
                {old = "yotoi-4", new = "yotoi-4-free-leaves", type = "recipe-replacement"},
            }
        },
        {
            name = "nutrinet",
            icon = "__pyalienlifegraphics3__/graphics/technology/nutrinet.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "nutrient",             type = "unlock-recipe"},
                {old = "yotoi-aloe-orchard-mk01", new = "yotoi-aloe-orchard-mk01-with-nutrient", type = "recipe-replacement"},
                {old = "yotoi-aloe-orchard-mk02", new = "yotoi-aloe-orchard-mk02-with-nutrient", type = "recipe-replacement"},
                {old = "yotoi-aloe-orchard-mk03", new = "yotoi-aloe-orchard-mk03-with-nutrient", type = "recipe-replacement"},
                {old = "yotoi-aloe-orchard-mk04", new = "yotoi-aloe-orchard-mk04-with-nutrient", type = "recipe-replacement"},
                {old = "yotoi-2",                 new = "yotoi-2-nutrient",                      type = "recipe-replacement"},
                {old = "yotoi-3",                 new = "yotoi-3-nutrient",                      type = "recipe-replacement"},
                {old = "yotoi-4",                 new = "yotoi-4-nutrient",                      type = "recipe-replacement"},
                {old = "yotoi-fruit-2",           new = "yotoi-fruit-2-nutrient",                type = "recipe-replacement"},
                {old = "yotoi-fruit-3",           new = "yotoi-fruit-3-nutrient",                type = "recipe-replacement"},
                {old = "yotoi-fruit-4",           new = "yotoi-fruit-4-nutrient",                type = "recipe-replacement"},
            }
        }
    },
    module_category = "yotoi"
}
