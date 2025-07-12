---@diagnostic disable: missing-parameter
local util = require "util"
local sounds = require "__base__.prototypes.entity.sounds"

RECIPE {
    type = "recipe",
    name = "nukavan",
    energy_required = 50,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "alien-sample01",                                                 amount = 5},
        {type = "item",  name = "bio-sample",                                                     amount = 20},
        {type = "item",  name = "auog",                                                           amount = 1},
        {type = "item",  name = "moss-gen",                                                       amount = 15},
        {type = "item",  name = "earth-bear-sample",                                              amount = 1},
        {type = "fluid", name = "water-saline",                                                   amount = 100},
        {type = "item",  name = mods.pyalternativeenergy and "atomic-bomb" or "explosive-rocket", amount = 1}
    },
    results = {{type = "item", name = "nukavan", amount = 1}}
}:add_unlock("domestication-mk04")

ITEM {
    type = "item-with-tags",
    name = "nukavan",
    can_open_gates = true,
    additional_pastable_entities = {"nukavan", "nukavan-turd"},
    icon = "__pyalienlifegraphics2__/graphics/icons/nuka-van.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "a",
    place_result = "nukavan",
    stack_size = 1,
    flags = {"not-stackable"}
}

---@as data.UnitPrototype
local unit = {
    type = "unit",
    name = "nukavan",
    can_open_gates = true,
    additional_pastable_entities = {"nukavan", "nukavan-turd"},
    icon = "__pyalienlifegraphics2__/graphics/icons/nuka-van.png",
    icon_size = 64,
    alert_icon_scale = 1,
    ai_settings = {do_separation = false},
    flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air", "building-direction-8-way"},
    minable = {mining_time = 0.1, result = "nukavan"},
    max_health = 6125,
    map_color = {1, 1, 1},
    radar_range = 1,
    order = "b-b-a",
    subgroup = "enemies",
    collision_mask = {layers = {caravan_collision_mask = true}, not_colliding_with_itself = true},
    resistances = {
        {
            type = "fire",
            decrease = 0,
            percent = 100
        },
        {
            type = "physical",
            decrease = 0,
            percent = 100
        },
        {
            type = "impact",
            decrease = 0,
            percent = 100
        },
        {
            type = "explosion",
            decrease = 0,
            percent = 100
        },
        {
            type = "acid",
            decrease = 0,
            percent = 100
        }
    },
    healing_per_tick = 0.01,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_priority = 51,
    selection_box = {{-1, -1.5}, {1, 1.5}},
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
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-01.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-02.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-03.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-04.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-05.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-06.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-07.png"
                    },
                    slice = 8,
                    lines_per_file = 8,
                    line_length = 8,
                    width = 256,
                    height = 256,
                    frame_count = 26,
                    direction_count = 16,
                    shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
                    --scale = scale,
                },
                {
                    filenames = {
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-01.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-02.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-03.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-04.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-05.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-06.png",
                        "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-07.png"
                    },
                    slice = 8,
                    lines_per_file = 8,
                    line_length = 8,
                    width = 256,
                    height = 256,
                    frame_count = 26,
                    shift = util.mul_shift(util.by_pixel(16, 32)),
                    direction_count = 16,
                    --scale = scale,
                    draw_as_shadow = true
                }
            }
        }
    },
    vision_distance = 50,
    movement_speed = 0.10,
    distance_per_frame = 0.15,
    absorptions_to_join_attack = {pollution = 4},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    --corpse = 'arthurian-corpse',
    --dying_sound =  make_biter_dying_sounds(0.4),
    --working_sound =  make_biter_calls(0.3),
    --run_animation = biterrunanimation(small_biter_scale, small_biter_tint1, small_biter_tint2),
    has_belt_immunity = true,
    affected_by_tiles = true,
    run_animation = {
        layers = {
            {
                filenames = {
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-01.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-02.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-03.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-04.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-05.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-06.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/caravan-walk-07.png"
                },
                slice = 8,
                lines_per_file = 8,
                line_length = 8,
                width = 256,
                height = 256,
                frame_count = 26,
                direction_count = 16,
                shift = util.mul_shift(util.by_pixel(-0, -0)),
            },
            {
                filenames = {
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-01.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-02.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-03.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-04.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-05.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-06.png",
                    "__pyalienlifegraphics2__/graphics/entity/nukavan/sh-caravan-walk-07.png"
                },
                slice = 8,
                lines_per_file = 8,
                line_length = 8,
                width = 256,
                height = 256,
                frame_count = 26,
                shift = util.mul_shift(util.by_pixel(16, 32)),
                direction_count = 16,
                --scale = scale,
                draw_as_shadow = true
            }
        }
    }
}

data:extend {unit}
