local util = require "util"

RECIPE {
    type = "recipe",
    name = "outpost-aerial-fluid",
    energy_required = 50,
    category = "crafting",
    enabled = false,
    ingredients = {
        { type = "item", name = "stainless-steel",      amount = 15 },
        { type = "item", name = "electric-engine-unit", amount = 10 },
        { type = "item", name = "small-parts-02",       amount = 30 },
        { type = "item", name = "advanced-circuit",     amount = 10 },
        { type = "item", name = "niobium-plate",        amount = 10 },
        { type = "item", name = "titanium-plate",       amount = 10 },
        { type = "item", name = "concrete",             amount = 50 },
        { type = "item", name = "zipir-reef-mk01",      amount = 1 },
        { type = "item", name = "neuroprocessor",       amount = 10 },
        { type = "item", name = "py-tank-10000",        amount = 1 }
    },
    results = { { type = "item", name = "outpost-aerial-fluid", amount = 1 } }
}:add_unlock("domestication-mk03")

ITEM {
    type = "item",
    name = "outpost-aerial-fluid",
    icon = "__pyalienlifegraphics2__/graphics/icons/fluid-flyavan-outpost.png",
    icon_size = 64,
    subgroup = "py-alienlife-buildings-others",
    order = "b-b",
    place_result = "outpost-aerial-fluid",
    stack_size = 10
}

data:extend { {
    ---@diagnostic disable-next-line: assign-type-mismatch
    name = "outpost-aerial-fluid",
    inventory_type = "with_filters_and_bar",
    scale_info_icons = true,
    type = "storage-tank",
    circuit_connector = table.deepcopy(data.raw["storage-tank"]["storage-tank"].circuit_connector), -- todo
    circuit_wire_max_distance = 9,
    close_sound = {
        filename = "__base__/sound/metallic-chest-close.ogg",
        volume = 0.42999999999999998
    },
    collision_box = {
        {
            -6.3,
            -6.3
        },
        {
            6.3,
            6.3
        }
    },
    corpse = "big-remnants",
    damaged_trigger_effect = {
        damage_type_filters = "fire",
        entity_name = "spark-explosion",
        offset_deviation = {
            {
                -0.5,
                -0.5
            },
            {
                0.5,
                0.5
            }
        },
        offsets = {
            {
                0,
                1
            }
        },
        type = "create-entity"
    },
    dying_explosion = "steel-chest-explosion",
    flags = {
        "placeable-neutral",
        "player-creation"
    },
    icon = "__pyalienlifegraphics2__/graphics/icons/flyavan-outpost.png",
    icon_size = 64,
    fluid_box = {
        -- don't hardcode so that volume gets adjusted when "realistic" setting is on.
        volume = data.raw["storage-tank"]["py-tank-10000"].fluid_box.volume,
        pipe_picture = {
            north = {
                layers = {
                    {
                        filename = "__base__/graphics/entity/pipe/pipe-ending-down.png",
                        height = 128,
                        width = 128,
                        scale = 0.5,
                        shift = { 0, 0.9 },
                        priority = "extra-high",
                    },
                },
            },
            east = {
                layers = {
                    {
                        filename = "__base__/graphics/entity/pipe/pipe-ending-right.png",
                        height = 128,
                        width = 128,
                        scale = 0.5,
                        shift = { -1, 0 },
                        priority = "extra-high",
                    },
                },
            },
            south = {
                layers = {
                    {
                        filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
                        height = 128,
                        width = 128,
                        scale = 0.5,
                        shift = { 0, -1.4 },
                        priority = "extra-high",
                    },
                    {
                        filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
                        height = 128,
                        width = 128,
                        scale = 0.5,
                        shift = { 0, -0.75 },
                        priority = "extra-high",
                    },
                },
            },
            west = {
                layers = {
                    {
                        filename = "__base__/graphics/entity/pipe/pipe-ending-left.png",
                        height = 128,
                        width = 128,
                        scale = 0.5,
                        shift = { 1, 0 },
                        priority = "extra-high",
                    },
                },
            },

        },
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = { -5, 6 },
                direction = defines.direction.south
            },
        },
        secondary_draw_order = -1,
    },
    window_bounding_box = { { -0.0, 0.0 }, { 0.0, 0.0 } },
    max_health = 1200,
    minable = {
        mining_time = 0.2,
        result = "outpost-aerial-fluid"
    },
    open_sound = {
        filename = "__base__/sound/metallic-chest-open.ogg",
        volume = 0.42999999999999998
    },
    pictures = {
        picture = {
            layers = { {
                filename = "__pyalienlifegraphics2__/graphics/entity/fluid-flyavan/outpost.png",
                height = 512,
                width = 480,
                priority = "extra-high",
                shift = util.by_pixel(32, -48),
            } },
        },
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        gas_flow = py.empty_image()
    },
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__base__/sound/storage-tank.ogg",
            volume = 0.8
        },
        apparent_volume = 1.5,
        max_sounds_per_prototype = 3
    },
    resistances = {
        {
            percent = 90,
            type = "fire"
        },
        {
            percent = 60,
            type = "impact"
        }
    },
    selection_box = {
        {
            -6.5,
            -6.5
        },
        {
            6.5,
            6.5
        }
    },
    working_sound = {
        sound = { filename = "__pyalienlifegraphics3__/sounds/flyavan.ogg", volume = 0.8, audible_distance_modifier = 0.35, },
        idle_sound = { filename = "__pyalienlifegraphics3__/sounds/flyavan.ogg", volume = 0.2, audible_distance_modifier = 0.35, },
    },
    inventory_type = "with_filters_and_bar"
} }
