local util = require "util"

-- https://github.com/pyanodon/pybugreports/issues/612
data:extend {{
    type = "belt-immunity-equipment",
    name = "phadaisus-hidden-belt-immunity-equipment",
    hidden = true,
    energy_consumption = "1W",
    sprite = py.empty_image(),
    shape = {
        type = "full",
        width = 0,
        height = 0,
    },
    energy_source = {
        type = "electric",
        usage_priority = "primary-input"
    },
    categories = {"armor"},
    factoriopedia_alternative = "belt-immunity-equipment"
}}

ITEM {
    type = "item",
    name = "phadaisus-hidden-belt-immunity-equipment",
    hidden = true,
    icon = "__pyalienlifegraphics__/graphics/icons/phadaisus.png",
    icon_size = 64,
    flags = {"only-in-cursor"},
    stack_size = 1,
}

RECIPE {
    type = "recipe",
    name = "phadaisus",
    energy_required = 60,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "py-shed-basic",                                                        amount = 1},
        {type = "item",  name = "bioartificial-guts",                                                   amount = 1},
        {type = "item",  name = "biomimetic-skin",                                                      amount = 1},
        {type = "item",  name = "in-vitro-meat",                                                        amount = 1},
        {type = "item",  name = "laboratory-grown-brain",                                               amount = 1},
        {type = "item",  name = "scafold-free-bones",                                                   amount = 1},
        {type = "item",  name = "tissue-engineered-fat",                                                amount = 1},
        {type = "item",  name = "perfect-samples",                                                      amount = 10},
        {type = "item",  name = "power-armor-mk2",                                                      amount = 1},
        {type = "item",  name = "enzyme-pks",                                                           amount = 1},
        {type = "item",  name = "zymogens",                                                             amount = 5},
        {type = "item",  name = mods.pyhightech and "resilin" or "lignin",                              amount = 5},
        {type = "item",  name = "strorix-unknown-sample",                                               amount = 5},
        {type = "item",  name = "purine-analogues",                                                     amount = 15},
        {type = "item",  name = "pheromones",                                                           amount = 100},
        {type = "item",  name = "phadai-mk04",                                                          amount = 1},
        {type = "item",  name = mods.pyalternativeenergy and "metastable-quasicrystal" or "bio-sample", amount = 10},
        {type = "item",  name = "phadai-codex-mk04",                                                    amount = 5},
        {type = "item",  name = "earth-tiger-sample",                                                   amount = 4},
        {type = "fluid", name = "artificial-blood",                                                     amount = 400},
        {type = "fluid", name = "gta",                                                                  amount = 500}
    },
    results = {{type = "item", name = "phadaisus", amount = 1}}
}:add_unlock("mounts-mk04")

ITEM {
    type = "item-with-entity-data",
    name = "phadaisus",
    icon = "__pyalienlifegraphics__/graphics/icons/phadaisus.png",
    icon_tintable = "__pyalienlifegraphics__/graphics/icons/phadaisus.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "x",
    place_result = "phadaisus",
    stack_size = 10,
    icon_tintable_mask = "__pyalienlifegraphics__/graphics/icons/mount-mask.png",
}

data:extend {{
    type = "spider-vehicle",
    name = "phadaisus",
    icon = "__pyalienlifegraphics__/graphics/icons/phadaisus.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 0.5, result = "phadaisus"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 5000,
    healing_per_tick = 0.2,
    corpse = "big-biter-corpse",
    dying_explosion = "blood-explosion-huge",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    has_belt_immunity = true,
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
    selection_priority = 51,
    collision_box = {{0, 0}, {0, 0}},
    collision_mask = {layers = {}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    drawing_box_vertical_extension = 0.5,
    effectivity = 1,
    braking_power = "5MW",
    energy_source = {
        type = "burner",
        fuel_categories = {"phadai-food"},
        effectivity = 1,
        fuel_inventory_size = 4
    },
    movement_energy_consumption = "800kW",
    --terrain_friction_modifier = 0.01,
    friction = 0.001,
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
    graphics_set = {
        animation = {
            priority = "high",
            width = 352,
            height = 352,
            frame_count = 15,
            slice = 5,
            lines_per_file = 5,
            direction_count = 64,
            shift = util.by_pixel(20, -0.0),
            animation_speed = 0.5,
            max_advance = 1,
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a1.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a2.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a3.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a4.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a5.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a6.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a7.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a8.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a9.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a10.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a11.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a12.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a13.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a14.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a15.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a16.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a17.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a18.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a19.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a20.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a21.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a22.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a23.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a24.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a25.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a26.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a27.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a28.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a29.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a30.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a31.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a32.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a33.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a34.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a35.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a36.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a37.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a38.png",
                "__pyalienlifegraphics3__/graphics/entity/phadaisus/a39.png"
            }
        }
    },
    sound_no_fuel = {
        {
            filename = "__pyalienlifegraphics3__/sounds/phadaisus-breath.ogg",
            volume = 0.35
        }
    },
    ---@diagnostic disable-next-line: assign-type-mismatch
    sound_minimum_speed = 0.05,
    ---@diagnostic disable-next-line: assign-type-mismatch
    sound_scaling_ratio = 0.8,
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__pyalienlifegraphics3__/sounds/phadaisus-breath.ogg",
            volume = 0.25
        },
        match_speed_to_activity = false
    },
    open_sound = {filename = "__pyalienlifegraphics3__/sounds/phadaisus-in.ogg", volume = 0.7},
    close_sound = {filename = "__pyalienlifegraphics3__/sounds/phadaisus-out.ogg", volume = 0.5},
    rotation_speed = 0.015,
    --tank_driving = true,
    weight = 6000,
    inventory_size = 200,
    render_layer = "air-object",
    automatic_weapon_cycling = false,
    equipment_grid = "mount-grid-10x10",
    guns = {"dragon-breath"},
    torso_rotation_speed = 0.01,
    chunk_exploration_radius = 4,
    chain_shooting_cooldown_modifier = 0.4,
    height = 0,
    spider_engine = {
        legs = {
            {
                walking_group = 1,
                blocking_legs = {},
                ground_position = {0, 0},
                leg = "py-fake-spidertron-leg",
                mount_position = {0, 0},
            },
        },
        military_target = "spidertron-military-target",
    },
    trash_inventory_size = 30,
    minimap_representation = {
        filename = "__pyalienlifegraphics2__/graphics/icons/caravan-map-tag-mk04.png",
        flags = {"icon"},
        size = {64, 64}
    },
}}

local vehicle_leg = table.deepcopy(data.raw["spider-leg"]["spidertron-leg-1"])
vehicle_leg.name = "py-fake-spidertron-leg"
vehicle_leg.graphics_set = {}
vehicle_leg.collision_mask = {layers = {}}
vehicle_leg.target_position_randomisation_distance = 0
vehicle_leg.working_sound = nil
vehicle_leg.minimal_step_size = 0
vehicle_leg.part_length = 2
vehicle_leg.movement_based_position_selection_distance = 1.5 -- I have no idea what this does.
vehicle_leg.initial_movement_speed = 1
vehicle_leg.movement_acceleration = 0
vehicle_leg.walking_sound_volume_modifier = 0
data:extend {vehicle_leg}

local flamethrower = table.deepcopy(data.raw["gun"]["tank-flamethrower"])
flamethrower.name = "dragon-breath"
flamethrower.icon = "__pyalienlifegraphics__/graphics/icons/dragon-breath.png"
flamethrower.icon_size = 64
flamethrower.attack_parameters.ammo_category = "dragon-breath"
flamethrower.attack_parameters.gun_center_shift = {-0.17, -0.2}
flamethrower.attack_parameters.range = 35
flamethrower.subgroup = "py-alienlife-items"
data:extend {flamethrower}

RECIPE {
    name = "dragon-breath-ammo",
    type = "recipe",
    energy_required = 20,
    enabled = false,
    ingredients = {
        {type = "fluid", name = "light-oil",                                       amount = 100},
        {type = "fluid", name = "kerosene",                                        amount = 100},
        {type = "fluid", name = mods.pyalternativeenergy and "aniline" or "water", amount = 100},
    },
    category = "chemistry",
    results = {
        {type = "item", name = "dragon-breath-ammo", amount = 1},
    },
    crafting_machine_tint = table.deepcopy(data.raw["recipe"]["flamethrower-ammo"].crafting_machine_tint),
}:add_unlock("mounts-mk04")

ITEM {
    name = "dragon-breath-ammo",
    type = "ammo",
    icon = "__pyalienlifegraphics__/graphics/icons/dragon-breath-ammo.png",
    icon_size = 64,
    ammo_category = "dragon-breath",
    ammo_type = {
        action = {
            action_delivery = {
                stream = "dragon-breath",
                type = "stream"
            },
            type = "direct"
        },
        clamp_position = true,
        consumption_modifier = 1,
        source_type = "vehicle",
        target_type = "position"
    },
    magazine_size = 1000000,
    flags = {"not-stackable"},
    stack_size = 1,
    subgroup = "py-alienlife-items",
}

local stream = table.deepcopy(data.raw["stream"]["tank-flamethrower-fire-stream"])
stream.particle_horizontal_speed = 1.5
stream.name = "dragon-breath"
stream.action = {{
    action_delivery = {
        target_effects = {
            {
                apply_damage_to_trees = true,
                damage = {
                    amount = 70,
                    type = "fire"
                },
                type = "damage"
            }
        },
        type = "instant"
    },
    radius = 6,
    type = "area"
}}
data:extend {stream}

data:extend {{
    type = "ammo-category",
    name = "dragon-breath"
}}
