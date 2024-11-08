RECIPE {
    type = "recipe",
    name = "vessel",
    energy_required = 20,
    enabled = false,
    category = "creature-chamber",
    ingredients = {
        {type = "item",  name = "earth-generic-sample", amount = 1},
        {type = "item",  name = "microcin-j25",         amount = 1},
        {type = "item",  name = "alien-sample01",       amount = 2},
        {type = "fluid", name = "water-saline",         amount = 20},
        {type = "fluid", name = "coal-slurry",          amount = 20},
    },
    results = {
        {type = "item", name = "vessel", amount = 40}
    }
}:add_unlock("biofluid-mk01")

RECIPE {
    type = "recipe",
    name = "vessel-to-ground",
    energy_required = 40,
    enabled = false,
    category = "creature-chamber",
    ingredients = {
        {"vessel",               10},
        {"earth-generic-sample", 1},
        {"peptidase-m58",        1},
        {"alien-sample-02",      2},
        {"bio-sample",           3},
        {type = "fluid",         name = "water-saline", amount = 40},
        {type = "fluid",         name = "fetal-serum",  amount = 10},
        {type = "fluid",         name = "coal-slurry",  amount = 40},
    },
    results = {
        {"vessel-to-ground", 10}
    }
}:add_unlock("biofluid-mk02")

ITEM {
    type = "item",
    name = "vessel",
    icon = "__pyalienlifegraphics2__/graphics/icons/vessel.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-biofluid-network",
    order = "da",
    place_result = "vessel",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "vessel-to-ground",
    icon = "__pyalienlifegraphics2__/graphics/icons/vessel-to-ground.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-biofluid-network",
    order = "db",
    place_result = "vessel-to-ground",
    stack_size = 100
}

local variants = {
    "straight-base-vertical",
    "straight-base-horizontal",
    "alone",
    "straight-horizontal",
    "curved-right-up",
    "curved-right-down",
    "curved-left-down",
    "curved-left-up",
    "junction-down",
    "junction-left",
    "junction-up",
    "junction-right",
    "full-junction",
}

local vessel = table.deepcopy(data.raw["pipe"]["pipe"])
vessel.icon_draw_specification = {scale = 0}
vessel.fluid_box = {
    volume = 1,
    pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
    pipe_connections = {
        {direction = defines.direction.north, position = {0, 0}, connection_category = "biofluid"},
        {direction = defines.direction.east,  position = {0, 0}, connection_category = "biofluid"},
        {direction = defines.direction.south, position = {0, 0}, connection_category = "biofluid"},
        {direction = defines.direction.west,  position = {0, 0}, connection_category = "biofluid"}
    },
    hide_connection_info = true
}
vessel.name = "vessel"
vessel.icon = data.raw.item["vessel"].icon
vessel.icon_size = data.raw.item["vessel"].icon_size
vessel.corpse = "small-remnants"
vessel.minable.result = "vessel"
vessel.next_upgrade = nil

data:extend {vessel}

local ug_pipe_animation = {}
local ug_pipe_integration = {}
for cardinal, direction in pairs {["north"] = "up", ["east"] = "right", ["south"] = "down", ["west"] = "left"} do
    ug_pipe_animation[#ug_pipe_animation + 1] = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/vessel/hr-vessel-to-ground-" .. direction .. ".png",
                priority = "high",
                width = 640 / 5,
                height = 768 / 6,
                frame_count = 5 * 6,
                line_length = 5,
                shift = {0, 0},
                scale = 0.335,
                animation_speed = 0.5
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/vessel/hr-vessel-to-ground-" .. direction .. "-glow.png",
                priority = "high",
                width = 640 / 5,
                height = 768 / 6,
                frame_count = 5 * 6,
                line_length = 5,
                shift = {0, 0},
                scale = 0.335,
                animation_speed = 0.5,
                draw_as_glow = true,
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/vessel/hr-vessel-to-ground-" .. direction .. "-shadow.png",
                priority = "high",
                width = 640 / 5,
                height = 768 / 6,
                frame_count = 5 * 6,
                line_length = 5,
                shift = {0, 0},
                scale = 0.335,
                animation_speed = 0.5,
                draw_as_shadow = true,
            },
            {
                filename = "__core__/graphics/light-small.png",
                priority = "high",
                width = 150,
                height = 150,
                shift = {0, 0},
                frame_count = 1,
                repeat_count = 30,
                draw_as_light = true,
                tint = {0.5, 0.5, 1, 0.4}
            }
        }
    }
    ug_pipe_integration[cardinal] = ug_pipe_animation[#ug_pipe_animation]
end

ug_pipe_animation[#ug_pipe_animation + 1] = {
    layers = {
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/vessel/hr-vessel-to-ground-down.png",
            priority = "high",
            width = 640 / 5,
            height = 768 / 6,
            frame_count = 5 * 6,
            line_length = 5,
            shift = {0, 0},
            scale = 0.335,
            animation_speed = 0.5
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/vessel/hr-vessel-to-ground-down-alone-glow.png",
            priority = "high",
            width = 640 / 5,
            height = 768 / 6,
            frame_count = 5 * 6,
            line_length = 5,
            shift = {0, 0},
            scale = 0.335,
            animation_speed = 0.5,
            draw_as_glow = true,
        },
        gap,
        gap_glow,
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/vessel/hr-vessel-to-ground-down-shadow.png",
            priority = "high",
            width = 640 / 5,
            height = 768 / 6,
            frame_count = 5 * 6,
            line_length = 5,
            shift = {0, 0},
            scale = 0.335,
            animation_speed = 0.5,
            draw_as_shadow = true,
        },
        {
            filename = "__core__/graphics/light-small.png",
            priority = "high",
            width = 150,
            height = 150,
            shift = {0, 0},
            frame_count = 1,
            repeat_count = 30,
            draw_as_light = true,
            tint = {0.5, 0.5, 1, 0.4}
        }
    }
}

local underground_pipe = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
underground_pipe.name = "vessel-to-ground"
underground_pipe.minable = {mining_time = 0.2, result = "vessel-to-ground"}
underground_pipe.fast_replaceable_group = "vessel"
underground_pipe.next_upgrade = nil
underground_pipe.icon = data.raw.item["vessel-to-ground"].icon
underground_pipe.icon_size = 64
underground_pipe.icon_mipmaps = nil
underground_pipe.fluid_box = {
    volume = 1,
    pipe_connections = {
        {
            position = {0, underground_pipe.collision_box[1][2]},
            direction = defines.direction.north,
            connection_category = "biofluid"
        },
        {
            position = {0, underground_pipe.collision_box[2][2]},
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 48,
            connection_category = "biofluid"
        }
    }
}
underground_pipe.integration_patch = ug_pipe_integration
underground_pipe.integration_patch_render_layer = "lower-object"
data:extend {underground_pipe}
