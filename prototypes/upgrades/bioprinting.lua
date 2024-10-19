if data and not yafc_turd_integration then
    for _, recipe in pairs {
        RECIPE("bio-scafold"):copy(),
        RECIPE("bio-scafold-2"):copy(),
        RECIPE("bio-scafold-3"):copy(),
        RECIPE("bio-scafold-4"):copy(),
    } do
        recipe.name = recipe.name .. "-with-lamp"
        recipe:add_ingredient {"small-lamp", 1}
        recipe:multiply_result_amount("bio-scafold", 2)
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("bio-printer-mk01"):copy(),
        RECIPE("bio-printer-mk02"):copy(),
        RECIPE("bio-printer-mk03"):copy(),
        RECIPE("bio-printer-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-yag"
        recipe:add_ingredient {type = "item", name = "yag-laser-module", amount = 2 * i}
        data:extend {recipe}
    end

    data:extend {
        {
            type = "recipe",
            name = "stem-cell-recycle-1",
            enabled = false,
            category = "atomizer",
            results = {{type = "fluid", name = "psc", amount = 30}},
            ingredients = {
                {"bones",         3},
                {"chitin",        3},
                {"mukmoux-fat",   5},
                {name = "oxygen", amount = 150, type = "fluid"}
            },
            energy_required = 5
        },
        {
            type = "recipe",
            name = "stem-cell-recycle-2",
            enabled = false,
            category = "atomizer",
            results = {{type = "fluid", name = "psc", amount = 30}},
            ingredients = {
                {"bonemeal",      3},
                {"skin",          5},
                {"brain",         2},
                {name = "oxygen", amount = 150, type = "fluid"}
            },
            energy_required = 5
        },
        {
            type = "recipe",
            name = "stem-cell-recycle-3",
            enabled = false,
            category = "atomizer",
            results = {{type = "fluid", name = "psc", amount = 30}},
            ingredients = {
                {"guts",          6},
                {"meat",          4},
                {type = "fluid",  name = "blood", amount = 40},
                {name = "oxygen", amount = 150,   type = "fluid"}
            },
            energy_required = 5
        }
    }
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "bio-printer-mk01",
        "bio-printer-mk02",
        "bio-printer-mk03",
        "bio-printer-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "bioprinting-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-bioprinting.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"organ-printing-mk02", "parametric-oscilator"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       2},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       2},
                {"production-science-pack", 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "high-viability",
            icon = "__pyalienlifegraphics3__/graphics/technology/high-viability.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "bio-scafold",   new = "bio-scafold-with-lamp",   type = "recipe-replacement"},
                {old = "bio-scafold-2", new = "bio-scafold-2-with-lamp", type = "recipe-replacement"},
                {old = "bio-scafold-3", new = "bio-scafold-3-with-lamp", type = "recipe-replacement"},
                {old = "bio-scafold-4", new = "bio-scafold-4-with-lamp", type = "recipe-replacement"},
            },
        },
        {
            name = "biomimetics",
            icon = "__pyalienlifegraphics3__/graphics/technology/biomimetics.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 2,          speed = -1,                   productivity = 0.15,        type = "module-effects"},
                {old = "bio-printer-mk01", new = "bio-printer-mk01-yag", type = "recipe-replacement"},
                {old = "bio-printer-mk02", new = "bio-printer-mk02-yag", type = "recipe-replacement"},
                {old = "bio-printer-mk03", new = "bio-printer-mk03-yag", type = "recipe-replacement"},
                {old = "bio-printer-mk04", new = "bio-printer-mk04-yag", type = "recipe-replacement"},
            }
        },
        {
            name = "covalent",
            icon = "__pyalienlifegraphics3__/graphics/technology/covalent.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "unlock-recipe", recipe = "stem-cell-recycle-1"},
                {type = "unlock-recipe", recipe = "stem-cell-recycle-2"},
                {type = "unlock-recipe", recipe = "stem-cell-recycle-3"}
            }
        }
    },
    module_category = "bioprinting"
}
