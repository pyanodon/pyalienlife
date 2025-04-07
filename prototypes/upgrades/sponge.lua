if data and not yafc_turd_integration then
    data:extend {
        {
            type = "recipe",
            name = "sponge-pure-sand",
            enabled = false,
            ingredients = {
                {type = "item",  name = "sand",         amount = 8},
                {type = "fluid", name = "water-saline", amount = 20}
            },
            results = {
                {type = "item", name = "pure-sand", amount = 16}
            },
            category = "sponge",
            subgroup = "py-alienlife-sponge",
            order = "x",
            energy_required = 4
        },
        {
            type = "recipe",
            name = "sponge-stone-brick",
            enabled = false,
            ingredients = {
                {type = "item",  name = "gravel",       amount = 8},
                {type = "fluid", name = "water-saline", amount = 20}
            },
            results = {
                {type = "item", name = "stone-brick", amount = 9}
            },
            category = "sponge",
            subgroup = "py-alienlife-sponge",
            order = "x",
            energy_required = 4
        },
        {
            type = "recipe",
            name = "sponge-rich-clay",
            enabled = false,
            ingredients = {
                {type = "item",  name = "clay",         amount = 8},
                {type = "fluid", name = "water-saline", amount = 20}
            },
            results = {
                {type = "item", name = "rich-clay", amount = 12}
            },
            category = "sponge",
            subgroup = "py-alienlife-sponge",
            order = "x",
            energy_required = 4
        }
    }

    local productivity = {}
    local sponges = {"sea-sponge", "sea-sponge-mk02", "sea-sponge-mk03", "sea-sponge-mk04"}
    for i, recipe in pairs {
        RECIPE("sea-sponge-sprouts"):copy(),
        RECIPE("sea-sponge-sprouts-2"):copy(),
        RECIPE("sea-sponge-sprouts-3"):copy(),
        RECIPE("sea-sponge-sprouts-4"):copy(),
    } do
        recipe.name = recipe.name .. "-flagellum"
        productivity[i] = recipe.name
        recipe:add_result {name = sponges[i], probability = 0.15 + i * 0.2, type = "item", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
        recipe:add_ingredient {name = "limestone", type = "item", amount = 2}
        recipe.energy_required = recipe.energy_required * 1.5
        recipe.main_product = sponges[i]
        data:extend {recipe}
    end
    py.allow_productivity(productivity)

    for _, recipe in pairs {
        RECIPE("sea-sponge-1"):copy(),
        RECIPE("sea-sponge-2"):copy(),
    } do
        recipe.name = recipe.name .. "-no-zonga"
        recipe:remove_ingredient("zogna-bacteria")
        recipe:multiply_ingredient_amount("dirty-water-light", 3)
        recipe:multiply_ingredient_amount("phytoplankton", 3)
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "sponge-culture-mk01",
        "sponge-culture-mk02",
        "sponge-culture-mk03",
        "sponge-culture-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "sponge-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-sponge.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"water-invertebrates-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "flagellum",
            icon = "__pyalienlifegraphics3__/graphics/technology/flagellum.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "sponge-pure-sand",   type = "unlock-recipe"},
                {recipe = "sponge-stone-brick", type = "unlock-recipe"},
                {recipe = "sponge-rich-clay",   type = "unlock-recipe"}
            },
        },
        {
            name = "fragmentation",
            icon = "__pyalienlifegraphics3__/graphics/technology/fragmentation.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "sea-sponge-sprouts",   new = "sea-sponge-sprouts-flagellum",   type = "recipe-replacement"},
                {old = "sea-sponge-sprouts-2", new = "sea-sponge-sprouts-2-flagellum", type = "recipe-replacement"},
                {old = "sea-sponge-sprouts-3", new = "sea-sponge-sprouts-3-flagellum", type = "recipe-replacement"},
                {old = "sea-sponge-sprouts-4", new = "sea-sponge-sprouts-4-flagellum", type = "recipe-replacement"},
            }
        },
        {
            name = "bacterial",
            icon = "__pyalienlifegraphics3__/graphics/technology/bacterial.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "sea-sponge-1", new = "sea-sponge-1-no-zonga", type = "recipe-replacement"},
                {old = "sea-sponge-2", new = "sea-sponge-2-no-zonga", type = "recipe-replacement"}
            }
        }
    },
    module_category = "sponge"
}
