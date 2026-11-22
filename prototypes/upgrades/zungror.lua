if data and not yafc_turd_integration then
    local zungror = RECIPE("zungror"):copy()
    zungror.name = "zungror-with-yaedols-codex"
    zungror:add_ingredient {name = "yaedols-codex", amount = 6, type = "item"}
    data:extend {zungror}

    for i, recipe in pairs {
        RECIPE("zungror-cocoon-1"):copy(),
        RECIPE("zungror-cocoon-2"):copy(),
        RECIPE("zungror-cocoon-3"):copy(),
    } do
        recipe.name = recipe.name .. "-rich-clay"
        recipe:add_ingredient {name = "rich-clay", amount = 2, type = "item"}
        recipe:multiply_result_amount("zungror-cocoon", 2)
        data:extend {recipe}
    end

    local duplicated_spinner = RECIPE("vsk"):copy()
    duplicated_spinner.name = "vsk-duplicated"
    duplicated_spinner.energy_required = duplicated_spinner.energy_required * 5
    duplicated_spinner:multiply_result_amount("vsk", 5)
    data:extend {duplicated_spinner}

    local buffed_fiber = RECIPE("pre-fiber-1"):copy()
    buffed_fiber.name = "pre-fiber-1-buffed"
    buffed_fiber:multiply_ingredient_amount("zungror-cocoon", 0.5)
    buffed_fiber:multiply_result_amount("pre-fiber-1", 10)
    data:extend {buffed_fiber}

    for isotope, recipe in pairs {
        [{type = "item", name = "pu-239", amount = 2}] = RECIPE("zungror-raising-1"):copy(),
        [{type = "item", name = "pu-240", amount = 2}] = RECIPE("zungror-raising-2"):copy(),
        [{type = "item", name = "pu-238", amount = 2}] = RECIPE("zungror-raising-3"):copy(),
    } do
        recipe.name = recipe.name .. "-with-funny-rock"
        recipe:add_ingredient(isotope)
        recipe:remove_ingredient("meat")
        recipe:remove_ingredient("bedding")
        recipe:remove_ingredient("caged-mukmoux")
        recipe:remove_ingredient("arqad-honey-barrel")
        recipe:remove_result("empty-barrel")
        recipe:add_result_amount("cage", -1)
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "zungror-lair-mk01",
        "zungror-lair-mk02",
        "zungror-lair-mk03",
        "zungror-lair-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "zungror-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-zungror.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"zungror-mk03"},
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
                {"production-science-pack", 1},
                {"py-science-pack-4",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "geooxidation",
            icon = "__pyalienlifegraphics3__/graphics/technology/geooxidation.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {productivity = 1,         speed = 0.5,                        type = "module-effects"},
                {old = "zungror",          new = "zungror-with-yaedols-codex", type = "recipe-replacement"},
                {old = "zungror-cocoon-1", new = "zungror-cocoon-1-rich-clay", type = "recipe-replacement"},
                {old = "zungror-cocoon-2", new = "zungror-cocoon-2-rich-clay", type = "recipe-replacement"},
                {old = "zungror-cocoon-3", new = "zungror-cocoon-3-rich-clay", type = "recipe-replacement"},
            },
        },
        {
            name = "genooscillation",
            icon = "__pyalienlifegraphics3__/graphics/technology/genooscillation.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {consumption = 5, speed = 5,              type = "module-effects"},
                {old = "vsk",     new = "vsk-duplicated", type = "recipe-replacement"},
            }
        },
        {
            name = "oviduct-bombardment",
            icon = "__pyalienlifegraphics3__/graphics/technology/oviduct-bombardment.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "pre-fiber-1",       new = "pre-fiber-1-buffed",                type = "recipe-replacement"},
                {old = "zungror-raising-1", new = "zungror-raising-1-with-funny-rock", type = "recipe-replacement"},
                {old = "zungror-raising-2", new = "zungror-raising-2-with-funny-rock", type = "recipe-replacement"},
                {old = "zungror-raising-3", new = "zungror-raising-3-with-funny-rock", type = "recipe-replacement"},
            }
        }
    },
    module_category = "zungror"
}
