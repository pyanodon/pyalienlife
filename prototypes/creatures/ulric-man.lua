local movement_triggers = require "__base__.prototypes.entity.movement-triggers"

local idle = {
    layers = {
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-1.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-2.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-3.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-4.png"
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 160,
            height = 192,
            frame_count = 50,
            direction_count = 8,
            animation_speed = 0.25,
            shift = util.mul_shift(util.by_pixel(-0, -20)),
            scale = 0.7
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-1-mask.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-2-mask.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-3-mask.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-4-mask.png"
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 160,
            height = 192,
            frame_count = 50,
            direction_count = 8,
            animation_speed = 0.25,
            shift = util.mul_shift(util.by_pixel(-0, -20)),
            scale = 0.7,
            apply_runtime_tint = true,
            tint = {a = 0.2}
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-01.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-02.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-03.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-04.png"
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 192,
            height = 128,
            frame_count = 50,
            direction_count = 8,
            animation_speed = 0.25,
            shift = util.mul_shift(util.by_pixel(25, 10)),
            scale = 0.7,
            draw_as_shadow = true
        }
    }
}

local running = {
    layers = {
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-02.png"
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 224,
            height = 224,
            frame_count = 20,
            direction_count = 8,
            animation_speed = 0.3,
            shift = util.mul_shift(util.by_pixel(-0, -20)),
            scale = 0.7
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-02-mask.png"
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 224,
            height = 224,
            frame_count = 20,
            direction_count = 8,
            animation_speed = 0.3,
            shift = util.mul_shift(util.by_pixel(-0, -20)),
            scale = 0.7,
            apply_runtime_tint = true,
            tint = {a = 0.5}
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-02-sh.png"
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 224,
            height = 160,
            frame_count = 20,
            direction_count = 8,
            animation_speed = 0.3,
            shift = util.mul_shift(util.by_pixel(15, -8)),
            scale = 0.7,
            draw_as_shadow = true
        }
    }
}

local attack = {
    layers = {
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-01.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-02.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-03.png",
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 288,
            height = 256,
            frame_count = 30,
            direction_count = 8,
            animation_speed = 0.45,
            shift = util.mul_shift(util.by_pixel(-0, -20)),
            scale = 0.75,
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-01-mask.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-02-mask.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-03-mask.png",
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 288,
            height = 256,
            frame_count = 30,
            direction_count = 8,
            animation_speed = 0.45,
            shift = util.mul_shift(util.by_pixel(-0, -20)),
            scale = 0.75,
            apply_runtime_tint = true,
            tint = {a = 0.5}
        },
        {
            filenames = {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-01-sh.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-02-sh.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/attack-03-sh.png",
            },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 320,
            height = 224,
            frame_count = 30,
            direction_count = 8,
            animation_speed = 0.45,
            shift = util.mul_shift(util.by_pixel(22, 34)),
            scale = 0.75,
            draw_as_shadow = true,
        },
    }
}

data:extend
{
    {
        type = "optimized-particle",
        name = "ulric-character-footprint-particle",
        render_layer = "decals",
        render_layer_when_on_ground = "decals",
        life_time = 600,
        fade_away_duration = 125,
        pictures = {
            sheet = {
                filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/footprints.png",
                line_length = 2,
                frame_count = 2,
                width = 30,
                height = 22,
                shift = util.by_pixel(0.25, 0.25 + 5),
                variation_count = 8,
                scale = 1
            }
        }
    },
    {
        type = "character",
        name = "ulric-man",
        icon = "__pyalienlifegraphics2__/graphics/icons/ulric-infusion.png",
        icon_size = 64,
        localised_name = {"item-name.ulric-infusion"},
        flags = {"placeable-off-grid", "breaths-air", "not-repairable", "not-on-map", "not-flammable"},
        alert_when_damaged = false,
        resistances = {
            {
                type = "impact",
                percent = 100
            },
            {
                type = "acid",
                percent = 80
            }
        },
        max_health = data.raw.character.character.max_health * 5,
        healing_per_tick = data.raw.character.character.healing_per_tick * 5,
        collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
        selection_box = {{-0.4, -1.4}, {0.4, 0.2}},
        hit_visualization_box = {{-0.2, -1.1}, {0.2, 0.2}},
        sticker_box = {{-0.2, -1}, {0.2, 0}},
        crafting_categories = {"crafting"},
        mining_categories = {"basic-solid"},
        character_corpse = "ulric-man-corpse",
        inventory_size = data.raw.character.character.inventory_size + 40,
        build_distance = data.raw.character.character.build_distance * 3,
        drop_item_distance = data.raw.character.character.drop_item_distance * 3,
        reach_distance = data.raw.character.character.reach_distance * 3,
        item_pickup_distance = data.raw.character.character.item_pickup_distance * 3,
        loot_pickup_distance = data.raw.character.character.loot_pickup_distance * 3,
        enter_vehicle_distance = data.raw.character.character.enter_vehicle_distance * 3,
        reach_resource_distance = 2.7,
        ticks_to_keep_gun = 600,
        ticks_to_keep_aiming_direction = 100,
        --ticks you need to wait after firing a weapon or taking damage to get out of combat and get healed
        ticks_to_stay_in_combat = 0,
        damage_hit_tint = {r = 1, g = 0, b = 0, a = 0},
        running_speed = data.raw.character.character.running_speed * 1.4,
        distance_per_frame = 0.23,
        maximum_corner_sliding_distance = 0.7,
        subgroup = "creatures",
        order = "a",
        eat = {
            {
                filename = "__base__/sound/eat-5.ogg",
                volume = 1
            }
        },
        heartbeat = {
            {
                filename = "__base__/sound/heartbeat.ogg"
            }
        },
        tool_attack_result = {
            {
                radius = 3.5,
                type = "area",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        type = "damage",
                        damage = {amount = 1400, type = "impact"}
                    },
                }
            },
            {
                action_delivery = {
                    target_effects = {{
                        sound = data.raw.capsule["cluster-grenade"].capsule_action.attack_parameters.ammo_type.action[2].action_delivery.target_effects[1].sound,
                        type = "play-sound"
                    }},
                    type = "instant"
                },
                type = "direct"
            }
        },
        animations = {
            {
                idle = idle,
                idle_with_gun = idle,
                mining_with_tool = attack,
                running_with_gun = {
                    layers = {
                        {
                            stripes = {
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 1792, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 1792, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png", y = 1792, x = 0},
                            },
                            slice = 10,
                            line_length = 10,
                            width = 224,
                            height = 224,
                            frame_count = 20,
                            direction_count = 18,
                            animation_speed = 0.3,
                            shift = util.mul_shift(util.by_pixel(-0, -20)),
                            scale = 0.7
                        },
                        {
                            stripes = {
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 448,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 896,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 1344, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 1792, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 1792, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-mask.png", y = 1792, x = 0},
                            },
                            slice = 10,
                            line_length = 10,
                            width = 224,
                            height = 224,
                            frame_count = 20,
                            direction_count = 18,
                            animation_speed = 0.3,
                            shift = util.mul_shift(util.by_pixel(-0, -20)),
                            scale = 0.7,
                            apply_runtime_tint = true,
                            tint = {a = 0.5}
                        },
                        {
                            stripes = {
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 0,    x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 320,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 320,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 320,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 320,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 640,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 640,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 640,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 640,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 960,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 960,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 960,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 960,  x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 1280, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 1280, x = 0},
                                {width_in_frames = 10, height_in_frames = 2, filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png", y = 1280, x = 0},
                            },
                            slice = 10,
                            line_length = 10,
                            width = 224,
                            height = 160,
                            frame_count = 20,
                            direction_count = 8,
                            animation_speed = 0.3,
                            shift = util.mul_shift(util.by_pixel(15, -8)),
                            scale = 0.7,
                            draw_as_shadow = true
                        },
                    }
                },
                running = running
            }
        },
        light = {
            {
                minimum_darkness = 0.3,
                intensity = 0.6,
                size = 50,
                color = {r = 1.0, g = 1.0, b = 1.0}
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
                shift = {0, -11 * 1.5 - 4},
                size = 3,
                intensity = 0.8,
                color = {r = 1.0, g = 1.0, b = 1.0}
            }
        },
        mining_speed = 10000,
        mining_with_tool_particles_animation_positions = {19},
        running_sound_animation_positions = {5, 16},
        moving_sound_animation_positions = {5, 16},
        synced_footstep_particle_triggers = movement_triggers.character,
        footprint_particles = {
            {
                tiles = {
                    "dry-dirt",
                    "dirt-1",
                    "dirt-2",
                    "dirt-3",
                    "dirt-4",
                    "dirt-5",
                    "dirt-6",
                    "dirt-7",
                    "sand-1",
                    "sand-2",
                    "sand-3",
                    "red-desert-0",
                    "red-desert-1",
                    "red-desert-2",
                    "red-desert-3",
                    "landfill"
                },
                particle_name = "ulric-character-footprint-particle"
            },
            -- no particle by default so that both (synced_)footstep_particle_triggers are consistently not defined for tiles by default
            {
                tiles = {},
                use_as_default = true,
                particle_name = nil
            }
        },
        right_footprint_frames = {10, 21},
        left_footprint_frames = {5, 16}, --{ 5 },
        right_footprint_offset = {0.1, 0},
        left_footprint_offset = {-0.1, 0},
        water_reflection = {
            pictures = {
                filename = "__base__/graphics/entity/character/character-reflection.png",
                priority = "extra-high",
                -- flags = { 'linear-magnification', 'not-compressed' },
                -- default value: flags = { 'terrain-effect-map' },
                width = 13,
                height = 19,
                shift = util.by_pixel(0, 67 * 0.5),
                scale = 5,
                variation_count = 1
            },
            rotate = false,
            orientation_to_variation = false
        }
    }
}


ENTITY {
    type = "character-corpse",
    name = "ulric-man-corpse",
    icon = "__pyalienlifegraphics3__/graphics/entity/ulric-man/corpse.png",
    icon_size = 64,
    minable = {mining_time = 2},
    time_to_live = 15 * 60 * 60, -- 15 minutes
    selection_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_priority = 100,    -- 0-255 value with 255 being on-top of everything else
    flags = {"placeable-off-grid", "not-rotatable", "not-on-map"},
    open_sound = {filename = "__base__/sound/character-corpse-open.ogg", volume = 0.5},
    close_sound = {filename = "__base__/sound/character-corpse-close.ogg", volume = 0.5},
    picture = {
        layers = {
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/corpse.png",
                width = 224,
                height = 224,
                shift = util.by_pixel(-7.0, -5.0),
                frame_count = 2
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/corpse-mask.png",
                width = 224,
                height = 224,
                shift = util.by_pixel(-7.0, -5.0),
                frame_count = 2,
                apply_runtime_tint = true,
                tint = {a = 0.5}
            },
        }
    },
    localised_name = {"entity-name.character-corpse"}
}

ITEM {
    type = "capsule",
    name = "ulric-infusion",
    icon = "__pyalienlifegraphics2__/graphics/icons/ulric-infusion.png",
    icon_size = 64,
    subgroup = "py-alienlife-ulric",
    order = "y[symbiosis]-a[ulric-infusion]",
    stack_size = 50,
    capsule_action = {
        type = "throw",
        attack_parameters = {
            type = "stream",
            range = 99999,
            cooldown = 60,
            ammo_category = "ulric-infusion",
            ammo_type = {
                category = "caravan-control",
                target_type = "position",
            }
        }
    }
}

data:extend {{
    type = "ammo-category",
    name = "ulric-infusion",
}}

data:extend {{
    type = "movement-bonus-equipment",
    name = "ulric-infusion-equipment",
    localised_name = {"item-name.ulric-infusion-equipment"},
    localised_description = {"item-description.ulric-infusion-equipment"},
    energy_consumption = "120kW",
    movement_bonus = 0,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input"
    },
    categories = {"armor"},
    shape = {type = "full", width = 2, height = 2},
    sprite = {
        width = 64,
        height = 64,
        filename = "__pyalienlifegraphics3__/graphics/icons/ulric-infusion-equipment.png"
    }
}}

ITEM {
    type = "item",
    name = "ulric-infusion-equipment",
    icon = "__pyalienlifegraphics3__/graphics/icons/ulric-infusion-equipment.png",
    icon_size = 64,
    subgroup = "py-alienlife-ulric",
    order = "y[symbiosis]-b[ulric-infusion-equipment]",
    stack_size = 10,
    place_as_equipment_result = "ulric-infusion-equipment"
}

RECIPE {
    type = "recipe",
    name = "ulric-infusion-equipment",
    energy_required = 10,
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "flask",               amount = 1},
        {type = "item", name = "quartz-tube",         amount = 2},
        {type = "item", name = "stopper",             amount = 2},
        {type = "item", name = "small-electric-pole", amount = 1},
    },
    results = {
        {type = "item", name = "ulric-infusion-equipment", amount = 1}
    }
}:add_unlock("symbiosis-mk01")

RECIPE {
    type = "recipe",
    name = "ulric-infusion",
    category = "genlab",
    enabled = false,
    energy_required = 1200,
    ingredients = {
        {type = "item",  name = "skin",                  amount = 100},
        {type = "item",  name = "paragen",               amount = 1},
        {type = "item",  name = "retrovirus",            amount = 2},
        {type = "item",  name = "cdna",                  amount = 1},
        {type = "item",  name = "earth-horse-sample",    amount = 1},
        {type = "fluid", name = "xenogenic-cells",       amount = 100},
        {type = "fluid", name = "xylenol",               amount = 100},
        {type = "fluid", name = "flavonoids",            amount = 5},
        {type = "item",  name = "neuroprocessor",        amount = 1},
        {type = "item",  name = "ulric-mk02-dna-sample", amount = 6},
        {type = "item",  name = "energy-drink",          amount = 1},
    },
    results = {
        {type = "item", name = "ulric-infusion", amount = 1},
    },
}:add_unlock("symbiosis-mk01")

data:extend {{
    type = "sound",
    name = "ulric-man-transform",
    filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/ulric-man-transform.ogg",
    aggregation = {
        max_count = 1,
        remove = false
    },
    category = "alert",
    volume = 2
}}

data:extend {{
    type = "sound",
    name = "ulric-man-untransform",
    filename = "__pyalienlifegraphics3__/graphics/entity/ulric-man/ulric-man-untransform.wav",
    aggregation = {
        max_count = 1,
        remove = false
    },
    category = "alert"
}}
