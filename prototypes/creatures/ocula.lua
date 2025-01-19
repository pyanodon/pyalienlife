local util = require "util"

RECIPE {
    type = "recipe",
    name = "ocula",
    energy_required = 90,
    category = "creature-chamber",
    enabled = false,
    ingredients =
    {
        {type = "item",  name = "alien-sample-02",      amount = 10},
        {type = "item",  name = "cdna",                 amount = 30},
        {type = "item",  name = "lens",                 amount = 2},
        {type = "item",  name = "bio-sample",           amount = 100},
        {type = "item",  name = "earth-generic-sample", amount = 10},
        {type = "fluid", name = "fetal-serum",          amount = 100},
        {type = "fluid", name = "artificial-blood",     amount = 200},
    },
    result = "ocula"
}:add_unlock("domestication-mk02")

ITEM {
    type = "item",
    name = "ocula",
    icon = "__pyalienlifegraphics__/graphics/icons/ocula.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "x",
    stack_size = 1,
    flags = {"not-stackable"},
    place_result = "ocula"
}

data:extend
{
    {
        ai_settings = {do_separation = false},
        type = "unit",
        name = "ocula",
        icon = "__pyalienlifegraphics__/graphics/icons/ocula.png",
        icon_size = 64,
        flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air", "building-direction-8-way", "not-on-map"},
        minable = {mining_time = 0.2, result = "ocula"},
        max_health = 250,
        order = "b-b-a",
        radar_range = 1,
        subgroup = "enemies",
        resistances = {},
        healing_per_tick = 0.01,
        collision_box = {{0, 0}, {0, 0}},
        collision_mask = {layers = {}},
        selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
        attack_parameters =
        {
            type = "projectile",
            range = 0,
            cooldown = 0,
            ammo_category = "melee",
            ammo_type = _G.make_unit_melee_ammo_type(0),
            --sound = make_biter_roars(0.4),
            animation =
            {
                layers =
                {
                    {
                        filenames =
                        {
                            "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-01.png",
                            "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-02.png",
                            "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-03.png",
                        },
                        slice = 12,
                        lines_per_file = 12,
                        line_length = 12,
                        width = 160,
                        height = 160,
                        frame_count = 20,
                        direction_count = 16,
                        animation_speed = 0.3,
                        --shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
                        --scale = scale,
                    },
                    {
                        filenames =
                        {
                            "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-sh-01.png",
                            "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-sh-02.png",
                            "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-sh-03.png",
                        },
                        slice = 12,
                        lines_per_file = 12,
                        line_length = 12,
                        width = 160,
                        height = 160,
                        frame_count = 20,
                        shift = util.mul_shift(util.by_pixel(0, 48)),
                        direction_count = 16,
                        animation_speed = 0.3,
                        --scale = scale,
                        draw_as_shadow = true,
                    }
                }
            },
        },
        vision_distance = 0,
        movement_speed = 0.28,
        distance_per_frame = 0.13,
        absorptions_to_join_attack = {pollution = 4},
        distraction_cooldown = 300,
        min_pursue_time = 10 * 60,
        max_pursue_distance = 50,
        dying_explosion = "blood-explosion-small",

        run_animation =
        {
            layers =
            {
                {
                    filenames =
                    {
                        "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-01.png",
                        "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-02.png",
                        "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-03.png",
                    },
                    slice = 12,
                    lines_per_file = 12,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    frame_count = 20,
                    direction_count = 16,
                    animation_speed = 0.3,
                    --shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
                    --scale = scale,
                },
                {
                    filenames =
                    {
                        "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-sh-01.png",
                        "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-sh-02.png",
                        "__pyalienlifegraphics2__/graphics/entity/ocula/ocula-sh-03.png",
                    },
                    slice = 12,
                    lines_per_file = 12,
                    line_length = 12,
                    width = 160,
                    height = 160,
                    frame_count = 20,
                    shift = util.mul_shift(util.by_pixel(0, 48)),
                    direction_count = 16,
                    animation_speed = 0.3,
                    --scale = scale,
                    draw_as_shadow = true,
                }
            }
        },
        render_layer = "air-object",
        working_sound =
        {
            aggregation =
            {
                max_count = 2,
                remove = true
            },
            filename = "__pyalienlifegraphics3__/sounds/ocula-walk.ogg",
            volume = 0.65
        }
    }
}

local beam = table.deepcopy(data.raw.beam["laser-beam"])
beam.working_sound = nil
beam.damage_interval = 10000
beam.name = "ocula-beam"
beam.action = {
    type = "direct",
    action_delivery = {
        type = "instant",
        target_effects = {{
            type = "damage",
            damage = {amount = 0, type = "impact"}
        }}
    }
}
data:extend {beam}

data:extend {
    {
        type = "virtual-signal",
        icon = "__pyalienlifegraphics2__/graphics/icons/ocula-map-tag.png",
        name = "ocula-map-tag",
        subgroup = "py-alienlife-special-creatures",
        icon_size = 64,
        localised_name = {"virtual-signal-name.ocula-map-tag"}
    }
}
