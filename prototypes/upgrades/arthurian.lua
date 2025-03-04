if data and not yafc_turd_integration then
    data:extend {
        {
            type = "item",
            name = "abacus",
            icon = "__pyalienlifegraphics__/graphics/icons/abacus.png",
            icon_size = 64,
            flags = {},
            subgroup = "py-alienlife-arthurian",
            stack_size = 50
        },
        {
            type = "recipe",
            name = "abacus",
            category = "crafting",
            enabled = false,
            energy_required = 6,
            ingredients = {
                {type = "item", name = "iron-stick",  amount = 2},
                {type = "item", name = "plastic-bar", amount = 2},
                {type = "item", name = "wood",        amount = 1},
            },
            results = {
                {type = "item", name = "abacus", amount = 2},
            },
        }
    }

    py.allow_productivity {"abacus"}

    for i, recipe in pairs {
        RECIPE("arthurian-maturing-1"):copy(),
        RECIPE("arthurian-maturing-2"):copy(),
        RECIPE("arthurian-maturing-3"):copy(),
        RECIPE("arthurian-maturing-4"):copy(),
    } do
        recipe.name = recipe.name .. "-abacus"
        recipe:add_ingredient {name = "abacus", amount = i, type = "item"}
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("arthurian-egg-1"):copy(),
        RECIPE("arthurian-egg-2"):copy(),
        RECIPE("arthurian-egg-3"):copy(),
        RECIPE("arthurian-egg-4"):copy(),
    } do
        recipe.name = recipe.name .. "-hot-stones"
        recipe:add_ingredient {name = "hot-stone-brick", amount = 2, type = "item"}
        recipe:add_result {name = "warmer-stone-brick", amount = 2, type = "item"}
        recipe:add_result_amount("arthurian-egg", i)
        local _, barrels = recipe:remove_result("barrel")
        recipe:add_result {"hot-air-barrel", barrels}
        recipe.energy_required = recipe.energy_required / 2
        recipe.main_product = "warmer-stone-brick"
        recipe:remove_ingredient("bedding")
        data:extend {recipe}
    end

    data:extend {{
        type = "recipe",
        name = "arthurian-cannibalism",
        enabled = false,
        energy_required = 70,
        ingredients = {
            {name = "arthurian-pup", amount = 4, type = "item"},
            {name = "arthurian",     amount = 1, type = "item", ignored_by_stats = 1},
            {name = "water-barrel",  amount = 6, type = "item"},
            {name = "bedding",       amount = 2, type = "item"},
        },
        results = {
            {name = "arthurian",    amount = 4, type = "item", ignored_by_stats = 1, ignored_by_productivity = 1},
            {name = "agar",         amount = 5, type = "item"},
            {name = "blood-barrel", amount = 3, type = "item"},
            {name = "barrel",       amount = 3, type = "item"},
        },
        category = "arthurian",
        main_product = "agar"
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "arthurian-pen-mk01",
        "arthurian-pen-mk02",
        "arthurian-pen-mk03",
        "arthurian-pen-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "arthurian-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-arthurian.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"arthurian-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"military-science-pack",   1},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       1},
                {"production-science-pack", 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "abacus",
            icon = "__pyalienlifegraphics3__/graphics/technology/abacus.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {productivity = 0.25,          type = "module-effects"},
                {recipe = "abacus",            type = "unlock-recipe"},
                {old = "arthurian-maturing-1", new = "arthurian-maturing-1-abacus", type = "recipe-replacement"},
                {old = "arthurian-maturing-2", new = "arthurian-maturing-2-abacus", type = "recipe-replacement"},
                {old = "arthurian-maturing-3", new = "arthurian-maturing-3-abacus", type = "recipe-replacement"},
                {old = "arthurian-maturing-4", new = "arthurian-maturing-4-abacus", type = "recipe-replacement"},
            },
        },
        {
            name = "heated-stone",
            icon = "__pyalienlifegraphics3__/graphics/technology/heated-stone.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "arthurian-egg-1", new = "arthurian-egg-1-hot-stones", type = "recipe-replacement"},
                {old = "arthurian-egg-2", new = "arthurian-egg-2-hot-stones", type = "recipe-replacement"},
                {old = "arthurian-egg-3", new = "arthurian-egg-3-hot-stones", type = "recipe-replacement"},
                {old = "arthurian-egg-4", new = "arthurian-egg-4-hot-stones", type = "recipe-replacement"},
            }
        },
        {
            name = "cannibalism",
            icon = "__pyalienlifegraphics3__/graphics/technology/cannibalism.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "arthurian-cannibalism", type = "unlock-recipe"}
            }
        }
    },
    module_category = "arthurian"
}
