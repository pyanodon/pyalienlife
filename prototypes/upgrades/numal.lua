if data and not yafc_turd_integration then
    data:extend {{
        type = "recipe",
        name = "aeroorgan-ink",
        enabled = false,
        category = "jig",
        energy_required = 50,
        ingredients = {
            {"aeroorgan",    1},
            {type = "fluid", name = "sb-low-conc", amount = 20},
        },
        results = {
            {type = "fluid", name = "numal-ink",     amount = 12},
            {type = "fluid", name = "sb-final-conc", amount = 1},
            {type = "item",  name = "mukmoux-fat",   amount = 2}
        },
        main_product = "sb-final-conc"
    }}

    local aeroorgan = RECIPE("aeroorgan"):copy()
    aeroorgan.name = "aeroorgan-buffed"
    aeroorgan:multiply_result_amount("aeroorgan", 3)
    data:extend {aeroorgan}

    for i, recipe in pairs {
        RECIPE("numal-raising-1"):copy(),
        RECIPE("numal-raising-2"):copy(),
        RECIPE("numal-raising-3"):copy(),
        RECIPE("numal-raising-4"):copy(),
        RECIPE("numal-raising-5"):copy(),
        RECIPE("numal-raising-6"):copy(),
    } do
        recipe.name = recipe.name .. "-deuterium"
        recipe:add_ingredient {name = "deuterium", amount = i * 2, type = "fluid"}
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("numal"):copy(),
        RECIPE("numal-mk02"):copy(),
        RECIPE("numal-mk03"):copy(),
        RECIPE("numal-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-neutron"
        recipe:add_ingredient {name = "neutron", amount = 500 * i, type = "fluid"}
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("numal-egg-1"):copy(),
        RECIPE("numal-egg-2"):copy(),
        RECIPE("numal-egg-3"):copy(),
        RECIPE("numal-egg-4"):copy(),
        RECIPE("numal-egg-5"):copy(),
        RECIPE("numal-egg-6"):copy(),
    } do
        recipe.name = recipe.name .. "-neutron"
        for _, result in pairs(recipe.results) do
            if result.name == "numal-egg" then
                local amount = result.amount
                result.amount = nil
                result.amount_min = math.ceil(amount / 2)
                result.amount_max = math.ceil(amount * 2)
            end
        end
        data:extend {recipe}
    end

    local recipe = RECIPE("ex-gut-num"):copy()
    recipe.name = "ex-gut-num-neodymium"
    recipe.localised_name = {"recipe-name.ex-gut-num"}
    recipe:add_ingredient {"neodymium-nitrate", 4}
    recipe:multiply_result_amount("numal-ink", 2)
    data:extend {recipe}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "numal-reef-mk01",
        "numal-reef-mk02",
        "numal-reef-mk03",
        "numal-reef-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "numal-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-numal.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"numal-mk03"},
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
            name = "d2o",
            icon = "__pyalienlifegraphics3__/graphics/technology/d2o.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "aeroorgan-ink", type = "unlock-recipe"},
                {old = "aeroorgan",        new = "aeroorgan-buffed",          type = "recipe-replacement"},
                {old = "numal-raising-1",  new = "numal-raising-1-deuterium", type = "recipe-replacement"},
                {old = "numal-raising-2",  new = "numal-raising-2-deuterium", type = "recipe-replacement"},
                {old = "numal-raising-3",  new = "numal-raising-3-deuterium", type = "recipe-replacement"},
                {old = "numal-raising-4",  new = "numal-raising-4-deuterium", type = "recipe-replacement"},
                {old = "numal-raising-5",  new = "numal-raising-5-deuterium", type = "recipe-replacement"},
                {old = "numal-raising-6",  new = "numal-raising-6-deuterium", type = "recipe-replacement"},
            },
        },
        {
            name = "nc",
            icon = "__pyalienlifegraphics3__/graphics/technology/nc.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "numal",       new = "numal-neutron",       type = "recipe-replacement"},
                {old = "numal-mk02",  new = "numal-mk02-neutron",  type = "recipe-replacement"},
                {old = "numal-mk03",  new = "numal-mk03-neutron",  type = "recipe-replacement"},
                {old = "numal-mk04",  new = "numal-mk04-neutron",  type = "recipe-replacement"},
                {old = "numal-egg-1", new = "numal-egg-1-neutron", type = "recipe-replacement"},
                {old = "numal-egg-2", new = "numal-egg-2-neutron", type = "recipe-replacement"},
                {old = "numal-egg-3", new = "numal-egg-3-neutron", type = "recipe-replacement"},
                {old = "numal-egg-4", new = "numal-egg-4-neutron", type = "recipe-replacement"},
                {old = "numal-egg-5", new = "numal-egg-5-neutron", type = "recipe-replacement"},
                {old = "numal-egg-6", new = "numal-egg-6-neutron", type = "recipe-replacement"},
            }
        },
        {
            name = "neutron-bombardment",
            icon = "__pyalienlifegraphics3__/graphics/technology/neutron-bombardment.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "ex-gut-num", new = "ex-gut-num-neodymium", type = "recipe-replacement"},
            }
        }
    },
    module_category = "numal"
}
