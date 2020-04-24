local hit_effects = require ("__base__/prototypes/entity/demo-hit-effects")
local sounds = require("__base__/prototypes/entity/demo-sounds")

function gun_turret_extension(inputs)
    return
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-raising.png",
      priority = "medium",
      width = 66,
      height = 64,
      direction_count = 4,
      frame_count = inputs.frame_count or 5,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      shift = util.by_pixel(0, -26),
      axially_symmetrical = false,
      hr_version =
      {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-raising.png",
        priority = "medium",
        width = 130,
        height = 126,
        direction_count = 4,
        frame_count = inputs.frame_count or 5,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        shift = util.by_pixel(0, -26.5),
        axially_symmetrical = false,
        scale = 0.5
      }
    }
    end
    
    function gun_turret_extension_mask(inputs)
    return
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-mask.png",
      flags = { "mask" },
      width = 24,
      height = 32,
      direction_count = 4,
      frame_count = inputs.frame_count or 5,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      shift = util.by_pixel(0, -28),
      axially_symmetrical = false,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-raising-mask.png",
        flags = { "mask" },
        width = 48,
        height = 62,
        direction_count = 4,
        frame_count = inputs.frame_count or 5,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        shift = util.by_pixel(0, -28),
        axially_symmetrical = false,
        apply_runtime_tint = true,
        scale = 0.5
      }
    }
    end
    
    function gun_turret_extension_shadow(inputs)
    return
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-shadow.png",
      width = 126,
      height = 62,
      direction_count = 4,
      frame_count = inputs.frame_count or 5,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      shift = util.by_pixel(19, 2),
      axially_symmetrical = false,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-raising-shadow.png",
        width = 250,
        height = 124,
        direction_count = 4,
        frame_count = inputs.frame_count or 5,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        shift = util.by_pixel(19, 2.5),
        axially_symmetrical = false,
        draw_as_shadow = true,
        scale = 0.5
      }
    }
    end
    
    function gun_turret_attack(inputs)
    return
    {
      layers =
      {
        {
          width = 66,
          height = 66,
          frame_count = inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(0, -27),
          stripes =
          {
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-1.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-2.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-3.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-4.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            }
          },
          hr_version =
          {
            width = 132,
            height = 130,
            frame_count = inputs.frame_count and inputs.frame_count or 2,
            axially_symmetrical = false,
            direction_count = 64,
            shift = util.by_pixel(0, -27.5),
            stripes =
            {
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-1.png",
                width_in_frames = inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-2.png",
                width_in_frames = inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-3.png",
                width_in_frames = inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-4.png",
                width_in_frames = inputs.frame_count or 2,
                height_in_frames = 16
              }
            },
            scale = 0.5
          }
        },
        {
          flags = { "mask" },
          line_length = inputs.frame_count or 2,
          width = 30,
          height = 28,
          frame_count = inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(0, -32),
          apply_runtime_tint = true,
          stripes =
          {
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-1.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-2.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-3.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-4.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            }
          },
          hr_version =
          {
            flags = { "mask" },
            line_length = inputs.frame_count or 2,
            width = 58,
            height = 54,
            frame_count = inputs.frame_count or 2,
            axially_symmetrical = false,
            direction_count = 64,
            shift = util.by_pixel(0, -32.5),
            apply_runtime_tint = true,
            stripes =
            {
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-1.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-2.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-3.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-4.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              }
            },
            scale = 0.5
          }
        },
        {
          width = 126,
          height = 62,
          frame_count = inputs.frame_count and inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(23, 2),
          draw_as_shadow = true,
          stripes =
          {
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-1.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-2.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-3.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-4.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            }
          },
          hr_version =
          {
            width = 250,
            height = 124,
            frame_count = inputs.frame_count and inputs.frame_count or 2,
            axially_symmetrical = false,
            direction_count = 64,
            shift = util.by_pixel(22, 2.5),
            draw_as_shadow = true,
            stripes =
            {
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-1.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-2.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-3.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              },
              {
                filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-4.png",
                width_in_frames = inputs.frame_count and inputs.frame_count or 2,
                height_in_frames = 16
              }
            },
            scale = 0.5
          }
        }
      }
    }
    end    

RECIPE {
    type = "recipe",
    name = "gun-turret-mk01",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 2},
        {"iron-gear-wheel", 2},
    },
    results = {
        {"gun-turret-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "gun-turret-mk01",
    icon = "__base__/graphics/icons/gun-turret.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "a",
    place_result = "gun-turret-mk01",
    stack_size = 10
}

ENTITY {
type = "ammo-turret",
name = "gun-turret-mk01",
icon = "__base__/graphics/icons/gun-turret.png",
icon_size = 64, icon_mipmaps = 4,
flags = {"placeable-player", "player-creation"},
minable = {mining_time = 0.5, result = "gun-turret-mk01"},
max_health = 400,
corpse = "gun-turret-remnants",
dying_explosion = "gun-turret-explosion",
collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
selection_box = {{-1, -1 }, {1, 1}},
damaged_trigger_effect = hit_effects.entity(),
rotation_speed = 0.015,
preparing_speed = 0.08,
preparing_sound = sounds.gun_turret_activate,
folding_sound = sounds.gun_turret_deactivate,
rotating_sound = 
{
  sound =
  {
    filename = "__base__/sound/fight/gun-turret-rotation-01.ogg",
    volume = 0.3
  }
},
folding_speed = 0.08,
inventory_size = 1,
automated_ammo_count = 10,
attacking_speed = 1,
alert_when_attacking = true,
open_sound = sounds.machine_open,
close_sound = sounds.machine_close,
folded_animation =
{
  layers =
  {
    gun_turret_extension{frame_count=1, line_length = 1},
    gun_turret_extension_mask{frame_count=1, line_length = 1},
    gun_turret_extension_shadow{frame_count=1, line_length = 1}
  }
},
preparing_animation =
{
  layers =
  {
    gun_turret_extension{},
    gun_turret_extension_mask{},
    gun_turret_extension_shadow{}
  }
},
prepared_animation = gun_turret_attack{frame_count=1},
attacking_animation = gun_turret_attack{},
folding_animation =
{
  layers =
  {
    gun_turret_extension{run_mode = "backward"},
    gun_turret_extension_mask{run_mode = "backward"},
    gun_turret_extension_shadow{run_mode = "backward"}
  }
},
base_picture =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 76,
      height = 60,
      axially_symmetrical = false,
      direction_count = 1,
      frame_count = 1,
      shift = util.by_pixel(1, -1),
      hr_version =
      {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base.png",
        priority = "high",
        width = 150,
        height = 118,
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(0.5, -1),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
      flags = { "mask", "low-object" },
      line_length = 1,
      width = 62,
      height = 52,
      axially_symmetrical = false,
      direction_count = 1,
      frame_count = 1,
      shift = util.by_pixel(0, -4),
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base-mask.png",
        flags = { "mask", "low-object" },
        line_length = 1,
        width = 122,
        height = 102,
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        apply_runtime_tint = true,
        scale = 0.5
      }
    }

  }
},
vehicle_impact_sound = sounds.generic_impact,

attack_parameters =
{
  type = "projectile",
  ammo_category = "bullet",
  cooldown = 6,
  projectile_creation_distance = 1.39375,
  projectile_center = {0, -0.0875}, -- same as gun_turret_attack shift
  shell_particle =
  {
    name = "shell-particle",
    direction_deviation = 0.1,
    speed = 0.1,
    speed_deviation = 0.03,
    center = {-0.0625, 0},
    creation_distance = -1.925,
    starting_frame_speed = 0.2,
    starting_frame_speed_deviation = 0.1
  },
  range = 18,
  sound = sounds.gun_turret_gunshot,
},

call_for_help_radius = 40,
water_reflection =
{
  pictures =
  {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-reflection.png",
    priority = "extra-high",
    width = 20,
    height = 32,
    shift = util.by_pixel(0, 40),
    variation_count = 1,
    scale = 5,
  },
  rotate = false,
  orientation_to_variation = false
}
}