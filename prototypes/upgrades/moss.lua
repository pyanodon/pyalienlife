if data and not yafc_turd_integration then
    data:extend {{
        type = "recipe",
        name = "chlorinated-water",
        category = "chemistry",
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = "fluid", name = "pressured-water", amount = 50},
            {type = "fluid", name = "chlorine",        amount = 10},
            {"plastic-bar",  1}
        },
        results = {
            {type = "item", name = "chlorinated-water", amount = 1},
        },
    }}

    py.allow_productivity {"chlorinated-water"}

    for _, recipe in pairs {
        RECIPE("Moss-1"):copy(),
        RECIPE("Moss-2"):copy(),
        RECIPE("Moss-3"):copy(),
        RECIPE("Moss-4"):copy(),
        RECIPE("Moss-5"):copy(),
    } do
        recipe.name = recipe.name .. "-chlorinated"
        recipe:add_ingredient {name = "chlorinated-water", amount = 1, type = "item"}
        recipe:multiply_result_amount("moss", 1.4)
        recipe.energy_required = math.ceil(recipe.energy_required * 0.75)
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("Moss-1"):copy(),
        RECIPE("Moss-2"):copy(),
        RECIPE("Moss-3"):copy(),
        RECIPE("Moss-4"):copy(),
        RECIPE("Moss-5"):copy(),
    } do
        recipe.name = recipe.name .. "-without-sludge"
        recipe:add_result {type = "item", name = "coarse", amount_min = 5 * (i - 1), amount_max = 5 * i}
        recipe.main_product = "coarse"
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("Moss-1"):copy(),
        RECIPE("Moss-2"):copy(),
        RECIPE("Moss-3"):copy(),
        RECIPE("Moss-4"):copy(),
        RECIPE("Moss-5"):copy(),
    } do
        recipe.name = recipe.name .. "-without-sludge-for-real"
        recipe:remove_ingredient("dirty-water-light")
        data:extend {recipe}
    end

    data:extend {
        {
            type = "recipe",
            name = "unrefine-refsyngas",
            category = "moss",
            energy_required = 8,
            ingredients = {
                {type = "fluid", name = "refsyngas",         amount = 50},
                {type = "item",  name = "moss",              amount = 1},
                {type = "fluid", name = "dirty-water-light", amount = 50},
            },
            results = {
                {type = "fluid", name = "syngas", amount = 100}
            },
            enabled = false
        },
        {
            type = "recipe",
            name = "unrefine-refined-natural-gas",
            category = "moss",
            energy_required = 8,
            ingredients = {
                {type = "fluid", name = "refined-natural-gas", amount = 100},
                {type = "item",  name = "moss",                amount = 2},
                {type = "fluid", name = "carbon-dioxide",      amount = 50},
            },
            results = {
                {type = "fluid", name = "natural-gas", amount = 90}
            },
            enabled = false
        },
    }

    for i, recipe in pairs {
        RECIPE("moss-farm-mk01"):copy(),
        RECIPE("moss-farm-mk02"):copy(),
        RECIPE("moss-farm-mk03"):copy(),
        RECIPE("moss-farm-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-bioreactor"
        recipe:add_ingredient {name = "bio-reactor-mk0" .. i, amount = 1, type = "item"}
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "moss-farm-mk01",
        "moss-farm-mk02",
        "moss-farm-mk03",
        "moss-farm-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "moss-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-moss.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"machines-mk01", "moss-mk01", "melamine"},
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
            name = "spores",
            icon = "__pyalienlifegraphics3__/graphics/technology/spores.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "chlorinated-water", type = "unlock-recipe"},
                {old = "Moss-1",               new = "Moss-1-chlorinated", type = "recipe-replacement"},
                {old = "Moss-2",               new = "Moss-2-chlorinated", type = "recipe-replacement"},
                {old = "Moss-3",               new = "Moss-3-chlorinated", type = "recipe-replacement"},
                {old = "Moss-4",               new = "Moss-4-chlorinated", type = "recipe-replacement"},
                {old = "Moss-5",               new = "Moss-5-chlorinated", type = "recipe-replacement"},
            },
        },
        {
            name = "hd-moss",
            icon = "__pyalienlifegraphics3__/graphics/technology/hd-moss.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 1.5, type = "module-effects"},
                {old = "Moss-1",    new = "Moss-1-without-sludge", type = "recipe-replacement"},
                {old = "Moss-2",    new = "Moss-2-without-sludge", type = "recipe-replacement"},
                {old = "Moss-3",    new = "Moss-3-without-sludge", type = "recipe-replacement"},
                {old = "Moss-4",    new = "Moss-4-without-sludge", type = "recipe-replacement"},
                {old = "Moss-5",    new = "Moss-5-without-sludge", type = "recipe-replacement"},
            }
        },
        {
            name = "inbuilt-moss",
            icon = "__pyalienlifegraphics3__/graphics/technology/inbuilt-moss.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {pollution = -2.5,                        type = "module-effects"},
                {recipe = "unrefine-refsyngas",           type = "unlock-recipe"},
                {recipe = "unrefine-refined-natural-gas", type = "unlock-recipe"},
                {old = "moss-farm-mk01",                  new = "moss-farm-mk01-with-bioreactor", type = "recipe-replacement"},
                {old = "moss-farm-mk02",                  new = "moss-farm-mk02-with-bioreactor", type = "recipe-replacement"},
                {old = "moss-farm-mk03",                  new = "moss-farm-mk03-with-bioreactor", type = "recipe-replacement"},
                {old = "moss-farm-mk04",                  new = "moss-farm-mk04-with-bioreactor", type = "recipe-replacement"},
            }
        },
        {
            name = "remove-muddy-sludge",
            icon = "__pyalienlifegraphics3__/graphics/technology/carbide-c.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "Moss-1", new = "Moss-1-without-sludge-for-real", type = "recipe-replacement"},
                {old = "Moss-2", new = "Moss-2-without-sludge-for-real", type = "recipe-replacement"},
                {old = "Moss-3", new = "Moss-3-without-sludge-for-real", type = "recipe-replacement"},
                {old = "Moss-4", new = "Moss-4-without-sludge-for-real", type = "recipe-replacement"},
                {old = "Moss-5", new = "Moss-5-without-sludge-for-real", type = "recipe-replacement"},
            }
        }
    },
    module_category = "moss"
}
