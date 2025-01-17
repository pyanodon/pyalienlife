RECIPE {
    type = "recipe",
    name = "chorkok",
    energy_required = 120,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "earth-bat-sample",       amount = 1},
        {type = "item",  name = "strorix-unknown-sample", amount = 1},
        {type = "item",  name = "cdna",                   amount = 3},
        {type = "item",  name = "perfect-samples",        amount = 1},
        {type = "item",  name = "bio-sample",             amount = 15},
        {type = "item",  name = "pheromones",             amount = 5},
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 100},
        {type = "fluid", name = "coal-slurry",            amount = 200},
    },
    results = {
        {type = "item", name = "chorkok", amount = 1}
    }
}:add_unlock {"biofluid-mk03"}

ITEM {
    type = "item",
    name = "chorkok",
    icon = "__pyalienlifegraphics2__/graphics/icons/chorkok.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-biofluid-network",
    order = "z",
    place_result = "chorkok",
    stack_size = 10
}

RECIPE {
    type = "recipe",
    name = "earth-bat-sample",
    energy_required = 300,
    category = "data-array",
    enabled = false,
    ingredients = {
        {type = "item", name = "earth-generic-sample", amount = 50},
        {type = "item", name = "py-science-pack-4",    amount = 5},
        {type = "item", name = "bat-codex",            amount = 1},
    },
    results = {
        {"earth-bat-sample", 1}
    }
}:add_unlock {"biofluid-mk03"}

RECIPE {
    type = "recipe",
    name = "bat-codex",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "glass",                                                      amount = 4},
        {type = "item", name = "small-lamp",                                                 amount = 2},
        {type = "item", name = mods["pyalternativeenergy"] and "hts-coil" or "tinned-cable", amount = 5},
    },
    results = {
        {type = "item", name = "bat-codex", amount = 2},
    },
}:add_unlock {"biofluid-mk03"}:add_ingredient {type = "item", name = "intelligent-unit", amount = 1}

local animation = {
    layers = {
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/chorkok/sh.png",
            priority = "high",
            line_length = 25,
            width = 128,
            height = 128,
            frame_count = 25,
            shift = util.by_pixel(39.5, 23.75),
            draw_as_shadow = true,
            direction_count = 16
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/chorkok/carry.png",
            priority = "high",
            line_length = 25,
            width = 128,
            height = 128,
            frame_count = 25,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
        }
    }
}

---@as data.UnitPrototype
local unit = {
    ai_settings = {do_separation = false, path_resolution_modifier = -2},
    type = "unit",
    name = "chorkok",
    icon = "__pyalienlifegraphics2__/graphics/icons/chorkok.png",
    icon_size = 64,
    flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air", "building-direction-8-way"},
    minable = {mining_time = 0.2, result = "chorkok"},
    max_health = 250,
    has_belt_immunity = true,
    order = "z",
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
    movement_speed = 0.3,
    distance_per_frame = 0.5,
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
