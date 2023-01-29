local hit_effects = require('__base__.prototypes.entity.hit-effects')
local sounds = require('__base__.prototypes.entity.sounds')

ITEM{
    type = 'item',
    name = 'hidden-beacon',
    icon = '__pycoalprocessinggraphics__/graphics/empty.png',
    icon_size = 32,
    flags = {"hidden"},
    subgroup = 'py-alienlife-antelope',
    order = 'x',
    place_result = 'hidden-beacon',
    stack_size = 100,
}

ENTITY{
    type = 'beacon',
    name = 'hidden-beacon',
    icon = '__pycoalprocessinggraphics__/graphics/empty.png',
    icon_size = 32,
    flags = {'placeable-player', 'hide-alt-info', 'hidden'},
    -- minable = {mining_time = 0.2, result = "hidden-beacon"},
    max_health = 200,
    corpse = 'beacon-remnants',
    dying_explosion = 'beacon-explosion',
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    damaged_trigger_effect = hit_effects.entity(),
    -- drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    --[[
    graphics_set = require("__base__.prototypes.entity.beacon-animations"),
    ]] --
    supply_area_distance = 12,
    energy_source = {type = 'void'},
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    energy_usage = '480kW',
    distribution_effectivity = 1,
    module_specification = {
        module_slots = 1,
        module_info_icon_shift = {0, 0},
        module_info_multi_row_initial_height_modifier = -0.3,
        module_info_max_icons_per_row = 2
    },
    --[[
    water_reflection =
    {
    pictures =
    {
        filename = '__pycoalprocessinggraphics__/graphics/empty.png',
        priority = "extra-high",
        width = 32,
        height = 32,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5,
    },
    ]] --
    rotate = false,
    orientation_to_variation = false
}
