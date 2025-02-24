local util = require "util"

RECIPE {
    type = "recipe",
    name = "outpost-aerial",
    energy_required = 50,
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "stainless-steel",      amount = 15},
        {type = "item", name = "electric-engine-unit", amount = 10},
        {type = "item", name = "small-parts-02",       amount = 30},
        {type = "item", name = "advanced-circuit",     amount = 10},
        {type = "item", name = "niobium-plate",        amount = 10},
        {type = "item", name = "titanium-plate",       amount = 10},
        {type = "item", name = "concrete",             amount = 50},
        {type = "item", name = "zipir-reef-mk01",      amount = 1},
        {type = "item", name = "neuroprocessor",       amount = 10},
    },
    result = "outpost-aerial"
}:add_unlock("domestication-mk03")

ITEM {
    type = "item",
    name = "outpost-aerial",
    icon = "__pyalienlifegraphics2__/graphics/icons/flyavan-outpost.png",
    icon_size = 64,
    subgroup = "py-alienlife-buildings-others",
    order = "b-b",
    place_result = "outpost-aerial",
    stack_size = 10
}

data:extend {{
    scale_info_icons = true,
    name = "outpost-aerial",
    type = "container",
    circuit_connector = table.deepcopy(data.raw.container["steel-chest"].circuit_connector), -- todo
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
    inventory_size = 90,
    max_health = 1200,
    minable = {
        mining_time = 0.2,
        result = "outpost-aerial"
    },
    open_sound = {
        filename = "__base__/sound/metallic-chest-open.ogg",
        volume = 0.42999999999999998
    },
    picture = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/flyavan/outpost.png",
                height = 512,
                width = 480,
                priority = "extra-high",
                shift = util.by_pixel(32, -48),
            },
        }
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
        sound = {filename = "__pyalienlifegraphics3__/sounds/flyavan.ogg", volume = 0.8, audible_distance_modifier = 0.35,},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/flyavan.ogg", volume = 0.2, audible_distance_modifier = 0.35,},
    },
    inventory_type = "with_filters_and_bar"
}}
