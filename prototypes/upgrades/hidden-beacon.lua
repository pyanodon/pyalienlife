local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

ITEM {
    type = "item",
    name = "hidden-beacon",
    icon = "__pyalienlifegraphics3__/graphics/icons/dimensional-gastricorg.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-antelope",
    order = "x",
    place_result = "hidden-beacon",
    stack_size = 50
}

ENTITY{
    type = "beacon",
    name = "hidden-beacon",
    icon = "__base__/graphics/icons/beacon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "hidden-beacon"},
    max_health = 200,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{0,0}, {0,0}},
    selection_box = {{-1,-1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    --drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution","productivity"},

    graphics_set = require("__base__.prototypes.entity.beacon-animations"),

    supply_area_distance = 5,
    energy_source =
        {
            type = "void",
        },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    energy_usage = "480kW",
    distribution_effectivity = 1,
    module_specification =
    {
    module_slots = 1,
    module_info_icon_shift = {0, 0},
    module_info_multi_row_initial_height_modifier = -0.3,
    module_info_max_icons_per_row = 2,
    },
    water_reflection =
    {
    pictures =
    {
        filename = "__base__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5,
    },
    rotate = false,
    orientation_to_variation = false
    }
}