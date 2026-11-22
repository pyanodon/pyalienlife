local item_icon = "__pyalienlifegraphics3__/graphics/icons/work-o-dile.png"
local time_taken_for_workodile_to_mine = 8

RECIPE {
    type = "recipe",
    name = "work-o-dile",
    energy_required = 240,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "mega-drill-head",      amount = 1},
        {type = "item",  name = "earth-lizard-sample",  amount = 1},
        {type = "item",  name = "alien-sample-03",      amount = 5},
        {type = "fluid", name = "artificial-blood",     amount = 100},
        {type = "fluid", name = "fetal-serum",          amount = 50},
        {type = "fluid", name = "psc",                  amount = 100},
        {type = "item",  name = "electric-engine-unit", amount = 4},
        {type = "item",  name = "bio-sample",           amount = 20},
        {type = "item",  name = "cdna",                 amount = 5},
        {type = "item",  name = "anabolic-rna",         amount = 1},
    },
    results = {{type = "item", name = "work-o-dile", amount = 1}}
}:add_unlock {"nexelit-mk03"}

ITEM {
    type = "module",
    name = "work-o-dile",
    icon = item_icon,
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "xxxx",
    stack_size = 10,
    flags = {},
    localised_name = {"entity-name.work-o-dile"},
    localised_description = {"entity-description.work-o-dile"},
    effect = {pollution = 1, speed = 1},
    category = "digosaurus",
    tier = 3,
}

local running_animation = {
    layers = {
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w1-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w2-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w3-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w4-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w5-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w6-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w7-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/w8-min.png"
            },
            slice = 6,
            lines_per_file = 5,
            line_length = 6,
            width = 320,
            height = 288,
            frame_count = 30,
            direction_count = 8,
            shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws1-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws2-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws3-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws4-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws5-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws6-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws7-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ws8-min.png"
            },
            slice = 6,
            lines_per_file = 5,
            line_length = 6,
            width = 320,
            height = 288,
            frame_count = 30,
            direction_count = 8,
            draw_as_shadow = true,
            shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa1-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa2-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa3-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa4-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa5-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa6-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa7-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/wa8-min.png"
            },
            slice = 6,
            lines_per_file = 5,
            line_length = 6,
            width = 320,
            height = 288,
            frame_count = 30,
            direction_count = 8,
            shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
        },
    }
}

local mining_animation = {
    layers = {
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d1-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d2-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d3-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d4-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d5-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d6-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d7-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/d8-min.png"
            },
            slice = 7,
            lines_per_file = 7,
            line_length = 7,
            width = 320,
            height = 288,
            frame_count = 49,
            direction_count = 8,
            animation_speed = 1 / 2,
            shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds1-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds2-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds3-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds4-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds5-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds6-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds7-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/ds8-min.png"
            },
            slice = 7,
            lines_per_file = 7,
            line_length = 7,
            width = 320,
            height = 288,
            frame_count = 49,
            direction_count = 8,
            animation_speed = 1 / 2,
            draw_as_shadow = true,
            shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao1-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao2-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao3-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao4-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao5-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao6-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao7-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/dao8-min.png"
            },
            slice = 7,
            lines_per_file = 7,
            line_length = 7,
            width = 320,
            height = 288,
            frame_count = 49,
            direction_count = 8,
            animation_speed = 1 / 2,
            shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db1-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db2-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db3-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db4-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db5-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db6-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db7-min.png",
                "__pyalienlifegraphics3__/graphics/entity/work-o-dile/db8-min.png"
            },
            slice = 7,
            lines_per_file = 7,
            line_length = 7,
            width = 320,
            height = 288,
            frame_count = 49,
            direction_count = 8,
            animation_speed = 1 / 2,
            draw_as_glow = true,
            shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
        },
    }
}

ENTITY {
    type = "unit",
    name = "work-o-dile",
    icon = item_icon,
    icon_size = 64,
    ai_settings = {do_separation = false},
    flags = {"placeable-neutral", "placeable-player", "player-creation", "placeable-off-grid", "breaths-air", "not-repairable", "not-on-map", "not-flammable", "not-in-kill-statistics"},
    max_health = 900,
    subgroup = "creatures",
    healing_per_tick = 0.01,
    collision_box = {{0, 0}, {0, 0}},
    collision_mask = {layers = {}},
    attack_parameters = {
        type = "projectile",
        range = 1,
        cooldown = 49 * 2,
        ammo_category = "melee",
        ammo_type = _G.make_unit_melee_ammo_type(1),
        animation = mining_animation
    },
    --selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    vision_distance = 30,
    movement_speed = 0.070,
    distance_per_frame = 0.16,
    absorptions_to_join_attack = {pollution = 4},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    dying_explosion = "blood-explosion-small",
    has_belt_immunity = true,
    affected_by_tiles = true,
    run_animation = running_animation
}

local sound =
{
    type = "play-sound",
    sound =
    {
        aggregation =
        {
            max_count = 1,
            remove = true,
            count_already_playing = true
        },
        filename = "__pyalienlifegraphics3__/sounds/work-o-dile.ogg",
        volume = 0.65,
        audible_distance_modifier = 0.22
    }
}

ENTITY {
    type = "simple-entity",
    name = "work-o-dile-mineable-proxy",
    localised_name = "",
    localised_description = "",
    icon = item_icon,
    icon_size = 64,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selectable_in_game = false,
    remove_decoratives = "false",
    collision_mask = {layers = {}},
    hidden = true,
    flags = {"not-in-kill-statistics", "placeable-neutral", "not-selectable-in-game", "not-rotatable", "not-flammable", "placeable-off-grid", "hide-alt-info"},
    max_health = time_taken_for_workodile_to_mine,
    picture = {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1
    },
    attack_reaction = {{
        range = 150,
        action = {
            action_delivery = {
                source_effects = {sound},
                type = "instant"
            },
            type = "direct"
        }
    }}
}
