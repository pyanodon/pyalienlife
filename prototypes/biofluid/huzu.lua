local sounds = require("__base__/prototypes/entity/sounds")

RECIPE {
    type = 'recipe',
    name = 'huzu',
    energy_required = 10,
    category = 'crafting',
    enabled = true,
    ingredients = {
        {'iron-plate', 1},
    },
    results = {
        {'huzu', 1}
    }
}:add_unlock{'biofluid-mk02'}

ITEM {
    type = 'item',
    name = 'huzu',
    icon = '__pyalienlifegraphics2__/graphics/icons/huzu.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'y',
    place_result = 'huzu',
    stack_size = 50
}

ENTITY {
    type = 'logistic-robot',
    name = 'huzu',
    icon = '__pyalienlifegraphics2__/graphics/icons/huzu.png',
    icon_size = 64,
    flags = {'placeable-player', 'player-creation', 'placeable-off-grid', 'not-on-map'},
    minable = {mining_time = 0.1, result = 'huzu'},
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
    name = 'huzu-animation',
    type = 'animation',
    layers = {
        {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/carry-sh.png',
            priority = 'high',
            line_length = 25,
            width = 80,
            height = 80,
            frame_count = 30,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            hr_version = {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/hr-carry-sh.png',
                priority = 'high',
                line_length = 25,
                width = 160,
                height = 160,
                frame_count = 30,
                shift = util.by_pixel(33.5, 18.75),
                draw_as_shadow = true,
                direction_count = 16,
                scale = 0.5
            }
        },
        {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/carry.png',
            priority = 'high',
            line_length = 25,
            width = 80,
            height = 80,
            frame_count = 30,
            shift = util.by_pixel(0, -5),
            direction_count = 16,
            hr_version = {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/hr-carry.png',
                priority = 'high',
                line_length = 25,
                width = 160,
                height = 160,
                frame_count = 30,
                shift = util.by_pixel(0, -5),
                direction_count = 16,
                scale = 0.5
            }
        }
    }
}}