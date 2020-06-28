RECIPE {
  type = "recipe",
  name = "silo-2",
  energy_required = 10,
  enabled = false,
  ingredients = {
      {"super-steel", 100},
      {"concrete", 200},
      {"low-density-structure", 50},
      {"processing-unit", 20},
      {"divertor", 20},
      {"niobium-pipe", 100},
      {"small-parts-03", 500},
      {"py-local-radar", 1},
  },
  results = {
      {"silo-2", 1}
  }
}:add_unlock("space-program-mk01")

ITEM {
  type = "item",
  name = "silo-2",
  icon = "__pyalienlifegraphics2__/graphics/icons/launchpad-mk01.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-others",
  order = "a",
  place_result = "silo-2",
  stack_size = 10
}

ENTITY {
  type = "rocket-silo",
  name = "silo-2",
  icon = "__base__/graphics/icons/rocket-silo.png",
  icon_size = 64, icon_mipmaps = 4,
  flags = {"placeable-player", "player-creation"},
  crafting_categories = {"rocket-mk01"},
  rocket_parts_required = 3,
  crafting_speed = 1,
  rocket_result_inventory_size = 1,
  module_specification =
  {
    module_slots = 4,
    module_info_icon_shift = {0, 3.3}
  },
    fixed_recipe = "rocket-mk01-part",
    show_recipe_icon = false,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable = {mining_time = 1, result = "silo-2"},
    max_health = 5000,
    corpse = "rocket-silo-remnants",
    dying_explosion = "rocket-silo-explosion",
    collision_box = {{-5.80, -5.80}, {5.80, 5.80}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    --damaged_trigger_effect = hit_effects.entity(),
    hole_clipping_box = { {-2.75, -1.15}, {2.75, 2.25} },
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
    --vehicle_impact_sound = sounds.generic_impact,
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "250kW", --energy usage used when crafting the rocket
    idle_energy_usage = "10KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "3990KW",
    rocket_entity = "rocket-mk02",

    times_to_blink = 3,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 1 / (4.25 * 60),

    fluid_boxes = {
      --1
      {
          production_type = "input",
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-6,0.5}}}
      },
    },

    base_engine_light =
    {
      intensity = 1,
      size = 25,
      shift = {0, 1.5}
    },

    hole_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/hr-01-rocket-silo-hole.png",
      width = 400,
      height = 270,
      scale = 0.5,
      shift = util.by_pixel(-6, 16),
    },
    hole_light_sprite =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/hole-light.png",
      width = 400,
      height = 270,
      scale = 0.5,
      shift = util.by_pixel(-6, 16),
      tint = {1,1,1,0},
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-rocket-over-shadow-over-rocket.png",
      width = 212,
      height = 142,
      shift = util.by_pixel(-0, 22),
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/rocket-over-glow.png",
      blend_mode = "additive",
      width = 160,
      height = 222,
      shift = util.by_pixel(-0, 0),
    },

    door_back_sprite =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/door-top.png",
      width = 224,
      height = 96,
      shift = util.by_pixel(12, 0),
    },
    door_back_open_offset = {0.0, -1.8},
    door_front_sprite =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/door-bot.png",
      width = 224,
      height = 96,
      shift = util.by_pixel(16, 48),
    },
    door_front_open_offset = {0.0, 1.8},

    base_day_sprite ={
    layers = {
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/silo-base.png",
          width = 384,
          height = 604,
          shift = util.by_pixel(0, -112),
        },
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/silo-base-mask.png",
          width = 384,
          height = 604,
          shift = util.by_pixel(0, -112),
          tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
        },
      }
    },
    shadow_sprite =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/silo-sh.png",
      priority = "medium",
      width = 64,
      height = 604,
      draw_as_shadow = true,
      --slice = 2,
      shift = util.by_pixel(224, -112),
    },

    red_lights_back_sprites =
    {
      layers =
      {
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/luz.png",
          width = 64,
          height = 64,
          shift = util.by_pixel(-185, -231),
        },
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/luz.png",
          width = 64,
          height = 64,
          shift = util.by_pixel(-166, -243),
        },
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/luz.png",
          width = 64,
          height = 64,
          shift = util.by_pixel(-149, -256),
        },
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/luz.png",
          width = 64,
          height = 64,
          shift = util.by_pixel(-133, -263),
        },
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/luz.png",
          width = 64,
          height = 64,
          shift = util.by_pixel(-115, -273),
        },
      }
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/luz.png",
          width = 64,
          height = 64,
          shift = util.by_pixel(-64, 64),
        },
      }
    },

    satellite_animation =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/sat.png",
      priority = "medium",
      width = 96,
      height = 128,
      frame_count = 30,
      line_length = 6,
      animation_speed = 0.3,
      shift = util.by_pixel(138, -285),
    },

    arm_01_back_animation =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/arm-back.png",
      priority = "medium",
      width = 384,
      height = 96,
      frame_count = 16,
      run_mode = "backward",
      line_length = 4,
      animation_speed = 0.25,
      shift = util.by_pixel(-0, -270),
    },

    arm_02_right_animation =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/arm-right.png",
      priority = "medium",
      width = 288,
      height = 288,
      frame_count = 16,
      run_mode = "backward",
      line_length = 8,
      animation_speed = 0.25,
      shift = util.by_pixel(144, -80),
    },

    arm_03_front_animation =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/arm-left.png",
      priority = "medium",
      width = 192,
      height = 288,
      frame_count = 16,
      line_length = 8,
      run_mode = "backward",
      animation_speed = 0.25,
      shift = util.by_pixel(-96, -80),
    },

    base_front_sprite ={
    layers = {
          {
            filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/over.png",
            priority = "high",
            width = 384,
            height = 604,
            shift = util.by_pixel(-0, -112),
          },
          {
            filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/over-mask.png",
            priority = "high",
            width = 384,
            height = 604,
            shift = util.by_pixel(-0, -112),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
          },
        }
      },
    silo_fade_out_start_distance = 8,
    silo_fade_out_end_distance = 15,

    alarm_sound =
    {
      filename = "__pyalienlifegraphics2__/sounds/alarm.ogg",
      volume = 0.8
    },
    clamps_on_sound =
    {
      filename = "__base__/sound/silo-clamps-on.ogg",
      volume = 1.0
    },
    clamps_off_sound =
    {
      filename = "__base__/sound/silo-clamps-off.ogg",
      volume = 0.8
    },
    doors_sound =
    {
      filename = "__pyalienlifegraphics2__/sounds/door.ogg",
      volume = 0.8
    },
    raise_rocket_sound =
    {
      filename = "__pyalienlifegraphics2__/sounds/raise.ogg",
      volume = 0.9
    },
    --open_sound = sounds.machine_open,
    --close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/rocket-silo-working-1.ogg",
        volume = 1.2
      },
    },
    flying_sound =
    {
      filename = "__pyalienlifegraphics2__/sounds/rocket.ogg",
      volume = 1.1,
      audible_distance_modifier = 3,
    }
}