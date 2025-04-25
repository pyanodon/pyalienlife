local util = require "util"

for i = 4, 10, 2 do
    data:extend {{
        name = "mount-grid-10x" .. i,
        type = "equipment-grid",
        width = 10,
        height = i,
        equipment_categories = {"py-mount-generator"}
    }}
end

data:extend {
    {
        name = "py-mount-generator",
        type = "generator-equipment",
        power = "1W",
        shape = {
            type = "full",
            width = 4,
            height = 4,
        },
        energy_source = {
            usage_priority = "secondary-input",
            type = "electric",
        },
        sprite = {
            filename = "__pyalienlifegraphics__/graphics/heart.png",
            size = {256, 256},
        },
    },
    {
        name = "py-mount-generator",
        type = "equipment-category",
    },
    {
        type = "item",
        name = "py-mount-generator",
        icon = "__pyalienlifegraphics__/graphics/heart.png",
        icon_size = 256,
        localised_name = {"equipment-name.py-mount-generator"},
        localised_description = {"equipment-description.py-mount-generator"},
        stack_size = 1,
        subgroup = "py-alienlife-buildings-others",
        hidden = true,
        flags = {"not-stackable", "only-in-cursor"},
    }
}

RECIPE {
    type = "recipe",
    name = "crawdad",
    energy_required = 60,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "py-shed-basic",        amount = 1},
        {type = "item",  name = "heavy-armor",          amount = 1},
        {type = "item",  name = "vrauks",               amount = 1},
        {type = "item",  name = "alien-sample01",       amount = 10},
        {type = "item",  name = "cdna",                 amount = 10},
        {type = "item",  name = "moss-gen",             amount = 30},
        {type = "item",  name = "bio-sample",           amount = 50},
        {type = "item",  name = "earth-generic-sample", amount = 20},
        {type = "fluid", name = "blood",                amount = 300},
        {type = "fluid", name = "water-saline",         amount = 500}
    },
    results = {{type = "item", name = "crawdad", amount = 1}}
}:add_unlock("mounts-mk01")

ITEM {
    type = "item-with-entity-data",
    name = "crawdad",
    icon = "__pyalienlifegraphics__/graphics/icons/crawdad.png",
    icon_tintable = "__pyalienlifegraphics__/graphics/icons/crawdad.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "x",
    place_result = "crawdad",
    stack_size = 10,
    icon_tintable_mask = "__pyalienlifegraphics__/graphics/icons/mount-mask.png",
}

data:extend {{
    type = "car",
    name = "crawdad",
    icon = "__pyalienlifegraphics__/graphics/icons/crawdad.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 0.5, result = "crawdad"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2000,
    healing_per_tick = 0.02,
    corpse = "medium-biter-corpse",
    dying_explosion = "blood-explosion-huge",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    has_belt_immunity = false,
    immune_to_rock_impacts = true,
    energy_per_hit_point = 0.5,
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
    trash_inventory_size = 10,
    effectivity = 1,
    braking_power = "2MW",
    energy_source = {
        type = "burner",
        fuel_categories = {"fish"},
        effectivity = 1,
        fuel_inventory_size = 2
    },
    consumption = "800kW",
    --terrain_friction_modifier = 0.01,
    friction = 0.002,
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
                slice = 16,
                lines_per_file = 16,
                frame_count = 20,
                direction_count = 64,
                shift = util.by_pixel(-0.0, -0.0),
                animation_speed = 1.8,
                max_advance = 1,
                filenames = {
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-01.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-02.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-03.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-04.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-05.png"
                },
                scale = 0.75
            },
            {
                priority = "low",
                width = 256,
                height = 256,
                slice = 16,
                lines_per_file = 16,
                frame_count = 20,
                draw_as_shadow = true,
                direction_count = 64,
                shift = util.by_pixel(-0.0, -0.0),
                animation_speed = 1.8,
                max_advance = 1,
                filenames = {
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-sh-01.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-sh-02.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-sh-03.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-sh-04.png",
                    "__pyalienlifegraphics3__/graphics/entity/crawdad/crawdad-sh-05.png"
                },
                scale = 0.75
            }
        }
    },
    turret_animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
                priority = "low",
                width = 32,
                height = 32,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-0.0, -0.0)
            }
        }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    sound_no_fuel = {
        {
            filename = "__pyalienlifegraphics3__/sounds/crawdad-breath.ogg",
            volume = 0.6
        }
    },
    ---@diagnostic disable-next-line: assign-type-mismatch
    sound_minimum_speed = 0.05,
    ---@diagnostic disable-next-line: assign-type-mismatch
    sound_scaling_ratio = 0.8,
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__pyalienlifegraphics3__/sounds/crawdad-breath.ogg",
            volume = 0.6
        },
        match_speed_to_activity = false
    },
    open_sound = {filename = "__pyalienlifegraphics3__/sounds/crawdad-in.ogg", volume = 0.5},
    close_sound = {filename = "__pyalienlifegraphics3__/sounds/crawdad-out.ogg", volume = 0.5},
    rotation_speed = 0.015,
    weight = 10000,
    inventory_size = 90,
    guns = {},
    equipment_grid = "mount-grid-10x4",
    minimap_representation = {
        filename = "__pyalienlifegraphics2__/graphics/icons/caravan-map-tag-mk01.png",
        flags = {"icon"},
        size = {64, 64}
    },
}}
