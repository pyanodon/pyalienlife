local util = require "util"

RECIPE {
    type = "recipe",
    name = "outpost",
    energy_required = 1,
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",    amount = 5},
        {type = "item", name = "small-parts-01", amount = 50},
        {type = "item", name = "wooden-chest",   amount = 6},
        {type = "item", name = "concrete",       amount = 20},
        {type = "item", name = "glass",          amount = 5},
    },
    result = "outpost"
}:add_unlock("zoology")

ITEM {
    type = "item",
    name = "outpost",
    icon = "__pyalienlifegraphics2__/graphics/icons/outpost.png",
    icon_size = 64,
    subgroup = "py-alienlife-buildings-others",
    order = "b-a",
    place_result = "outpost",
    stack_size = 10
}

data:extend {{
    inventory_type = "with_filters_and_bar",
    scale_info_icons = true,
    name = "outpost",
    type = "container",
    circuit_connector = table.deepcopy(data.raw.container["steel-chest"].circuit_connector), -- todo
    circuit_wire_max_distance = 9,
    close_sound = {
        filename = "__base__/sound/metallic-chest-close.ogg",
        volume = 0.42999999999999998
    },
    collision_box = {
        {
            -2.9,
            -2.9
        },
        {
            2.9,
            2.9
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
    icon = "__pyalienlifegraphics2__/graphics/icons/outpost.png",
    icon_size = 64,
    inventory_size = 30,
    max_health = 600,
    minable = {
        mining_time = 0.2,
        result = "outpost"
    },
    open_sound = {
        filename = "__base__/sound/metallic-chest-open.ogg",
        volume = 0.42999999999999998
    },
    picture = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/outpost/off.png",
                height = 224,
                width = 224,
                priority = "extra-high",
                shift = util.by_pixel(16, -16),
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
            -3.0,
            -3.0
        },
        {
            3.0,
            3.0
        }
    }
}}
