local is_pyse = (data and mods["pystellarexpedition"]) or (script and script.active_mods["pystellarexpedition"])

local cags_effects
if is_pyse then
    cags_effects = {
        {recipe = "hydrangeaceae",                     type = "unlock-recipe"},
        {recipe = "cags",                              type = "unlock-recipe"},
        {recipe = "arqad-hive-mk01-with-cags",         type = "unlock-recipe"},
        {recipe = "arqad-hive-mk02-with-cags",         type = "unlock-recipe"},
        {recipe = "arqad-hive-mk03-with-cags",         type = "unlock-recipe"},
        {recipe = "arqad-hive-mk04-with-cags",         type = "unlock-recipe"},
        {recipe = "arqad-hive-mk01-with-cags-recycle", type = "unlock-recipe"},
        {recipe = "arqad-hive-mk02-with-cags-recycle", type = "unlock-recipe"},
        {recipe = "arqad-hive-mk03-with-cags-recycle", type = "unlock-recipe"},
        {recipe = "arqad-hive-mk04-with-cags-recycle", type = "unlock-recipe"},
    }
else
    cags_effects = {
        {productivity = 0.05,     type = "module-effects"},
        {recipe = "cags",         type = "unlock-recipe"},
        {old = "arqad-hive-mk01", new = "arqad-hive-mk01-with-cags", type = "recipe-replacement"},
        {old = "arqad-hive-mk02", new = "arqad-hive-mk02-with-cags", type = "recipe-replacement"},
        {old = "arqad-hive-mk03", new = "arqad-hive-mk03-with-cags", type = "recipe-replacement"},
        {old = "arqad-hive-mk04", new = "arqad-hive-mk04-with-cags", type = "recipe-replacement"},
    }
end

if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("arqad-egg-1"):copy(),
        RECIPE("arqad-egg-2"):copy(),
        RECIPE("arqad-egg-3"):copy(),
        RECIPE("arqad-egg-4"):copy(),
        RECIPE("arqad-egg-5"):copy(),
    } do
        recipe.name = recipe.name .. "-cold"
        recipe:add_ingredient {type = "fluid", name = "purest-nitrogen-gas", amount = 100}
        for _, result in pairs(recipe.results) do
            if result.name == "arqad-queen" then
                result.probability = 0.995
                break
            end
        end
        data:extend {recipe}
    end

    for recipe, result_name in pairs {
        [RECIPE("wax"):copy()] = "wax",
        [RECIPE("wax-to-lube"):copy()] = "lubricant",
        [RECIPE("honey-comb"):copy()] = "arqad-honey",
    } do
        recipe.name = recipe.name .. "-buffed"
        recipe:multiply_result_amount(result_name, 3)
        data:extend {recipe}
    end

    data:extend {
        {
            type = "item",
            name = "cags",
            icon = "__pyalienlifegraphics3__/graphics/icons/cags.png",
            icon_size = 64,
            stack_size = 50,
            subgroup = "py-alienlife-arqad"
        },
        {
            type = "recipe",
            name = "cags",
            results = {{type = "item", name = "cags", amount = 1}},
            ingredients = {
                {type = "item",  name = "steel-plate",   amount = 10},
                {type = "item",  name = "niobium-plate", amount = 10},
                {type = "item",  name = "cellulose",     amount = 10},
                {type = "item",  name = "latex",         amount = 10},
                {type = "item",  name = "plastic-bar",   amount = 10},
                {type = "item",  name = "melamine",      amount = 10},
                {type = "item",  name = "glass",         amount = 10},
                {type = "item",  name = "silver-plate",  amount = 10},
                {type = "fluid", name = "creamy-latex",  amount = 10},
            },
            category = "crafting-with-fluid",
            energy_required = 10,
            enabled = false
        }
    }

    if is_pyse then
        for i = 1, 4 do
            data:extend {{
                type = "recipe",
                name = "arqad-hive-mk0" .. i .. "-with-cags",
                energy_required = 0.5,
                category = "crafting",
                ingredients = {
                    {name = "cags",                amount = 10 * i, type = "item"},
                    {name = "arqad-hive-mk0" .. i, amount = 1,      type = "item"},
                    {name = "hydrangeaceae",       amount = 1,      type = "item"}
                },
                results = {{type = "item", name = "arqad-hive-mk0" .. i .. "-with-cags", amount = 1}},
                enabled = false
            }}
            data:extend {{
                type = "recipe",
                name = "arqad-hive-mk0" .. i .. "-with-cags-recycle",
                energy_required = 0.5,
                category = "crafting",
                ingredients = {
                    {type = "item", name = "arqad-hive-mk0" .. i .. "-with-cags", amount = 1}
                },
                results = {
                    {name = "cags",                amount = 10 * i, type = "item"},
                    {name = "arqad-hive-mk0" .. i, amount = 1,      type = "item"},
                    {name = "hydrangeaceae",       amount = 1,      type = "item"}
                },
                main_product = "hydrangeaceae",
                enabled = false
            }}
        end
    else
        for i, machine_recipe in pairs {
            RECIPE("arqad-hive-mk01"):copy(),
            RECIPE("arqad-hive-mk02"):copy(),
            RECIPE("arqad-hive-mk03"):copy(),
            RECIPE("arqad-hive-mk04"):copy(),
        } do
            machine_recipe.name = machine_recipe.name .. "-with-cags"
            machine_recipe:add_ingredient {name = "cags", amount = 10 * i, type = "item"}
            data:extend {machine_recipe}
        end
    end

    local ez_queen = RECIPE("arqad"):copy()
    ez_queen.name = "ez-queen"
    ez_queen:remove_result("arqad")
    ez_queen:add_result {type = "item", name = "arqad-queen", amount = 1}
    ez_queen.energy_required = ez_queen.energy_required * 2
    ez_queen.main_product = "arqad-queen"
    data:extend {ez_queen}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "arqad-hive-mk01",
        "arqad-hive-mk02",
        "arqad-hive-mk03",
        "arqad-hive-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "arqad-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-arqad.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"arqad", "nitrogen-mk01"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "air-conditioner",
            icon = "__pyalienlifegraphics3__/graphics/technology/air-con.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "arqad-egg-1", new = "arqad-egg-1-cold",   type = "recipe-replacement"},
                {old = "arqad-egg-2", new = "arqad-egg-2-cold",   type = "recipe-replacement"},
                {old = "arqad-egg-3", new = "arqad-egg-3-cold",   type = "recipe-replacement"},
                {old = "arqad-egg-4", new = "arqad-egg-4-cold",   type = "recipe-replacement"},
                {old = "arqad-egg-5", new = "arqad-egg-5-cold",   type = "recipe-replacement"},
                {old = "wax",         new = "wax-buffed",         type = "recipe-replacement"},
                {old = "wax-to-lube", new = "wax-to-lube-buffed", type = "recipe-replacement"},
                {old = "honey-comb",  new = "honey-comb-buffed",  type = "recipe-replacement"},
            },
        },
        {
            name = "cags",
            icon = "__pyalienlifegraphics3__/graphics/technology/cags.png",
            icon_size = 128,
            order = "c-a",
            effects = cags_effects
        },
        {
            name = "drone",
            icon = "__pyalienlifegraphics3__/graphics/technology/drone.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "ez-queen", type = "unlock-recipe"}
            }
        }
    },
    module_category = "arqad"
}
