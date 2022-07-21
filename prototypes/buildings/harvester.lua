RECIPE {
    type = "recipe",
    name = "harvester",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"botanical-nursery-mk03", 2},
        {"soil-extractormk03", 1},
        {"processing-unit", 20},
        {"iron-gear-wheel", 100},
        {"plastic-bar", 80},
        {"control-unit", 5},
    },
    results = {
        {"harvester", 1}
    }
}:add_unlock("mega-farm")

ITEM {
    type = "item",
    name = "harvester",
    icon = "__pyalienlifegraphics__/graphics/icons/harvester.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farms",
    order = "z",
    place_result = "harvester",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "harvester",
    icon = "__pyalienlifegraphics__/graphics/icons/harvester.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "harvester"},
    fast_replaceable_group = "harvester",
    max_health = 700,
    resource_categories = {"ralesia-flowers","rennea-flowers","tuuphra-tuber","grod-flower","yotoi-tree","yotoi-tree-fruit","kicalk-tree","arum"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
	--[[
    input_fluid_box = {
        production_type = "input-output",
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            {position = {-5, 0}},
            {position = {5, 0}},
            {position = {0, 5}}
        }
    },
	]]--
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed"},
    mining_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "600kW",
    mining_power = 2,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -3.75},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 4,
        height = 4
    },
    animations = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/harvester/left.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.3,
                shift = {-1.5, -0.5}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/harvester/right.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.3,
                shift = {2.5, -0.5}
            }
        }
    },
	--[[
    input_fluid_patch_sprites = {
        north = {
            priority = "extra-high",
            filename = "__pycoalprocessinggraphics__/graphics/entity/borax-mine/N.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0.0)
        },
        east = {
            priority = "extra-high",
            filename = "__pycoalprocessinggraphics__/graphics/entity/borax-mine/E.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0)
        },
        south = {
            priority = "extra-high",
            filename = "__pycoalprocessinggraphics__/graphics/entity/borax-mine/S.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0)
        },
        west = {
            priority = "extra-high",
            filename = "__pycoalprocessinggraphics__/graphics/entity/borax-mine/W.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0)
        }
    },
	]]--
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/harvester.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/harvester.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
