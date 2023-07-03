local sounds = require("__base__/prototypes/entity/sounds")

RECIPE {
    type = 'recipe',
    name = 'chorkok',
    energy_required = 10,
    category = 'crafting',
    enabled = true,
    ingredients = {
        {'iron-plate', 1},
    },
    results = {
        {'chorkok', 1}
    }
}:add_unlock{'biofluid-mk03'}

ITEM {
    type = 'item',
    name = 'chorkok',
    icon = '__pyalienlifegraphics2__/graphics/icons/chorkok.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'z',
    place_result = 'chorkok',
    stack_size = 50
}

ENTITY {
    type = 'logistic-robot',
    name = 'chorkok',
    icon = '__pyalienlifegraphics2__/graphics/icons/chorkok.png',
    icon_size = 64,
    flags = {'placeable-player', 'player-creation', 'placeable-off-grid', 'not-on-map'},
    minable = {mining_time = 0.1, result = 'chorkok'},
    resistances = {{type = 'fire', percent = 85}},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 3,
    speed = 0.04,
    transfer_distance = 0.5,
    max_energy = '1J',
    energy_per_tick = '0J',
    speed_multiplier_when_out_of_energy = 1,
    energy_per_move = '0J',
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(0.5),
    cargo_centered = {0.0, 0.2}
}

data:extend{{
    name = 'chorkok-animation',
    type = 'animation',
    layers = {
        {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/chorkok/sh.png',
            priority = 'high',
            line_length = 25,
            width = 64,
            height = 64,
            frame_count = 25,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            hr_version = {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/chorkok/hr-sh.png',
                priority = 'high',
                line_length = 25,
                width = 128,
                height = 128,
                frame_count = 25,
                shift = util.by_pixel(33.5, 18.75),
                draw_as_shadow = true,
                direction_count = 16,
                scale = 1
            }
        },
        {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/chorkok/carry.png',
            priority = 'high',
            line_length = 25,
            width = 64,
            height = 64,
            frame_count = 25,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            hr_version = {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/chorkok/hr-carry.png',
                priority = 'high',
                line_length = 25,
                width = 128,
                height = 128,
                frame_count = 25,
                shift = util.by_pixel(0, 0),
                direction_count = 16,
                scale = 1
            }
        }
    }
}}