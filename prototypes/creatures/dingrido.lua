local util = require "util"

data:extend {{
    type = "collision-layer",
    name = "dingrido_collision_mask"
}}

RECIPE {
    type = "recipe",
    name = "dingrido",
    energy_required = 60,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "modular-armor",     amount = 1},
        {type = "item",  name = "py-shed-basic",     amount = 1},
        {type = "item",  name = "dingrits",          amount = 1},
        {type = "item",  name = "alien-sample-02",   amount = 10},
        {type = "item",  name = "cdna",              amount = 30},
        {type = "item",  name = "retrovirus",        amount = 10},
        {type = "item",  name = "propeptides",       amount = 5},
        {type = "item",  name = "cbp",               amount = 10},
        {type = "item",  name = "bio-sample",        amount = 50},
        {type = "item",  name = "dingrits-codex",    amount = 5},
        {type = "item",  name = "earth-wolf-sample", amount = 10},
        {type = "fluid", name = "fetal-serum",       amount = 100},
        {type = "fluid", name = "artificial-blood",  amount = 200}
    },
    result = "dingrido"
}:add_unlock("mounts-mk02")

ITEM {
    type = "item-with-entity-data",
    name = "dingrido",
    icon = "__pyalienlifegraphics__/graphics/icons/dingrido.png",
    icon_tintable = "__pyalienlifegraphics__/graphics/icons/dingrido.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "x",
    place_result = "dingrido",
    stack_size = 10,
    icon_tintable_mask = "__pyalienlifegraphics__/graphics/icons/mount-mask.png",
}

data:extend {{
    type = "car",
    name = "dingrido",
    collision_mask = {layers = {dingrido_collision_mask = true}},
    icon = "__pyalienlifegraphics__/graphics/icons/dingrido.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 0.5, result = "dingrido"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2500,
    healing_per_tick = 0.03,
    corpse = "medium-biter-corpse",
    dying_explosion = "blood-explosion-huge",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    has_belt_immunity = false,
    immune_to_rock_impacts = true,
    energy_per_hit_point = 0.5,
    render_layer = "higher-object-under",
    resistances = {
        {
            type = "fire",
            decrease = 15,
            percent = 60
        },
        {
            type = "physical",
            decrease = 15,
            percent = 60
        },
        {
            type = "impact",
            decrease = 20,
            percent = 100
        },
        {
            type = "explosion",
            decrease = 20,
            percent = 100
        },
        {
            type = "acid",
            decrease = 0,
            percent = 70
        }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    drawing_box_vertical_extension = 0.5,
    trash_inventory_size = 20,
    effectivity = 0.98,
    braking_power = "30MW",
    energy_source = {
        type = "burner",
        fuel_categories = {"dingrit-food"},
        effectivity = 1,
        fuel_inventory_size = 3
    },
    consumption = "800kW",
    terrain_friction_modifier = 1,
    friction = 0.0003,
    light = {
        {
            type = "oriented",
            minimum_darkness = 0.3,
            picture = {
                filename = "__core__/graphics/light-cone.png",
                priority = "extra-high",
                flags = {"light"},
                scale = 2,
                width = 200,
                height = 200
            },
            shift = {-0.1, -7},
            size = 1,
            intensity = 0.7,
            color = {r = 0.9, g = 1.0, b = 1.0}
        },
        {
            type = "oriented",
            minimum_darkness = 0.3,
            picture = {
                filename = "__core__/graphics/light-cone.png",
                priority = "extra-high",
                flags = {"light"},
                scale = 2,
                width = 200,
                height = 200
            },
            shift = {0.1, -7},
            size = 1,
            intensity = 0.7,
            color = {r = 0.9, g = 1.0, b = 1.0}
        }
    },
    animation = {
        layers = {
            {
                priority = "low",
                width = 256,
                height = 256,
                frame_count = 16,
                direction_count = 64,
                shift = util.by_pixel(-0.0, -0.0),
                animation_speed = 1,
                max_advance = 1,
                stripes = {
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-01.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    },
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-02.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    },
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-03.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    },
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-04.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    }
                },
                scale = 0.85
            },
            {
                priority = "low",
                width = 256,
                height = 256,
                frame_count = 16,
                draw_as_shadow = true,
                direction_count = 64,
                shift = util.by_pixel(0.0, 0.0),
                max_advance = 1,
                animation_speed = 1,
                stripes = {
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-01.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    },
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-02.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    },
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-03.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    },
                    {
                        filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-04.png",
                        width_in_frames = 16,
                        height_in_frames = 16
                    }
                },
                scale = 0.85
            }
        }
    },
    sound_no_fuel = {
        {filename = "__pyalienlifegraphics3__/sounds/dingrito-out.ogg", volume = 0.9},
    },
    sound_minimum_speed = 0.15,
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__pyalienlifegraphics__/sounds/dingrit-breath.ogg",
            volume = 0.7
        },
        match_speed_to_activity = false
    },
    open_sound = {filename = "__pyalienlifegraphics3__/sounds/dingrito-in.ogg", volume = 0.9},
    close_sound = {filename = "__pyalienlifegraphics3__/sounds/dingrito-out.ogg", volume = 0.9},
    rotation_speed = 0.0095,
    weight = 8000,
    inventory_size = 120,
    guns = {},
    automatic_weapon_cycling = false,
    equipment_grid = "mount-grid-10x6",
    minimap_representation = {
        filename = "__pyalienlifegraphics2__/graphics/icons/caravan-map-tag-mk02.png",
        flags = {"icon"},
        size = {64, 64}
    },
}}
