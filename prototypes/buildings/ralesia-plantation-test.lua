
RECIPE {
    type = "recipe",
    name = "ralesia-plantation-test",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"soil", 300},
        {"pipe", 15}, --bob steel pipe
        {"electronic-circuit", 25}, --bob basic-electronic-circuit-board
        {"stone", 100}, --bob glass
        {"iron-plate", 30},
        {"duralumin", 10},
        {"treated-wood", 50},
        {"small-lamp", 20}
    },
    results = {
        {"ralesia-plantation-test", 1}
    }
}:add_unlock("ralesia")

ITEM {
    type = "item",
    name = "ralesia-plantation-test",
    icon = "__pyalienlife__/graphics/icons/mega-farm-ralesia.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "ralesia-plantation-test",
    stack_size = 10
}

data:extend({
{
    type = "rocket-silo",
    name = "ralesia-plantation-test",
    icon = "__pyalienlife__/graphics/icons/mega-farm-ralesia.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    crafting_categories = {"ralesia-farm"},
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
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable = {mining_time = 1, result = "ralesia-plantation-test"},
    max_health = 5000,
    dying_explosion = "medium-explosion",
    corpse = "rocket-silo-generic-remnants",
    collision_box = {{-4.40, -4.40}, {4.40, 4.40}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
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
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.5}}}
        },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "250kW", --energy usage used when crafting the rocket
    idle_energy_usage = "10KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "3990KW",
    rocket_entity = "rocket-silo-rocket",

    times_to_blink = 3,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 1 / (4.25 * 60),

    --base_light =
    --{
    --  {
    --    type = "oriented",
    --    picture =
    --    {
    --      filename = "__core__/graphics/light-cone.png",
    --      priority = "extra-high",
    --      flags = { "light" },
    --      scale = 2,
    --      width = 200,
    --      height = 200
    --    },
    --    shift = {0.25, 1.25},
    --    size = 1,
    --    intensity = 1,
    --    rotation_shift = 0.6,
    --    color = {r = 0.7, g = 0.9, b = 1.0}
    --  },
    --  {
    --    type = "oriented",
    --    picture =
    --    {
    --      filename = "__core__/graphics/light-cone.png",
    --      priority = "extra-high",
    --      flags = { "light" },
    --      scale = 2,
    --      width = 200,
    --      height = 200
    --    },
    --    shift = {-0.25, 1},
    --    size = 1,
    --    intensity = 1,
    --    rotation_shift = 0.5,
    --    color = {r = 0.7, g = 0.9, b = 1.0}
    --  }
    --},
    base_engine_light =
    {
      intensity = 1,
      size = 25,
      shift = {0, 1.5}
    },

    shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-rocket-silo-shadow.png",
      priority = "medium",
      width = 304,
      height = 290,
      draw_as_shadow = true,
      slice = 2,
      shift = util.by_pixel(8, 2),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-00-rocket-silo-shadow.png",
        priority = "medium",
        width = 612,
        height = 578,
        draw_as_shadow = true,
        slice = 2,
        shift = util.by_pixel(7, 2),
        scale = 0.5
      },
    },
    --satellite_shadow_animation =
    --{
    --  filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-satellite-shadow.png",
    --  priority = "medium",
    --  width = 44,
    --  height = 22,
    --  frame_count = 12,
    --  line_length = 4,
    --  animation_speed = 0.25,
    --  draw_as_shadow = true,
    --  shift = {7.875, -2.1875},
    --  hr_version =
    --  {
    --    filename = "__base__/graphics/entity/rocket-silo/00-shadow/hr-00-satellite-shadow.png",
    --    priority = "medium",
    --    width = 44,
    --    height = 22,
    --    frame_count = 12,
    --    line_length = 4,
    --    animation_speed = 0.25,
    --    draw_as_shadow = true,
    --    shift = {7.875, -2.1875},
    --    scale = 0.5
    --  }
    --},

    hole_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-rocket-silo-hole.png",
      width = 202,
      height = 136,
      shift = util.by_pixel(-6, 16),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-01-rocket-silo-hole.png",
        width = 400,
        height = 270,
        shift = util.by_pixel(-5, 16),
        scale = 0.5
      }
    },
    hole_light_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-rocket-silo-hole-light.png",
      width = 202,
      height = 136,
      shift = util.by_pixel(-6, 16),
      tint = {1,1,1,0},
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-01-rocket-silo-hole-light.png",
        width = 400,
        height = 270,
        shift = util.by_pixel(-5, 16),
        tint = {1,1,1,0},
        scale = 0.5
      }
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-rocket-over-shadow-over-rocket.png",
      width = 212,
      height = 142,
      shift = util.by_pixel(-2, 22),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-03-rocket-over-shadow-over-rocket.png",
        width = 426,
        height = 288,
        shift = util.by_pixel(-2, 21),
        scale = 0.5
      }
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-rocket-over-glow.png",
      blend_mode = "additive",
      width = 218,
      height = 222,
      shift = util.by_pixel(-4, 36),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-03-rocket-over-glow.png",
        blend_mode = "additive",
        width = 434,
        height = 446,
        shift = util.by_pixel(-3, 36),
        scale = 0.5
      }
    },


    door_back_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-door-back.png",
      width = 158,
      height = 144,
      shift = util.by_pixel(36, 12),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-04-door-back.png",
        width = 312,
        height = 286,
        shift = util.by_pixel(37, 12),
        scale = 0.5
      }
    },
    door_back_open_offset = {1.8, -1.8 * 0.43299225},
    door_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/05-door-front.png",
      width = 166,
      height = 152,
      shift = util.by_pixel(-28, 32),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-05-door-front.png",
        width = 332,
        height = 300,
        shift = util.by_pixel(-28, 33),
        scale = 0.5
      }
    },
    door_front_open_offset = {-1.8, 1.8 * 0.43299225},

    base_day_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-rocket-silo.png",
      width = 300,
      height = 300,
      shift = util.by_pixel(2, -2),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-06-rocket-silo.png",
        width = 608,
        height = 596,
        shift = util.by_pixel(3, -1),
        scale = 0.5
      }
    },
    --base_night_sprite =
    --{
    --  filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-night.png",
    --  width = 352,
    --  height = 384,
    --  shift = {0, 0},
    --  hr_version = {
    --    filename = "__base__/graphics/entity/rocket-silo/06-silo-base/hr-06-silo-base-night.png",
    --    width = 352,
    --    height = 384,
    --    shift = {0, 0},
    --    scale = 0.5
    --  }
    --},


    red_lights_back_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 0.28125-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {1.34375, 0.28125-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 0.9375-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {2.3125, 0.9375-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.65625, 1.90625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {2.65625, 1.90625-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.65625, 1.90625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-2.65625, 1.90625-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 0.9375-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-2.3125, 0.9375-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 0.28125-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-1.34375, 0.28125-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 0-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {0, 0-1.375},
            scale = 0.5
          }
        }
      }
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 2.8125-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {2.3125, 2.8125-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 3.40625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {1.34375, 3.40625-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 3.75-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {0, 3.75-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 3.40625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {0, 3.75-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 2.8125-1.375},
          hr_version = {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-2.3125, 2.8125-1.375},
            scale = 0.5
          }
        }
      }
    },
    satellite_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/15-rocket-silo-turbine.png",
      priority = "medium",
      width = 28,
      height = 46,
      frame_count = 32,
      line_length = 8,
      animation_speed = 0.4,
      shift = util.by_pixel(-100, 110),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-15-rocket-silo-turbine.png",
        priority = "medium",
        width = 54,
        height = 88,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.4,
        shift = util.by_pixel(-100, 111),
        scale = 0.5
      }
    },

    arm_01_back_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-rocket-silo-arms-back.png",
      priority = "medium",
      width = 66,
      height = 76,
      frame_count = 32,
      line_length = 32,
      animation_speed = 0.3,
      shift = util.by_pixel(-54, -84),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-08-rocket-silo-arms-back.png",
        priority = "medium",
        width = 128,
        height = 150,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(-53, -84),
        scale = 0.5
      }
    },

    arm_02_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-rocket-silo-arms-right.png",
      priority = "medium",
      width = 94,
      height = 94,
      frame_count = 32,
      line_length = 32,
      animation_speed = 0.3,
      shift = util.by_pixel(100, -38),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-08-rocket-silo-arms-right.png",
        priority = "medium",
        width = 182,
        height = 188,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(101, -38),
        scale = 0.5
      }
    },

    arm_03_front_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/13-rocket-silo-arms-front.png",
      priority = "medium",
      width = 66,
      height = 114,
      frame_count = 32,
      line_length = 32,
      animation_speed = 0.3,
      shift = util.by_pixel(-52, 16),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-13-rocket-silo-arms-front.png",
        priority = "medium",
        width = 126,
        height = 228,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(-51, 16),
        scale = 0.5
      }
    },

    base_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/14-rocket-silo-front.png",
      width = 292,
      height = 132,
      shift = util.by_pixel(-2, 78),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-14-rocket-silo-front.png",
        width = 580,
        height = 262,
        shift = util.by_pixel(-1, 78),
        scale = 0.5
      }
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
})
