local sounds = require('__base__.prototypes.entity.sounds'
)

ENTITY{
    type = 'assembling-machine',
    name = 'crash-site-lab-repaired',
    icon = '__pyalienlifegraphics3__/graphics/icons/crash-site-lab-repaired.png',
    icon_size = 64,

    flags = {'not-deconstructable', 'hidden'},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 150,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-2.2, -1.2}, {2.2, 1.2}},
    selection_box = {{-2.5, -1.5}, {2.5, 1.5}},
    entity_info_icon_shift = util.by_pixel(32, 0
    ),
    light = {intensity = 0.9, size = 12, color = {r = 1.0, g = 1.0, b = 1.0}, shift = {1.5, 0.5}},
    integration_patch_render_layer = 'decals',
    integration_patch = {
        filename = "__pyalienlifegraphics3__/graphics/entity/crash-site-lab/crash-site-lab-ground.png",
        priority = crash_site_sprite_priority,
        width = 352,
        height = 170,
        shift = util.by_pixel(-48, 12),
        frame_count = 1,
        line_length = 1,
        hr_version =
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/crash-site-lab/hr-crash-site-lab-ground.png",
          priority = crash_site_sprite_priority,
          width = 700,
          height = 344,
          shift = util.by_pixel(-49, 11),
          frame_count = 1,
          line_length = 1,
          scale = 0.5
        }
      },
    working_visualisations = {
        {
            animation = {
                layers = {
                    {
                        filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/crash-site-lab-repaired.png',
                        priority = crash_site_sprite_priority,
                        width = 244,
                        height = 126,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 24,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(-18, 14
                        ),
                        hr_version = {
                            filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/hr-crash-site-lab-repaired.png',
                            priority = crash_site_sprite_priority,
                            width = 488,
                            height = 252,
                            frame_count = 1,
                            line_length = 1,
                            repeat_count = 24,
                            animation_speed = 1 / 3,
                            shift = util.by_pixel(-18, 14
                            ),
                            scale = 0.5
                        }
                    }, {
                        filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/crash-site-lab-repaired-beams.png',
                        priority = crash_site_sprite_priority,
                        width = 68,
                        height = 50,
                        frame_count = 24,
                        line_length = 6,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(36, -20
                        ),
                        blend_mode = 'additive',
                        hr_version = {
                            filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/hr-crash-site-lab-repaired-beams.png',
                            priority = crash_site_sprite_priority,
                            width = 130,
                            height = 100,
                            frame_count = 24,
                            line_length = 6,
                            animation_speed = 1 / 3,
                            shift = util.by_pixel(37, -20
                            ),
                            blend_mode = 'additive',
                            scale = 0.5
                        }
                    }, {
                        filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/crash-site-lab-repaired-shadow.png',
                        priority = crash_site_sprite_priority,
                        width = 350,
                        height = 148,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 24,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(-12, 12
                        ),
                        draw_as_shadow = true,
                        hr_version = {
                            filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/hr-crash-site-lab-repaired-shadow.png',
                            priority = crash_site_sprite_priority,
                            width = 696,
                            height = 302,
                            frame_count = 1,
                            line_length = 1,
                            repeat_count = 24,
                            animation_speed = 1 / 3,
                            shift = util.by_pixel(-11, 12
                            ),
                            scale = 0.5,
                            draw_as_shadow = true
                        }
                    }
                }
            }
        }
    },
    animation = {
        layers = {
            {
                filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/crash-site-lab-repaired.png',
                priority = crash_site_sprite_priority,
                width = 244,
                height = 126,
                frame_count = 1,
                line_length = 1,
                repeat_count = 24,
                animation_speed = 1 / 3,
                shift = util.by_pixel(-18, 14
                ),
                hr_version = {
                    filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/hr-crash-site-lab-repaired.png',
                    priority = crash_site_sprite_priority,
                    width = 488,
                    height = 252,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 24,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-18, 14
                    ),
                    scale = 0.5
                }
            }, {
                filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/crash-site-lab-repaired-shadow.png',
                priority = crash_site_sprite_priority,
                width = 350,
                height = 148,
                frame_count = 1,
                line_length = 1,
                repeat_count = 24,
                animation_speed = 1 / 3,
                shift = util.by_pixel(-12, 12
                ),
                draw_as_shadow = true,
                hr_version = {
                    filename = '__pyalienlifegraphics3__/graphics/entity/crash-site-lab/hr-crash-site-lab-repaired-shadow.png',
                    priority = crash_site_sprite_priority,
                    width = 696,
                    height = 302,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 24,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-11, 12
                    ),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    working_sound = {
        sound = {filename = '__base__/sound/lab.ogg', volume = 0.7},
        audible_distance_modifier = 0.7,
        fade_in_ticks = 4,
        fade_out_ticks = 20
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    crafting_categories = {"data-array", "creature-chamber", "vrauk-rendering", "latex"},
    crafting_speed = 0.1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "500kW",
}
