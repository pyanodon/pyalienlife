local item_icon = "__pyalienlifegraphics3__/graphics/icons/dig-osaur.png"
local time_taken_for_digosaurus_to_mine = 15 -- seconds

RECIPE {
    type = "recipe",
    name = "digosaurus",
    energy_required = 120,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "moss-gen",             amount = 30},
        {type = "item",  name = "earth-generic-sample", amount = 10},
        {type = "item",  name = "petri-dish",           amount = 10},
        {type = "item",  name = "titanium-plate",       amount = 50},
        {type = "fluid", name = "water-saline",         amount = 1000},
    },
    result = "digosaurus"
}:add_unlock {"nexelit-mk01"}

ITEM {
    type = "module",
    name = "digosaurus",
    icon = item_icon,
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "xx",
    stack_size = 10,
    flags = {},
    localised_name = {"entity-name.digosaurus"},
    localised_description = {"entity-description.digosaurus"},
    effect = {pollution = 1, speed = 1},
    category = "digosaurus",
    tier = 1,
}

RECIPE {
    type = "recipe",
    name = "dino-dig-site",
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",        amount = 50},
        {type = "item", name = "duralumin",          amount = 30},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "lead-plate",         amount = 50},
        {type = "item", name = "titanium-plate",     amount = 100},
        {type = "item", name = "small-parts-01",     amount = 100},
    },
    results = {
        {type = "item", name = "dino-dig-site", amount = 1}
    }
}:add_unlock {"nexelit-mk01"}

ITEM {
    type = "item",
    name = "dino-dig-site",
    icon = "__pyalienlifegraphics3__/graphics/icons/outpost-mining.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "z-a",
    place_result = "dino-dig-site",
    stack_size = 10
}

local running_animation = {
    layers = {
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/walk.png",
            width = 128,
            height = 128,
            shift = util.by_pixel(0.0, 0.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 1,
            scale = 0.8
        },
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/walk-sh.png",
            width = 128,
            height = 128,
            shift = util.by_pixel(6, 0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 1,
            draw_as_shadow = true,
            scale = 0.8
        }
    }
}

local mining_animation = {
    layers = {
        {
            stripes = {
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-1.png",
                    width_in_frames = 17,
                    height_in_frames = 8
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-2.png",
                    width_in_frames = 18,
                    height_in_frames = 8
                }
            },
            width = 128,
            height = 128,
            shift = util.by_pixel(0, 0),
            frame_count = 35,
            direction_count = 8,
            animation_speed = 1,
            scale = 0.8
        },
        {
            stripes = {
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-sh1.png",
                    width_in_frames = 17,
                    height_in_frames = 8
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-sh2.png",
                    width_in_frames = 18,
                    height_in_frames = 8
                }
            },
            width = 128,
            height = 128,
            shift = util.by_pixel(6, 0),
            frame_count = 35,
            direction_count = 8,
            animation_speed = 1,
            draw_as_shadow = true,
            scale = 0.8
        }
    }
}

ENTITY {
    type = "unit",
    name = "digosaurus",
    icon = item_icon,
    icon_size = 64,
    ai_settings = {do_separation = false},
    flags = {"placeable-neutral", "placeable-player", "player-creation", "placeable-off-grid", "breaths-air", "not-repairable", "not-on-map", "not-flammable", "not-in-kill-statistics"},
    max_health = 300,
    subgroup = "creatures",
    healing_per_tick = 0.01,
    collision_box = {{0, 0}, {0, 0}},
    collision_mask = {layers = {}},
    attack_parameters = {
        type = "projectile",
        range = 1,
        cooldown = 30,
        ammo_category = "melee",
        ammo_type = _G.make_unit_melee_ammo_type(1),
        animation = mining_animation
    },
    --selectable_in_game = false,
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vision_distance = 30,
    movement_speed = 0.076,
    distance_per_frame = 0.13,
    absorptions_to_join_attack = {pollution = 4},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    dying_explosion = "blood-explosion-small",
    has_belt_immunity = true,
    affected_by_tiles = true,
    run_animation = running_animation
}

local dig_site_graphic = {
    layers = {
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/outpost-mining/outpost-mining.png",
            priority = "high",
            width = 224,
            height = 320,
            shift = util.by_pixel(0, -48)
        },
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/outpost-mining/outpost-mining-mask.png",
            priority = "high",
            width = 224,
            height = 320,
            shift = util.by_pixel(0, -48),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
        }
    }
}

RECIPE {
    type = "recipe",
    name = "digosaurus-hidden-recipe",
    ingredients = {},
    results = {{"nexelit-ore", 4000}},
    category = "dino-dig-site",
    enabled = false,
    localised_name = {"entity-name.ore-nexelit"},
    hidden = true,
    energy_required = 1
}:add_unlock {"nexelit-mk01"}

ENTITY {
    type = "assembling-machine",
    name = "dino-dig-site",
    crafting_speed = 1,
    fixed_recipe = "digosaurus-hidden-recipe",
    gui_title_key = "digosaurus-gui.empty",
    icon = "__pyalienlifegraphics3__/graphics/icons/outpost-mining.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation", "no-automated-item-insertion"},
    minable = {mining_time = 0.5, result = "dino-dig-site"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
    close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
    impact_category = "metal-large",
    collision_box = {{-3.3, -3.2}, {3.3, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    energy_usage = "1W",
    crafting_categories = {"dino-dig-site"},
    allowed_module_categories = {"digosaurus"},
    energy_source = {
        type = "electric",
        usage_priority = "primary-input",
        buffer_capacity = "400kJ",
        drain = "400kW"
    },
    graphics_set = {
        animation = {
            north = dig_site_graphic,
            east = dig_site_graphic,
            south = dig_site_graphic,
            west = dig_site_graphic,
        },
    },
    radius_visualisation_specification = {
        sprite = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 10,
            height = 10
        },
        distance = 12.5,
        offset = {0, -16}
    },
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
}

data:extend {{
    type = "module-category",
    name = "digosaurus"
}}

ENTITY {
    name = "pipette-dino-dig-site",
    type = "mining-drill",
    localised_name = {"entity-name.dino-dig-site"},
    localised_description = {"entity-description.dino-dig-site"},
    icon = ENTITY("dino-dig-site").icon,
    icon_size = ENTITY("dino-dig-site").icon_size,
    hidden = true,
    flags = {"not-blueprintable", "not-in-made-in"},
    minable = ENTITY("dino-dig-site").minable,
    collision_box = ENTITY("dino-dig-site").collision_box,
    selection_box = ENTITY("dino-dig-site").selection_box,
    graphics_set = ENTITY("dino-dig-site").graphics_set,
    energy_usage = "1W",
    energy_source = ENTITY("dino-dig-site").energy_source,
    vector_to_place_result = {0, 0},
    resource_searching_radius = 1.0,
    mining_speed = 0,
    resource_categories = {"ore-nexelit"}
}

ITEM {
    type = "item",
    name = "pipette-dino-dig-site",
    localised_name = {"?", {"item-name.dino-dig-site"}, {"entity-name.dino-dig-site"}},
    localised_description = {"?", {"item-description.dino-dig-site"}, {"entity-description.dino-dig-site"}},
    icon = "__pyalienlifegraphics3__/graphics/icons/outpost-mining.png",
    icon_size = 64,
    hidden = true,
    flags = {"hide-from-bonus-gui", "only-in-cursor"},
    subgroup = "other",
    order = "z-a",
    place_result = "pipette-dino-dig-site",
    stack_size = 1
}

ENTITY {
    type = "container",
    localised_name = {"entity-name.dino-dig-site"},
    localised_description = {"entity-description.dino-dig-site"},
    name = "dino-dig-site-food-input",
    icon = "__pyalienlifegraphics3__/graphics/icons/outpost-mining.png",
    icon_size = 64,
    hidden = true,
    flags = {"placeable-neutral", "no-automated-item-removal", "not-rotatable", "not-flammable", "placeable-off-grid", "hide-alt-info"},
    max_health = 350,
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    collision_mask = {layers = {}},
    inventory_size = 2,
    enable_inventory_bar = false,
    picture = {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1
    },
    selectable_in_game = false,
    remove_decoratives = "false",
    inventory_type = "with_filters_and_bar"
}

local sound =
{
    type = "play-sound",
    sound =
    {
        aggregation =
        {
            max_count = 3,
            remove = true
        },
        variations =
        {
            {
                filename = "__core__/sound/axe-mining-ore-1.ogg",
                volume = 0.4
            },
            {
                filename = "__core__/sound/axe-mining-ore-2.ogg",
                volume = 0.4
            },
            {
                filename = "__core__/sound/axe-mining-ore-3.ogg",
                volume = 0.4
            },
            {
                filename = "__core__/sound/axe-mining-ore-4.ogg",
                volume = 0.4
            },
            {
                filename = "__core__/sound/axe-mining-ore-5.ogg",
                volume = 0.4
            }
        }
    }
}

ENTITY {
    type = "simple-entity",
    name = "digosaurus-mineable-proxy",
    localised_name = "",
    localised_description = "",
    icon = item_icon,
    icon_size = 64,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selectable_in_game = false,
    remove_decoratives = "false",
    collision_mask = {layers = {}},
    hidden = true,
    flags = {"not-in-kill-statistics", "placeable-neutral", "not-selectable-in-game", "not-rotatable", "not-flammable", "placeable-off-grid", "hide-alt-info"},
    max_health = time_taken_for_digosaurus_to_mine,
    picture = {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1
    },
    attack_reaction = {{
        range = 150,
        action = {
            action_delivery = {
                source_effects = {sound},
                type = "instant"
            },
            type = "direct"
        }
    }}
}
