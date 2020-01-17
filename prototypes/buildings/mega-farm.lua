
RECIPE {
    type = "recipe",
    name = "mega-farm",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"concrete", 200},
        {"niobium-pipe", 35},
        {"electronic-circuit", 25},
        {"stone", 100},
        {"iron-plate", 30},
        {"duralumin", 10},
        {"treated-wood", 50},
        {"small-lamp", 20}
    },
    results = {
        {"mega-farm", 1}
    }
}:add_unlock("mega-farm")

ITEM {
    type = "item",
    name = "mega-farm",
    icon = "__pyalienlife__/graphics/icons/mega-farm-ralesia.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farms",
    order = "a",
    place_result = "mega-farm",
    stack_size = 10
}

ENTITY {
    type = "rocket-silo",
    name = "mega-farm",
    icon = "__pyalienlife__/graphics/icons/mega-farm-ralesia.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    crafting_categories = {"ralesia-farm","rennea-farm","tuuphra-farm","grod-farm","yotoi-farm","kicalk-farm","arum-farm","bioreserve-farm"},
    rocket_parts_required = 1,
    crafting_speed = 1,
    rocket_result_inventory_size = 1,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 3.3}
    },
    --fixed_recipe = "rocket-part",
    show_recipe_icon = true,
    allowed_effects = {"consumption", "speed"},
    minable = {mining_time = 1, result = "mega-farm"},
    max_health = 5000,
    dying_explosion = "medium-explosion",
    corpse = "rocket-silo-generic-remnants",
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    hole_clipping_box = { {-0.5, -0.5}, {0.5, 0.5} },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	fluid_boxes = {
        --1
        {
          production_type = "input",
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {4.0, 0.0}}},
          priority = "extra-high"
      },
      {
        production_type = "input",
        pipe_covers = DATA.Pipes.covers(false, true, true, true),
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-4.0, 0.0}}},
        priority = "extra-high"
    },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "650kW", --energy usage used when crafting the rocket
    idle_energy_usage = "150KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "3990KW",
    rocket_entity = "mega-farm-invisa-rocket",

    times_to_blink = 1,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 1 / (4.25 * 60),
    base_engine_light =
    {
      intensity = 0,
      size = 25,
      shift = {0, 1.5}
    },

    shadow_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      shift = util.by_pixel(0, -0),
    },
    
    hole_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
    },
    hole_light_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
    },


    door_back_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
    },
    door_back_open_offset = {1.8, -1.8 * 0.43299225},
    door_front_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
    },
    door_front_open_offset = {-1.8, 1.8 * 0.43299225},

    base_day_sprite =
    {
      layers = {
        {
        filename = "__pyalienlife__/graphics/entity/mega-farm/farm/bot.png",
        width = 288,
        height = 64,
        frame_count = 100,
        line_length = 7,
        animation_speed = 0.3,
        shift = util.by_pixel(32, 112),
        },
      }
  },
	
    base_front_sprite =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
    },
    red_lights_back_sprites =
    {
        filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
        width = 32,
        height = 32,
        --slice = 2,
        shift = util.by_pixel(0, 0),
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
          width = 32,
          height = 32,
          --slice = 2,
          shift = util.by_pixel(0, 0),
        },
      }
    },
    satellite_animation =
    {
    layers = {
            {
            filename = "__pyalienlife__/graphics/entity/mega-farm/farm/a1.png",
            width = 128,
            height = 288,
            frame_count = 100,
            line_length = 16,
            animation_speed = 0.15,
            shift = util.by_pixel(-48, -64),
            },
            {
              filename = "__pyalienlife__/graphics/entity/mega-farm/farm/a2.png",
              width = 128,
              height = 288,
              frame_count = 100,
              line_length = 16,
              animation_speed = 0.15,
              shift = util.by_pixel(80, -64),
              },
              {
                filename = "__pyalienlife__/graphics/entity/mega-farm/farm/a3.png",
                width = 32,
                height = 288,
                frame_count = 100,
                line_length = 16,
                animation_speed = 0.15,
                shift = util.by_pixel(160, -64),
                },  
    }
  },

    arm_01_back_animation =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      shift = util.by_pixel(0, 0),
    },

    arm_02_right_animation =
    {
        filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
        width = 32,
        height = 32,
        frame_count = 1,
        line_length = 1,
        animation_speed = 1,
        shift = util.by_pixel(0, 0),
    },

    arm_03_front_animation =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      shift = util.by_pixel(0, 0),
    },

    silo_fade_out_start_distance = 8,
    silo_fade_out_end_distance = 15,

    alarm_sound =
    {
      filename = "__base__/sound/silo-alarm.ogg",
      volume = 1.0
    },
    clamps_on_sound =
    {
      filename = "__base__/sound/silo-clamps-on.ogg",
      volume = 1.0
    },
    clamps_off_sound =
    {
      filename = "__base__/sound/silo-clamps-off.ogg",
      volume = 1.0
    },
    doors_sound =
    {
      filename = "__base__/sound/silo-doors.ogg",
      volume = 1.0
    },
    raise_rocket_sound =
    {
      filename = "__base__/sound/silo-raise-rocket.ogg",
      volume = 1.0
    },
    flying_sound =
    {
      filename = "__base__/sound/silo-rocket.ogg",
      volume = 1.0
    }

  }

ENTITY {
    type = "rocket-silo-rocket",
    name = "mega-farm-invisa-rocket",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{-2, -7}, {2, 4}},
    selection_box = {{0, 0}, {0, 0}},
    dying_explosion = "massive-explosion",
    shadow_slave_entity = "rocket-silo-rocket-shadow",
    inventory_size = 1,
    rising_speed = 1,
    engine_starting_speed = 1,
    flying_speed = 1,
    flying_acceleration = 1,

    glow_light =
    {
      intensity = 1,
      size = 30,
      shift = {0, 1.5},
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    rocket_sprite = util.add_shift_offset(util.by_pixel(0, 32*3.5), --util.mul_shift(rocket_rise_offset, -1),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      shift = util.by_pixel(0, -0),
    }),

    rocket_shadow_sprite = util.add_shift_offset(util.by_pixel(-146, -120),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      width = 32,
      height = 32,
      draw_as_shadow = true,
    }),

    rocket_glare_overlay_sprite = util.add_shift_offset(util.by_pixel(0, 112+112),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      blend_mode = "additive",
      width = 32,
      height = 32,
    }),
    rocket_smoke_top1_animation = util.add_shift_offset(util.by_pixel(0-66, -112+28+232+32),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),
    rocket_smoke_top2_animation = util.add_shift_offset(util.by_pixel(0+17, -112+28+265+32),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),
    rocket_smoke_top3_animation = util.add_shift_offset(util.by_pixel(0+48, -112+28+252+32),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),

    rocket_smoke_bottom1_animation = util.add_shift_offset(util.by_pixel(0-69, -112+28+205+32),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),
    rocket_smoke_bottom2_animation = util.add_shift_offset(util.by_pixel(0+62, -112+28+207+32),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),
    rocket_flame_animation = util.add_shift_offset(util.by_pixel(-1, 280-16),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),
    rocket_flame_left_animation = util.add_shift_offset(util.by_pixel(-32-28+3, 280-68+1),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),
    rocket_flame_left_rotation = 0,

    rocket_flame_right_animation = util.add_shift_offset(util.by_pixel(32+16, 280-50),
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 1,
      scale = 1.5*1.3,
    }),
    rocket_flame_right_rotation = 0,

    rocket_initial_offset = {0, 0},
    rocket_rise_offset = {0, 0},
    rocket_launch_offset = {0, 0},
    rocket_render_layer_switch_distance = 0,
    full_render_layer_switch_distance = 0,
    effects_fade_in_start_distance = 0,
    effects_fade_in_end_distance = 0,
    shadow_fade_out_start_ratio = 0,
    shadow_fade_out_end_ratio = 0,
    rocket_visible_distance_from_center = 0,
  }