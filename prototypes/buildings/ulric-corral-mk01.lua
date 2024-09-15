local MODULE_SLOTS = 8
local FULL_CRAFTING_SPEED = 2 -- crafting speed when full of mk01 modules

RECIPE {
    type = 'recipe',
    name = 'ulric-corral-mk01',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = 'steel-plate', amount = 20},
        {type = "item", name = 'titanium-plate', amount = 20},
        {type = "item", name = 'iron-gear-wheel', amount = 20},
        {type = "item", name = 'iron-plate', amount = 10},
        {type = "item", name = 'electronic-circuit', amount = 10}
    },
    results = {
        {type = "item", name = 'ulric-corral-mk01', amount = 1}
    }
}

ITEM {
    type = 'item',
    name = 'ulric-corral-mk01',
    icon = '__pyalienlifegraphics__/graphics/icons/ulric-corral-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-farm-buildings-mk01',
    order = 'd',
    place_result = 'ulric-corral-mk01',
    stack_size = 10
}

ENTITY {
    type = 'assembling-machine',
    name = 'ulric-corral-mk01',
    icon = '__pyalienlifegraphics__/graphics/icons/ulric-corral-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'ulric-corral-mk01'},
    fast_replaceable_group = 'ulric-corral',
    max_health = 100,
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    module_specification = {
        module_slots = MODULE_SLOTS,
    },
    match_animation_speed_to_activity = false,
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {'ulric'},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
        emissions_per_minute = 2,
    },
    energy_usage = '400kW',
    animation = {
        layers = {
            {
                filename = '__pyalienlifegraphics2__/graphics/entity/ulric-corral/off.png',
                width = 383,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(0, -32),
            },
            {
                filename = '__pyalienlifegraphics2__/graphics/entity/ulric-corral/off-mask.png',
                width = 383,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(0, -32),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(114, -37),
            west_position = util.by_pixel(114, -37),
            south_position = util.by_pixel(114, -37),
            east_position = util.by_pixel(114, -37),
            animation = {
                filename = '__pyalienlifegraphics2__/graphics/entity/ulric-corral/alpha.png',
                frame_count = 100,
                line_length = 10,
                width = 128,
                height = 128,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(-128, 136),
            west_position = util.by_pixel(-128, 136),
            south_position = util.by_pixel(-128, 136),
            east_position = util.by_pixel(-128, 136),
            animation = {
                filename = '__pyalienlifegraphics2__/graphics/entity/ulric-corral/leftdown.png',
                frame_count = 100,
                line_length = 10,
                width = 96,
                height = 96,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(-82, -9),
            west_position = util.by_pixel(-82, -9),
            south_position = util.by_pixel(-82, -9),
            east_position = util.by_pixel(-82, -9),
            animation = {
                filename = '__pyalienlifegraphics2__/graphics/entity/ulric-corral/left.png',
                frame_count = 100,
                line_length = 10,
                width = 96,
                height = 96,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(5, -11),
            west_position = util.by_pixel(5, -11),
            south_position = util.by_pixel(5, -11),
            east_position = util.by_pixel(5, -11),
            animation = {
                filename = '__pyalienlifegraphics2__/graphics/entity/ulric-corral/mid.png',
                frame_count = 100,
                line_length = 20,
                width = 64,
                height = 96,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(63, 112),
            west_position = util.by_pixel(63, 112),
            south_position = util.by_pixel(63, 112),
            east_position = util.by_pixel(63, 112),
            animation = {
                filename = '__pyalienlifegraphics2__/graphics/entity/ulric-corral/mom.png',
                frame_count = 100,
                line_length = 10,
                width = 96,
                height = 128,
                animation_speed = 0.3
            }
        },
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pycoalprocessinggraphics__/sounds/ulric-corral.ogg', volume = 0.55},
        idle_sound = {filename = '__pycoalprocessinggraphics__/sounds/ulric-corral.ogg', volume = 0.3},
        apparent_volume = 0.45
    }
}
