local function new_fluid_boxes()
    return {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -5.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, 5.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {5.0, -1.0}, direction = defines.direction.east}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-5.0, 1.0}, direction = defines.direction.west}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-5.0, -1.0}, direction = defines.direction.west}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {5.0, 1.0}, direction = defines.direction.east}},
            secondary_draw_orders = {north = -1}
        },
    }
end

local function add_new_fish_farm(i)
    local name = "fish-farm-mk0" .. i
    local entity = table.deepcopy(data.raw["assembling-machine"][name])
    entity.name = "turd-" .. name
    entity.localised_name = {"entity-name." .. name}
    entity.placeable_by = {item = name, count = 1}
    entity.localised_description = entity.localised_description or {"entity-description." .. name}
    entity.subgroup = data.raw.item[name].subgroup
    entity.order = data.raw.item[name].order
    if i ~= 4 then entity.next_upgrade = "turd-fish-farm-mk0" .. (i + 1) end
    entity.allowed_module_categories = {"fish"}
    entity.energy_usage = (i * 5) .. "MW",
        table.insert(entity.flags, "not-in-made-in")
    entity.fluid_boxes = new_fluid_boxes()
    data:extend {entity}
end

if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("breed-fish-1"):copy(),
        RECIPE("breed-fish-2"):copy(),
        RECIPE("breed-fish-3"):copy(),
        RECIPE("breed-fish-4"):copy(),
    } do
        recipe.name = recipe.name .. "-agressive-selection"
        recipe:add_result_amount("fish", -i)
        recipe:add_result {"fish-food-01", i}
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        data:extend {recipe}
    end

    local ingredients = table.deepcopy(data.raw.recipe["fish-hydrolysate"].ingredients)
    ingredients[#ingredients + 1] = {type = "item", name = "cooling-tower-mk01", amount = 1}
    data:extend {{
        type = "recipe",
        category = data.raw.recipe["fish-hydrolysate"].category,
        energy_required = data.raw.recipe["fish-hydrolysate"].energy_required * 2,
        results = {
            {type = "item",  name = "cooling-tower-mk01", amount = 1,  probability = 0.999},
            {type = "fluid", name = "fish-hydrolysate",   amount = 300}
        },
        ingredients = ingredients,
        main_product = "fish-hydrolysate",
        enabled = false,
        name = "fish-hydrolysate-cooling"
    }}

    RECIPE {
        type = "recipe",
        name = "cyanic-acid-from-fish-hydrolysate",
        category = "reformer",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "fish-hydrolysate", amount = 100},
            {type = "fluid", name = "ammonia",          amount = 100},
            {type = "fluid", name = "water-saline",     amount = 15},
        },
        results = {
            {type = "fluid", name = "cyanic-acid", amount = 100},
            {type = "fluid", name = "waste-water", amount = 100},
        },
        main_product = "cyanic-acid",
        subgroup = "py-alienlife-fluids",
        order = "a",
        allow_productivity = true,
    }

    for i, recipe in pairs {
        RECIPE("breed-fish-egg-1"):copy(),
        RECIPE("breed-fish-egg-2"):copy(),
        RECIPE("breed-fish-egg-3"):copy(),
        RECIPE("breed-fish-egg-4"):copy(),
    } do
        recipe.name = recipe.name .. "-doused"
        recipe:multiply_result_amount("fish-egg", 0.8)
        for _, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "water-saline" then
                ingredient.name = "pressured-water"
                break
            end
        end
        for _, result in pairs(recipe.results) do
            if result.name == "waste-water" then
                result.fluidbox_index = 1
                break
            end
        end

        local path_three_dousing_byproducts = {
            {type = "fluid", name = "fish-oil",         amount = 10 + i * 5, fluidbox_index = 2},
            {type = "fluid", name = "fish-hydrolysate", amount = 5 + i * 5,  fluidbox_index = 3},
            {type = "item",  name = "fishmeal",         amount = 5},
            {type = "fluid", name = "fish-emulsion",    amount = 0 + i * 5,  fluidbox_index = 4},
        }

        for j = 1, i do
            recipe:add_result(path_three_dousing_byproducts[j])
        end
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)
        data:extend {recipe}
    end

    for i = 1, 4 do
        add_new_fish_farm(i)
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "fish-farm-mk01",
        "fish-farm-mk02",
        "fish-farm-mk03",
        "fish-farm-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "fish-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-fish.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"fish-mk01", "cooling-tower-1"},
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
            name = "a-select",
            icon = "__pyalienlifegraphics3__/graphics/technology/a-select.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "breed-fish-1", new = "breed-fish-1-agressive-selection", type = "recipe-replacement"},
                {old = "breed-fish-2", new = "breed-fish-2-agressive-selection", type = "recipe-replacement"},
                {old = "breed-fish-3", new = "breed-fish-3-agressive-selection", type = "recipe-replacement"},
                {old = "breed-fish-4", new = "breed-fish-4-agressive-selection", type = "recipe-replacement"},
            },
        },
        {
            name = "temp-control",
            icon = "__pyalienlifegraphics3__/graphics/technology/temp-control.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "recipe-replacement", old = "fish-hydrolysate",                    new = "fish-hydrolysate-cooling"},
                {type = "unlock-recipe",      recipe = "cyanic-acid-from-fish-hydrolysate"},
            }
        },
        {
            name = "dosing-pump",
            icon = "__pyalienlifegraphics3__/graphics/technology/dosing-pump.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "machine-replacement", old = "fish-farm-mk01",          new = "turd-fish-farm-mk01"},
                {type = "machine-replacement", old = "fish-farm-mk02",          new = "turd-fish-farm-mk02"},
                {type = "machine-replacement", old = "fish-farm-mk03",          new = "turd-fish-farm-mk03"},
                {type = "machine-replacement", old = "fish-farm-mk04",          new = "turd-fish-farm-mk04"},
                {old = "breed-fish-egg-1",     new = "breed-fish-egg-1-doused", type = "recipe-replacement"},
                {old = "breed-fish-egg-2",     new = "breed-fish-egg-2-doused", type = "recipe-replacement"},
                {old = "breed-fish-egg-3",     new = "breed-fish-egg-3-doused", type = "recipe-replacement"},
                {old = "breed-fish-egg-4",     new = "breed-fish-egg-4-doused", type = "recipe-replacement"},
            }
        }
    },
    module_category = "fish"
}
