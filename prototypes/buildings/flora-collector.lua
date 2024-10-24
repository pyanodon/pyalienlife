RECIPE {
    type = "recipe",
    name = "flora-collector-mk01",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {type = "item", name = "electric-mining-drill", amount = 2},
        {type = "item", name = "soil-extractor-mk01",   amount = 1},
        {type = "item", name = "electronic-circuit",    amount = 5},
        {type = "item", name = "iron-gear-wheel",       amount = 10},
        {type = "item", name = "iron-plate",            amount = 20},
        {type = "item", name = "steam-engine",          amount = 1},
    },
    results = {
        {type = "item", name = "flora-collector-mk01", amount = 1}
    }
}

RECIPE {
    type = "recipe",
    name = "flora-collector-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "flora-collector-mk01",  amount = 1},
        {type = "item", name = "glass",            amount = 30},
        {type = "item", name = "nexelit-plate",    amount = 15},
        {type = "item", name = "duralumin",        amount = 10},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "engine-unit",      amount = 1},
        {type = "item", name = "latex",            amount = 10},
        {type = "item", name = "neuroprocessor",   amount = 5},
    },
    results = {
        {type = "item", name = "flora-collector-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 50}

RECIPE {
    type = "recipe",
    name = "flora-collector-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "flora-collector-mk02",  amount = 1},
        {type = "item", name = "ticocr-alloy",          amount = 20},
        {type = "item", name = "low-density-structure", amount = 20},
        {type = "item", name = "stainless-steel",       amount = 30},
        {type = "item", name = "processing-unit",       amount = 30},
        {type = "item", name = "electric-engine-unit",  amount = 15},
        {type = "item", name = "super-alloy",           amount = 30},
    },
    results = {
        {type = "item", name = "flora-collector-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

RECIPE {
    type = "recipe",
    name = "flora-collector-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "flora-collector-mk03", amount = 1},
        {type = "item", name = "science-coating",      amount = 20},
        {type = "item", name = "divertor",             amount = 5},
        {type = "item", name = "control-unit",         amount = 5},
        {type = "item", name = "metallic-glass",       amount = 10},
        {type = "item", name = "boron-carbide",        amount = 30},
    },
    results = {
        {type = "item", name = "flora-collector-mk04", amount = 1}
    }
}:add_unlock("biotech-machines-mk04")

for i = 1, 4 do
    local name = "flora-collector-mk0" .. i
    local icon = "__pyalienlifegraphics3__/graphics/icons/" .. name .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-buildings-mk0" .. i,
        order = "x",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "mining-drill",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "flora-collector",
        max_health = 200 * i,
        resource_categories = {"ore-bioreserve"},
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        module_slots = i,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        mining_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = i * 3
            },
        },
        energy_usage = (100 * (2 ^ (i - 1))) .. "kW",
        mining_power = 1,
        shuffle_resources_to_mine = false,
        resource_drain_rate_percent = 200 * (2 ^ -i),
        resource_searching_radius = 4.49 + ((i - 1) * 3),
        vector_to_place_result = {0, -3.85},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 4,
            height = 4
        },
        collision_mask = {layers = {item = true, object = true, water_tile = true}},
        circuit_wire_connection_points = circuit_connector_definitions["flora-collector-mkxx"].points,
        circuit_connector_sprites = circuit_connector_definitions["flora-collector-mkxx"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f1.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(-96, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f2.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(-64, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f3.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(-32, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f4.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(0, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f5.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(32, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f6.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(64, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f7.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(96, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f8.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        shift = util.by_pixel(128, 0)
                    },
                    --MASKS
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f1-mask.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        tint = py.tints[i],
                        shift = util.by_pixel(-96, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f2-mask.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        tint = py.tints[i],
                        shift = util.by_pixel(-64, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f3-mask.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        tint = py.tints[i],
                        shift = util.by_pixel(-32, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f4-mask.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        tint = py.tints[i],
                        shift = util.by_pixel(0, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f5-mask.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        tint = py.tints[i],
                        shift = util.by_pixel(32, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f6-mask.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        tint = py.tints[i],
                        shift = util.by_pixel(64, 0)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f7-mask.png",
                        width = 32,
                        height = 288,
                        line_length = 64,
                        frame_count = 255,
                        animation_speed = 0.2,
                        tint = py.tints[i],
                        shift = util.by_pixel(96, 0)
                    },
                }
            },
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/flora-collector.ogg", volume = 0.9},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/flora-collector.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
        next_upgrade = (i ~= 4) and ("flora-collector-mk0" .. (i + 1)) or nil
    }
end
