RECIPE {
    type = "recipe",
    name = "gobachov",
    energy_required = 120,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "earth-generic-sample", amount = 2},
        {type = "item",  name = "cdna",                 amount = 1},
        {type = "item",  name = "alien-sample-02",      amount = 3},
        {type = "item",  name = "bio-sample",           amount = 5},
        {type = "fluid", name = "water-saline",         amount = 50},
        {type = "fluid", name = "fetal-serum",          amount = 50},
        {type = "fluid", name = "coal-slurry",          amount = 100},
    },
    results = {
        {type = "item", name = "gobachov", amount = 1}
    }
}:add_unlock {"biofluid-mk01"}

ITEM {
    type = "item",
    name = "gobachov",
    icon = "__pyalienlifegraphics2__/graphics/icons/gobachov.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-biofluid-network",
    order = "x",
    place_result = "gobachov",
    stack_size = 10
}

local animation = {
    layers = {
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/gobachov/hr-sh.png",
            priority = "high",
            line_length = 25,
            width = 128,
            height = 128,
            frame_count = 25,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/gobachov/hr-carry.png",
            priority = "high",
            line_length = 25,
            width = 128,
            height = 128,
            frame_count = 25,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            scale = 0.5
        }
    }
}

---@as data.UnitPrototype
local unit = {
    ai_settings = {do_separation = false, path_resolution_modifier = -2},
    type = "unit",
    name = "gobachov",
    icon = "__pyalienlifegraphics2__/graphics/icons/gobachov.png",
    icon_size = 64,
    flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air", "building-direction-8-way"},
    minable = {mining_time = 0.2, result = "gobachov"},
    max_health = 250,
    order = "z",
    has_belt_immunity = true,
    subgroup = "py-alienlife-biofluid-network",
    healing_per_tick = 0.01,
    collision_box = {{0, 0}, {0, 0}},
    resistances = {{type = "fire", percent = 100}},
    collision_mask = {layers = {}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    attack_parameters = {
        type = "projectile",
        range = 0,
        cooldown = 0,
        ammo_category = "melee",
        ammo_type = _G.make_unit_melee_ammo_type(0),
        animation = animation
    },
    vision_distance = 0,
    movement_speed = 0.09,
    distance_per_frame = 0.13,
    absorptions_to_join_attack = {pollution = 4},
    distraction_cooldown = 300,
    max_pursue_distance = 50,
    dying_explosion = "blood-explosion-small",
    run_animation = animation,
    render_layer = "air-object",
    working_sound = {
        aggregation = {
            max_count = 2,
            remove = true
        },
        filename = "__pyalienlifegraphics3__/sounds/ocula-walk.ogg",
        volume = 0.4
    },
    map_color = {0, 0.5, 0},
    selection_priority = 51
}

data:extend {unit}
