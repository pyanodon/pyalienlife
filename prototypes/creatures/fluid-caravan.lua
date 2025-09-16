local util = require "util"

RECIPE {
    type = "recipe",
    name = "fluidavan",
    energy_required = 50,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "cocoon",               amount = 10},
        {type = "item",  name = "bio-sample",           amount = 10},
        {type = "item",  name = "moss-gen",             amount = 15},
        {type = "item",  name = "earth-generic-sample", amount = 1},
        {type = "fluid", name = "water-saline",         amount = 100},
        {type = "item",  name = "py-tank-27500",         amount = 1},
        {type = "item",  name = "pump",                 amount = 2}
    },
    results = {{type = "item", name = "fluidavan", amount = 1}}
}:add_unlock("zoology")

ITEM {
    type = "item-with-tags",
    name = "fluidavan",
    icon = "__pyalienlifegraphics2__/graphics/icons/fluid-caravan.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "a",
    place_result = "fluidavan",
    stack_size = 1,
    flags = {"not-stackable"}
}

data:extend {{
    type = "unit",
    ai_settings = {do_separation = false},
    additional_pastable_entities = {"fluidavan", "fluidavan-turd", "flyavan", "flyavan-turd", "caravan", "caravan-turd"},
    name = "fluidavan",
    can_open_gates = true,
    map_color = {1, 1, 1},
    radar_range = 1,
    icon = "__pyalienlifegraphics2__/graphics/icons/fluid-caravan.png",
    icon_size = 64,
    alert_icon_scale = 1,
    flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air", "building-direction-8-way"},
    minable = {mining_time = 0.5, result = "fluidavan"},
    max_health = 3125,
    order = "b-b-a",
    collision_mask = {layers = {caravan_collision_mask = true}, not_colliding_with_itself = true},
    subgroup = "enemies",
    healing_per_tick = 0.03,
    collision_box = {{-0.45, -0.45}, {0.45, 0.45}},
    selection_priority = 51,
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    attack_parameters = {
        type = "projectile",
        range = 0,
        cooldown = 0,
        ammo_category = "melee",
        ammo_type = _G.make_unit_melee_ammo_type(0),
        --sound = make_biter_roars(0.4),
        animation = {
            layers = {
                {
                    filenames = {
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08.png"
                    },
                    slice = 8,
                    lines_per_file = 8,
                    line_length = 8,
                    width = 256,
                    height = 224,
                    frame_count = 30,
                    direction_count = 16,
                    shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
                    flags = {"no-scale"},
                },
                {
                    filenames = {
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01-mask.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02-mask.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03-mask.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04-mask.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05-mask.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06-mask.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07-mask.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08-mask.png"
                    },
                    slice = 8,
                    tint = {r = 0.1, g = 0.1, b = 1.0, a = 1.0},
                    lines_per_file = 8,
                    line_length = 8,
                    width = 256,
                    height = 224,
                    frame_count = 30,
                    direction_count = 16,
                    shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
                    flags = {"no-scale"},
                },
                {
                    filenames = {
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-01.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-02.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-03.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-04.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-05.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-06.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-07.png",
                        "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-08.png"
                    },
                    slice = 8,
                    lines_per_file = 8,
                    line_length = 8,
                    width = 256,
                    height = 224,
                    frame_count = 30,
                    shift = util.mul_shift(util.by_pixel(0, 48)),
                    direction_count = 16,
                    --scale = scale,
                    draw_as_shadow = true,
                    flags = {"no-scale"},
                }
            }
        }
    },
    vision_distance = 30,
    movement_speed = 0.1 * 1.4,
    distance_per_frame = 0.13,
    absorptions_to_join_attack = {pollution = 4},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    dying_explosion = "blood-explosion-small",
    has_belt_immunity = true,
    affected_by_tiles = true,
    run_animation = {
        layers = {
            {
                filenames = {
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08.png"
                },
                slice = 8,
                lines_per_file = 8,
                line_length = 8,
                width = 256,
                height = 224,
                frame_count = 30,
                direction_count = 16,
                shift = util.mul_shift(util.by_pixel(-0, -0)),
                flags = {"no-scale"},
            },
            {
                filenames = {
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01-mask.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02-mask.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03-mask.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04-mask.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05-mask.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06-mask.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07-mask.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08-mask.png"
                },
                slice = 8,
                tint = {r = 0.1, g = 0.1, b = 1.0, a = 1.0},
                lines_per_file = 8,
                line_length = 8,
                width = 256,
                height = 224,
                frame_count = 30,
                direction_count = 16,
                shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
                flags = {"no-scale"},
            },
            {
                filenames = {
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-01.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-02.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-03.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-04.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-05.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-06.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-07.png",
                    "__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-08.png"
                },
                slice = 8,
                lines_per_file = 8,
                line_length = 8,
                width = 256,
                height = 224,
                frame_count = 30,
                shift = util.mul_shift(util.by_pixel(-0, 48)),
                direction_count = 16,
                draw_as_shadow = true,
                flags = {"no-scale"},
            }
        }
    }
}}
