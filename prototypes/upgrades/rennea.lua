if data and not yafc_turd_integration then
    data:extend {
        {
            type = "item",
            name = "deadhead",
            stack_size = 50,
            subgroup = "py-alienlife-rennea",
            icon = "__pyalienlifegraphics__/graphics/icons/deadhead.png",
            icon_size = 64,
        },
        {
            type = "recipe",
            name = "deadhead-recycle",
            ingredients = {
                {type = "item",  name = "deadhead", amount = 8},
                {type = "fluid", name = "water",    amount = 100},
                {type = "item",  name = "coarse",   amount = 2}
            },
            results = {{type = "item", name = "native-flora", amount = 55}},
            enabled = false,
            category = "rennea",
            energy_required = 15
        }
    }

    for amount, recipe in pairs {
        [15] = RECIPE("rennea-1"):copy(),
        [34] = RECIPE("rennea-2"):copy(),
        [66] = RECIPE("rennea-3"):copy(),
        [108] = RECIPE("rennea-4"):copy(),
    } do
        recipe.name = recipe.name .. "-deadhead"
        recipe:add_result {type = "item", name = "deadhead", amount = amount}
        recipe.main_product = "deadhead"
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("rennea-1"):copy(),
        RECIPE("rennea-2"):copy(),
        RECIPE("rennea-3"):copy(),
        RECIPE("rennea-4"):copy(),
    } do
        recipe.name = recipe.name .. "-hydrophile"
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        recipe:multiply_ingredient_amount("water", 200)
        recipe:add_result_amount("rennea", 1)
        recipe:remove_ingredient("coarse")
        recipe:remove_ingredient("soil")
        data:extend {recipe}
    end

    local anti_aphid = RECIPE("rennea-seeds"):copy()
    anti_aphid:add_ingredient {name = "bee-venom", amount = 1.5, type = "fluid"}
    anti_aphid:multiply_result_amount("rennea-seeds", 3)
    anti_aphid.energy_required = 3
    anti_aphid.name = "rennea-seeds-venom"
    data:extend {anti_aphid}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "rennea-plantation-mk01",
        "rennea-plantation-mk02",
        "rennea-plantation-mk03",
        "rennea-plantation-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "rennea-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-rennea.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"solar-power-mk01"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "deadheading",
            icon = "__pyalienlifegraphics3__/graphics/technology/deadheading.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "deadhead-recycle", type = "unlock-recipe"},
                {old = "rennea-1",            new = "rennea-1-deadhead", type = "recipe-replacement"},
                {old = "rennea-2",            new = "rennea-2-deadhead", type = "recipe-replacement"},
                {old = "rennea-3",            new = "rennea-3-deadhead", type = "recipe-replacement"},
                {old = "rennea-4",            new = "rennea-4-deadhead", type = "recipe-replacement"},
            },
        },
        {
            name = "alltime",
            icon = "__pyalienlifegraphics3__/graphics/technology/alltime.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 0.5, type = "module-effects"},
                {old = "rennea-1",  new = "rennea-1-hydrophile", type = "recipe-replacement"},
                {old = "rennea-2",  new = "rennea-2-hydrophile", type = "recipe-replacement"},
                {old = "rennea-3",  new = "rennea-3-hydrophile", type = "recipe-replacement"},
                {old = "rennea-4",  new = "rennea-4-hydrophile", type = "recipe-replacement"},
            }
        },
        {
            name = "aphid-cleaning",
            icon = "__pyalienlifegraphics3__/graphics/technology/aphid-cleaning.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "rennea-seeds", new = "rennea-seeds-venom", type = "recipe-replacement"}
            }
        }
    },
    module_category = "rennea"
}
