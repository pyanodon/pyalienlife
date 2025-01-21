RECIPE {
    type = "recipe",
    name = "sap-extractor-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick",        amount = 30},
        {type = "item", name = "soil",               amount = 100},
        {type = "item", name = "pipe",               amount = 15},
        {type = "item", name = "inserter",           amount = 2},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "steam-engine",       amount = 1},
        {type = "item", name = "iron-plate",         amount = 30},
    },
    results = {
        {type = "item", name = "sap-extractor-mk01", amount = 1}
    }
}:add_unlock("sap-mk01")

RECIPE {
    type = "recipe",
    name = "sap-extractor-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "sap-extractor-mk01", amount = 1},
        {type = "item", name = "treated-wood",       amount = 100},
        {type = "item", name = "engine-unit",        amount = 2},
        {type = "item", name = "duralumin",          amount = 12},
        {type = "item", name = "fast-inserter",      amount = 2},
        {type = "item", name = "advanced-circuit",   amount = 15},
        {type = "item", name = "steel-plate",        amount = 40},
    },
    results = {
        {type = "item", name = "sap-extractor-mk02", amount = 1}
    }
}:add_unlock("botany-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 15}

RECIPE {
    type = "recipe",
    name = "sap-extractor-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "sap-extractor-mk02",   amount = 1},
        {type = "item", name = "nexelit-plate",        amount = 100},
        {type = "item", name = "molybdenum-plate",     amount = 20},
        {type = "item", name = "stainless-steel",      amount = 50},
        {type = "item", name = "electric-engine-unit", amount = 3},
        {type = "item", name = "processing-unit",      amount = 30},
        {type = "item", name = "nichrome",             amount = 40},
    },
    results = {
        {type = "item", name = "sap-extractor-mk03", amount = 1}
    }
}:add_unlock("botany-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

RECIPE {
    type = "recipe",
    name = "sap-extractor-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "sap-extractor-mk03", amount = 1},
        {type = "item", name = "super-steel",        amount = 100},
        {type = "item", name = "divertor",           amount = 5},
        {type = "item", name = "science-coating",    amount = 20},
        {type = "item", name = "control-unit",       amount = 30},
        {type = "item", name = "nenbit-matrix",      amount = 40},
    },
    results = {
        {type = "item", name = "sap-extractor-mk04", amount = 1}
    }
}:add_unlock("botany-mk04")

local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

for i = 1, 4 do
    local name = "sap-extractor-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons//sap-extractor-mk0" .. i .. ".png"
    local icon_size = 64
    local MODULE_SLOTS = 2 * i

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-farm-buildings-mk0" .. i,
        order = "e",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "sap-extractor",
        max_health = 150 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = MODULE_SLOTS,
        allowed_effects = {"consumption", "speed", "pollution", "productivity"},
        crafting_categories = {"sap-extractor"},
        crafting_speed = (i == 1) and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "sap-extractor-mk01"),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = -15 * i
            },
        },
        energy_usage = (150 * i) .. "kW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/i.png",
                        width = 160,
                        height = 178,
                        line_length = 10,
                        frame_count = 100,
                        animation_speed = 0.3,
                        shift = util.by_pixel(0, -10)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/i-mask.png",
                        width = 160,
                        height = 178,
                        line_length = 10,
                        frame_count = 100,
                        animation_speed = 0.3,
                        shift = util.by_pixel(0, -10),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/shadow.png",
                        width = 160,
                        height = 160,
                        line_length = 10,
                        frame_count = 100,
                        animation_speed = 0.3,
                        shift = util.by_pixel(5, -5),
                        draw_as_shadow = true,
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -2.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/sap-extractor.ogg", volume = 0.6},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/sap-extractor.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
        vector_to_place_result = {0, 2.51},
    }

    -- https://github.com/pyanodon/pycoalprocessing/commit/cf03a35fa5dec4c74a464d847b4e266394317726
    if not mods["pystellarexpedition"] then
        local legacy = table.deepcopy(data.raw["assembling-machine"][name])
        legacy.vector_to_place_result = nil
        legacy.name = name .. "-legacy"
        legacy.hidden = true
        legacy.localised_name = {"", {"entity-name." .. name}, " (Legacy)"}
        data:extend {legacy}
    end
end
