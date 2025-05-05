if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("fawogae-1"):copy(),
        RECIPE("fawogae-2"):copy(),
        RECIPE("fawogae-3"):copy(),
        RECIPE("fawogae-4"):copy(),
        RECIPE("fawogae-5"):copy(),
    } do
        recipe.name = recipe.name .. "-nitrogen"
        recipe:remove_ingredient("water")
        recipe:remove_ingredient("manure")
        recipe:remove_ingredient("biomass")
        recipe:remove_ingredient("urea")
        recipe:add_ingredient {type = "fluid", name = "purest-nitrogen-gas", amount = 50 * i}
        recipe:multiply_result_amount("fawogae", 1.5)
        data:extend {recipe}
    end

    data:extend {{
        type = "recipe",
        name = "acid-gas-fawogae",
        enabled = false,
        category = "desulfurization",
        energy_required = 6,
        ingredients = {
            {type = "item",  name = "fawogae", amount = 2},
            {type = "item",  name = "sulfur",  amount = 2},
            {type = "fluid", name = "oxygen",  amount = 50},
        },
        results = {
            {type = "fluid", name = "acidgas", amount = 250},
        }
    }}

    for _, recipe in pairs {
        RECIPE("fawogae-sample"):copy(),
        RECIPE("fawogae-mk02"):copy(),
        RECIPE("fawogae-mk03"):copy(),
        RECIPE("fawogae-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-xeno-codex"
        recipe:add_ingredient {type = "item", name = "xeno-codex", amount = 1}
        data:extend {recipe}
    end

    local coal_fawogae = RECIPE("coal-fawogae"):copy()
    coal_fawogae.name = "coal-fawogae-buffed"
    coal_fawogae.energy_required = coal_fawogae.energy_required * 4
    coal_fawogae.ingredients[1].amount = 10
    coal_fawogae:remove_result("raw-coal")
    coal_fawogae:add_result {type = "item", name = "active-carbon", amount = 3}
    coal_fawogae.icons = nil
    coal_fawogae.icon = nil
    coal_fawogae.main_product = "active-carbon"
    data:extend {coal_fawogae}

    for i, recipe in pairs {
        RECIPE("fawogae-plantation-mk01"):copy(),
        RECIPE("fawogae-plantation-mk02"):copy(),
        RECIPE("fawogae-plantation-mk03"):copy(),
        RECIPE("fawogae-plantation-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-pressure-pump"
        recipe:add_ingredient {name = "vacuum-pump-mk0" .. i, amount = 1, type = "item"}
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "fawogae-plantation-mk01",
        "fawogae-plantation-mk02",
        "fawogae-plantation-mk03",
        "fawogae-plantation-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "fawogae-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-fawogae.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"fawogae-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "n2-ferti",
            icon = "__pyalienlifegraphics3__/graphics/technology/n2-ferti.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "fawogae-1", new = "fawogae-1-nitrogen", type = "recipe-replacement"},
                {old = "fawogae-2", new = "fawogae-2-nitrogen", type = "recipe-replacement"},
                {old = "fawogae-3", new = "fawogae-3-nitrogen", type = "recipe-replacement"},
                {old = "fawogae-4", new = "fawogae-4-nitrogen", type = "recipe-replacement"},
                {old = "fawogae-5", new = "fawogae-5-nitrogen", type = "recipe-replacement"},
            }
        },
        {
            name = "acidosis",
            icon = "__pyalienlifegraphics3__/graphics/technology/acidosis.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {speed = 0.1,                    type = "module-effects"},
                {recipe = "desulfurizator-unit", type = "unlock-recipe"},
                {recipe = "acid-gas-fawogae",    type = "unlock-recipe"},
                {recipe = "xeno-codex",          type = "unlock-recipe",                 also_unlocked_by_techs = true},
                {old = "fawogae-sample",         new = "fawogae-sample-with-xeno-codex", type = "recipe-replacement"},
                {old = "fawogae-mk02",           new = "fawogae-mk02-with-xeno-codex",   type = "recipe-replacement"},
                {old = "fawogae-mk03",           new = "fawogae-mk03-with-xeno-codex",   type = "recipe-replacement"},
                {old = "fawogae-mk04",           new = "fawogae-mk04-with-xeno-codex",   type = "recipe-replacement"},
            }
        },
        {
            name = "dry",
            icon = "__pyalienlifegraphics3__/graphics/technology/dry.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 3.5,               type = "module-effects"},
                {recipe = "coal-fawogae-buffed",  type = "unlock-recipe"},
                {old = "fawogae-plantation-mk01", new = "fawogae-plantation-mk01-with-pressure-pump", type = "recipe-replacement"},
                {old = "fawogae-plantation-mk02", new = "fawogae-plantation-mk02-with-pressure-pump", type = "recipe-replacement"},
                {old = "fawogae-plantation-mk03", new = "fawogae-plantation-mk03-with-pressure-pump", type = "recipe-replacement"},
                {old = "fawogae-plantation-mk04", new = "fawogae-plantation-mk04-with-pressure-pump", type = "recipe-replacement"},
            }
        }
    },
    module_category = "fawogae"
}
