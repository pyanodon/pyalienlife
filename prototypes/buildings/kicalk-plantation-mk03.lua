local pipe = {
    south = {
        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/bottom.png",
        priority = "extra-high",
        width = 229,
        height = 235,
    }
}

RECIPE {
    type = "recipe",
    name = "kicalk-plantation-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "kicalk-plantation-mk02", amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 10},
        {type = "item", name = "processing-unit", amount = 40},
        {type = "item", name = "neuromorphic-chip", amount = 30},
        {type = "item", name = "nichrome", amount = 35},
    },
    results = {
        {type = "item", name = "kicalk-plantation-mk03", amount = 1}
    }
}:add_unlock('botany-mk03')

ITEM {
    type = "item",
    name = "kicalk-plantation-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-plantation-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "e",
    place_result = "kicalk-plantation-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "kicalk-plantation-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-plantation-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "kicalk-plantation-mk03"},
    fast_replaceable_group = "kicalk-plantation",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_slots = 75,
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"kicalk"},
    crafting_speed = 0.08,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "1500kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/left.png",
    				priority = "extra-high",
                    width = 128,
                    height = 448,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-144, -5),
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/mid.png",
    				priority = "extra-high",
                    width = 128,
                    height = 448,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-16, -5),
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/mid-mask.png",
    				priority = "extra-high",
                    width = 128,
                    height = 448,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-16, -5),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/right.png",
    				priority = "extra-high",
                    width = 128,
                    height = 448,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(112, -5),
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/right-mask.png",
    				priority = "extra-high",
                    width = 128,
                    height = 448,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(112, -5),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/far-right.png",
    				priority = "extra-high",
                    width = 32,
                    height = 448,
                    repeat_count = 50,
                    frame_count = 1,
                    line_length = 1,
                    animation_speed = 0.4,
                    shift = util.by_pixel(192, -5),
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/glow.png",
    				priority = "extra-high",
                    width = 416,
                    height = 448,
                    repeat_count = 50,
                    frame_count = 1,
                    line_length = 1,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, -5),
                    --draw_as_glow = true,
                    draw_as_light = true,
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/glow.png",
    				priority = "extra-high",
                    width = 416,
                    height = 448,
                    repeat_count = 50,
                    frame_count = 1,
                    line_length = 1,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, -5),
                    draw_as_glow = true,
                    --draw_as_light = true,
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/sh.png",
    				priority = "extra-high",
                    width = 512,
                    height = 480,
                    repeat_count = 50,
                    frame_count = 1,
                    line_length = 1,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 11),
                    draw_as_shadow = true,
                }
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 6.2}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -6.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, false, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-6.2, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, false, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {6.2, 0.0}, direction = defines.direction.east}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
-- Swap to niobium pipes
for _, fluid_box in pairs(data.raw["assembling-machine"]["kicalk-plantation-mk03"].fluid_boxes) do
    -- Yeah let's just throw a boolean value in the list of fluid boxes - someone at Wube, probably
    if type(fluid_box) == "boolean" then
        break
     end
     if fluid_box.pipe_covers.south.layers then
         fluid_box.pipe_covers.south.layers[1].filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-cover-south.png"
         fluid_box.pipe_covers.south.layers[1].hr_version.filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-south.png"
         fluid_box.pipe_covers.south.layers[2].filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-cover-south-shadow.png"
         fluid_box.pipe_covers.south.layers[2].hr_version.filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-south-shadow.png"
     end
     -- Move cover up to compensate
     fluid_box.pipe_picture.south.scale = 0.5
     fluid_box.pipe_picture.south.shift = {0,-2.33}
end