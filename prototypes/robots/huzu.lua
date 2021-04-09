local sounds = require("__base__/prototypes/entity/sounds")

local cargo_bot =
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
}
cargo_bot:add_unlock({'domestication'})

ITEM {
    type = 'item',
    name = 'huzu',
    icon = '__pyalienlifegraphics2__/graphics/icons/huzu.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-special-creatures',
    order = 'x',
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
    speed = 0.13,
    transfer_distance = 0.5,
    max_energy = '1.5MJ',
    energy_per_tick = '0.04kJ',
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = '3kJ',
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle = {
        filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/idle.png',
        priority = 'high',
        line_length = 25,
        width = 80,
        height = 80,
        frame_count = 30,
        shift = util.by_pixel(0, -5),
        direction_count = 16,
        --y = 42,
        hr_version = {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/hr-idle.png',
            priority = 'high',
            line_length = 25,
            width = 160,
            height = 160,
            frame_count = 30,
            shift = util.by_pixel(0, -5),
            direction_count = 16,
            --y = 84,
            scale = 0.5
        }
    },
    idle_with_cargo = {
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
    },
    in_motion = {
        filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/idle.png',
        priority = 'high',
        line_length = 25,
        width = 80,
        height = 80,
        frame_count = 30,
        shift = util.by_pixel(0, -5),
        direction_count = 16,
        hr_version = {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/hr-idle.png',
            priority = 'high',
            line_length = 25,
            width = 160,
            height = 160,
            frame_count = 30,
            shift = util.by_pixel(0, -5),
            direction_count = 16,
            scale = 0.5
        }
    },
    in_motion_with_cargo = {
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
    },
    shadow_idle = {
        filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/idle-sh.png',
        priority = 'high',
        line_length = 25,
        width = 80,
        height = 80,
        frame_count = 30,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/hr-idle-sh.png',
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
    shadow_idle_with_cargo = {
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
    shadow_in_motion = {
        filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/idle-sh.png',
        priority = 'high',
        line_length = 25,
        width = 80,
        height = 80,
        frame_count = 30,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyalienlifegraphics2__/graphics/entity/bots/huzu/hr-idle-sh.png',
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
    shadow_in_motion_with_cargo = {
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
    working_sound = sounds.flying_robot(0.5),
    cargo_centered = {0.0, 0.2}
}
