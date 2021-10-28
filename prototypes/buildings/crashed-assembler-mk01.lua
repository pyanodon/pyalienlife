local sounds = require('__base__.prototypes.entity.sounds')

ENTITY{
    type = 'assembling-machine',
    name = 'crash-site-assembling-machine-1-repaired',
    icon = '__pyalienlifegraphics3__/graphics/icons/crash-site-assembling-machine-1-repaired.png',
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {'not-deconstructable', 'hidden', 'not-rotatable'},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 300,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    resistances = {{type = 'fire', percent = 70}},
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    minable =
    {
        mining_time = 0.5,
        results =
        {
            {name = 'electronic-circuit', amount = 100},
            {name = 'iron-plate', amount = 50},
            {name = 'duralumin', amount = 50}
        }
    },
    alert_icon_shift = util.by_pixel(-3, -12),
    integration_patch_render_layer = 'decals',
    integration_patch = {
        filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/crash-site-assembling-machine-1-ground.png',
        priority = 'very-low',
        width = 208,
        height = 116,
        shift = util.by_pixel(-24, 12),
        frame_count = 1,
        line_length = 1,
        hr_version = {
            filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/hr-crash-site-assembling-machine-1-ground.png',
            priority = 'very-low',
            width = 446,
            height = 234,
            shift = util.by_pixel(-31, 12),
            frame_count = 1,
            line_length = 1,
            scale = 0.5
        }
    },

    animation = {
        layers = {
            {
                filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/crash-site-assembling-machine-1-repaired.png',
                priority = 'very-low',
                width = 142,
                height = 92,
                frame_count = 20,
                line_length = 5,
                shift = util.by_pixel(-12, 2),
                animation_speed = 2,
                hr_version = {
                    filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/hr-crash-site-assembling-machine-1-repaired.png',
                    priority = 'very-low',
                    width = 282,
                    height = 182,
                    frame_count = 20,
                    line_length = 5,
                    shift = util.by_pixel(-12, 3),
                    animation_speed = 2,
                    scale = 0.5
                }
            }, {
                filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/crash-site-assembling-machine-1-repaired-shadow.png',
                priority = 'very-low',
                width = 140,
                height = 84,
                frame_count = 20,
                line_length = 5,
                draw_as_shadow = true,
                shift = util.by_pixel(4, 6),
                animation_speed = 2,
                hr_version = {
                    filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/hr-crash-site-assembling-machine-1-repaired-shadow.png',
                    priority = 'very-low',
                    width = 278,
                    height = 168,
                    frame_count = 20,
                    line_length = 5,
                    draw_as_shadow = true,
                    shift = util.by_pixel(4, 6),
                    animation_speed = 2,
                    scale = 0.5
                }
            }
        }
    },
    working_visualisations = {
        {
            animation = {
                filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/crash-site-assembling-machine-1-repaired-light.png',
                priority = 'very-low',
                width = 78,
                height = 64,
                frame_count = 20,
                line_length = 5,
                shift = util.by_pixel(10, -10),
                blend_mode = 'additive',
                animation_speed = 2,
                hr_version = {
                    filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-assembling-machine/hr-crash-site-assembling-machine-1-repaired-light.png',
                    priority = 'very-low',
                    width = 162,
                    height = 120,
                    frame_count = 20,
                    line_length = 5,
                    shift = util.by_pixel(12, -8),
                    blend_mode = 'additive',
                    animation_speed = 2,
                    scale = 0.5
                }
            }
        }
    },
    crafting_categories = {'crafting', 'basic-crafting', 'advanced-crafting', 'handcrafting', 'vrauk-rendering'},
    crafting_speed = 0.3,
    energy_source = {type = 'electric', usage_priority = 'secondary-input', emissions_per_minute = 4},
    energy_usage = '90kW',
    -- ingredient_count = 2,
    open_sound = {filename = '__base__/sound/machine-open.ogg', volume = 0.85},
    close_sound = {filename = '__base__/sound/machine-close.ogg', volume = 0.75},
    fluid_boxes =
    {
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "output", position = {-1, 2}}}
        },
      off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    working_sound = {
        sound = {{filename = '__pyalienlifegraphics3__/sounds/assembling-machine-repaired-1.ogg', volume = 0.8}}
        -- idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
        -- max_sounds_per_type = 2,
    }
}
