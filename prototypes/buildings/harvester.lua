RECIPE {
    type = 'recipe',
    name = 'harvester',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = 'botanical-nursery-mk02', amount = 2},
        {type = "item", name = 'soil-extractor-mk02', amount = 1},
        {type = "item", name = 'advanced-circuit', amount = 20},
        {type = "item", name = 'iron-gear-wheel', amount = 100},
        {type = "item", name = 'plastic-bar', amount = 80},
        --{type = "item", name = "control-unit", amount = 5},
    },
    results = {
        {type = "item", name = 'harvester', amount = 1}
    }
}:add_unlock('mega-farm')

ITEM {
    type = 'item',
    name = 'harvester',
    icon = '__pyalienlifegraphics__/graphics/icons/harvester.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-buildings-others',
    order = 'z',
    place_result = 'harvester',
    stack_size = 10
}

ENTITY {
    type = 'mining-drill',
    name = 'harvester',
    icon = '__pyalienlifegraphics__/graphics/icons/harvester.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'harvester'},
    fast_replaceable_group = 'harvester',
    max_health = 700,
    resource_categories = {'ralesia-flowers', 'rennea-flowers', 'tuuphra-tuber', 'grod-flower', 'yotoi-tree', 'yotoi-tree-fruit', 'kicalk-tree', 'arum'},
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {'consumption', 'speed'},
    mining_speed = 2,
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
        emissions_per_minute = 0.06,
    },
    energy_usage = '600kW',
    mining_power = 2,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -3.75},
    radius_visualisation_picture = {
        filename = '__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png',
        width = 4,
        height = 4
    },
    circuit_wire_connection_points = circuit_connector_definitions['harvester'].points,
    circuit_connector_sprites = circuit_connector_definitions['harvester'].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
                filename = '__pyalienlifegraphics2__/graphics/entity/mega-farm/harvester/left.png',
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.3,
                shift = {-1.5, -0.5}
            },
            {
                filename = '__pyalienlifegraphics2__/graphics/entity/mega-farm/harvester/right.png',
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.3,
                shift = {2.5, -0.5}
            }
        }
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyalienlifegraphics__/sounds/harvester.ogg', volume = 0.9},
        idle_sound = {filename = '__pyalienlifegraphics__/sounds/harvester.ogg', volume = 0.3},
        apparent_volume = 2.5
    }
}
