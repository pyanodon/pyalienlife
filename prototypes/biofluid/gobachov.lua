local sounds = require("__base__/prototypes/entity/sounds")

RECIPE {
    type = 'recipe',
    name = 'gobachov',
    energy_required = 10,
    category = 'crafting',
    enabled = true,
    ingredients = {
        {'iron-plate', 1},
    },
    results = {
        {'gobachov', 1}
    }
}:add_unlock{'biofluid-mk01'}

ITEM {
    type = 'item',
    name = 'gobachov',
    icon = '__pyalienlifegraphics2__/graphics/icons/gobachov.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'x',
    place_result = 'gobachov',
    stack_size = 50
}

ENTITY {
    type = 'logistic-robot',
    name = 'gobachov',
    icon = '__pyalienlifegraphics2__/graphics/icons/gobachov.png',
    icon_size = 64,
    flags = {'placeable-player', 'player-creation', 'placeable-off-grid', 'not-on-map'},
    minable = {mining_time = 0.1, result = 'gobachov'},
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
    name = 'gobachov-animation',
    type = 'animation',
    layers = {
        {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/gobachov/sh.png',
            priority = 'high',
            line_length = 25,
            width = 64,
            height = 64,
            frame_count = 25,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            hr_version = {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/gobachov/hr-sh.png',
                priority = 'high',
                line_length = 25,
                width = 128,
                height = 128,
                frame_count = 25,
                shift = util.by_pixel(33.5, 18.75),
                draw_as_shadow = true,
                direction_count = 16,
                scale = 0.5
            }
        },
        {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/gobachov/carry.png',
            priority = 'high',
            line_length = 25,
            width = 64,
            height = 64,
            frame_count = 25,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            hr_version = {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/gobachov/hr-carry.png',
                priority = 'high',
                line_length = 25,
                width = 128,
                height = 128,
                frame_count = 25,
                shift = util.by_pixel(0, 0),
                direction_count = 16,
                scale = 0.5
            }
        }
    }
}}