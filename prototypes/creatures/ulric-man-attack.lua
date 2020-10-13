
local movement_triggers = require("__base__.prototypes.entity.demo-movement-triggers")

local character_animations =
{
  level1 =
  {
    dead =
    {
      filename = "__base__/graphics/entity/character/level1_dead.png",
      width = 58,
      height = 58,
      shift = util.by_pixel(-7.0,-5.0),
      frame_count = 2,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_dead.png",
        width = 114,
        height = 112,
        shift = util.by_pixel(-7.0,-5.5),
        frame_count = 2,
        scale = 0.5
      },
    },
    dead_mask =
    {
      filename = "__base__/graphics/entity/character/level1_dead_mask.png",
      width = 46,
      height = 36,
      shift = util.by_pixel(-2.0,-6.0),
      frame_count = 2,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_dead_mask.png",
        width = 88,
        height = 70,
        shift = util.by_pixel(-2.5,-6.5),
        frame_count = 2,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    dead_shadow =
    {
      filename = "__base__/graphics/entity/character/level1_dead_shadow.png",
      width = 54,
      height = 54,
      shift = util.by_pixel(-4.0,-3.0),
      frame_count = 2,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_dead_shadow.png",
        width = 108,
        height = 106,
        shift = util.by_pixel(-3.5,-3.0),
        frame_count = 2,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    idle =
    {
      filename = "__base__/graphics/entity/character/level1_idle.png",
      width = 46,
      height = 58,
      shift = util.by_pixel(0.0,-21.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_idle.png",
        width = 92,
        height = 116,
        shift = util.by_pixel(0.0,-21.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        scale = 0.5
      },
    },
    idle_mask =
    {
      filename = "__base__/graphics/entity/character/level1_idle_mask.png",
      width = 28,
      height = 46,
      shift = util.by_pixel(0.0,-26.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_idle_mask.png",
        width = 56,
        height = 90,
        shift = util.by_pixel(0.0,-26.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    idle_shadow =
    {
      filename = "__base__/graphics/entity/character/level1_idle_shadow.png",
      width = 84,
      height = 40,
      shift = util.by_pixel(31.0,1.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_idle_shadow.png",
        width = 164,
        height = 78,
        shift = util.by_pixel(30.5,0.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    idle_gun =
    {
      filename = "__base__/graphics/entity/character/level1_idle_gun.png",
      width = 56,
      height = 64,
      shift = util.by_pixel(0.0,-22.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_idle_gun.png",
        width = 110,
        height = 128,
        shift = util.by_pixel(0.0,-22.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        scale = 0.5
      },
    },
    idle_gun_mask =
    {
      filename = "__base__/graphics/entity/character/level1_idle_gun_mask.png",
      width = 36,
      height = 44,
      shift = util.by_pixel(-1.0,-22.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_idle_gun_mask.png",
        width = 72,
        height = 88,
        shift = util.by_pixel(-0.5,-22.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    idle_gun_shadow =
    {
      filename = "__base__/graphics/entity/character/level1_idle_gun_shadow.png",
      width = 92,
      height = 48,
      shift = util.by_pixel(33.0,0.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_idle_gun_shadow.png",
        width = 182,
        height = 94,
        shift = util.by_pixel(33.0,0.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    mining_tool =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level1_mining_tool-1.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
        {
        filename = "__base__/graphics/entity/character/level1_mining_tool-2.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
      },
      width = 98,
      height = 98,
      shift = util.by_pixel(0.0,-15.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      hr_version =
      {
        stripes =
        {
          {
          filename = "__base__/graphics/entity/character/hr-level1_mining_tool-1.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
          {
          filename = "__base__/graphics/entity/character/hr-level1_mining_tool-2.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
        },
        width = 196,
        height = 194,
        shift = util.by_pixel(0.0,-15.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        scale = 0.5
      },
    },
    mining_tool_mask =
    {
      filename = "__base__/graphics/entity/character/level1_mining_tool_mask.png",
      width = 70,
      height = 70,
      shift = util.by_pixel(0.0,-19.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_mining_tool_mask.png",
        width = 140,
        height = 138,
        shift = util.by_pixel(0.5,-19.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    mining_tool_shadow =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level1_mining_tool_shadow-1.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
        {
        filename = "__base__/graphics/entity/character/level1_mining_tool_shadow-2.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
      },
      width = 146,
      height = 72,
      shift = util.by_pixel(26.0,0.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      draw_as_shadow = true,
      hr_version =
      {
        stripes =
        {
          {
          filename = "__base__/graphics/entity/character/hr-level1_mining_tool_shadow-1.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
          {
          filename = "__base__/graphics/entity/character/hr-level1_mining_tool_shadow-2.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
        },
        width = 292,
        height = 142,
        shift = util.by_pixel(26.0,0.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running =
    {
      filename = "__base__/graphics/entity/character/level1_running.png",
      width = 44,
      height = 66,
      shift = util.by_pixel(0.0,-18.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_running.png",
        width = 88,
        height = 132,
        shift = util.by_pixel(0.0,-18.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        scale = 0.5
      },
    },
    running_mask =
    {
      filename = "__base__/graphics/entity/character/level1_running_mask.png",
      width = 40,
      height = 56,
      shift = util.by_pixel(0.0,-22.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_running_mask.png",
        width = 78,
        height = 110,
        shift = util.by_pixel(0.0,-22.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    running_shadow =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level1_running_shadow-1.png",
        width_in_frames = 11,
        height_in_frames = 8,
        },
        {
        filename = "__base__/graphics/entity/character/level1_running_shadow-2.png",
        width_in_frames = 11,
        height_in_frames = 8,
        },
      },
      width = 96,
      height = 34,
      shift = util.by_pixel(30.0,2.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        stripes =
        {
          {
          filename = "__base__/graphics/entity/character/hr-level1_running_shadow-1.png",
          width_in_frames = 11,
          height_in_frames = 8,
          },
          {
          filename = "__base__/graphics/entity/character/hr-level1_running_shadow-2.png",
          width_in_frames = 11,
          height_in_frames = 8,
          },
        },
        width = 190,
        height = 68,
        shift = util.by_pixel(30.0,2.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running_gun =
    {
      filename = "__base__/graphics/entity/character/level1_running_gun.png",
      width = 56,
      height = 68,
      shift = util.by_pixel(3.0,-20.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_running_gun.png",
        width = 108,
        height = 136,
        shift = util.by_pixel(2.5,-19.5),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        scale = 0.5
      },
    },
    running_gun_mask =
    {
      filename = "__base__/graphics/entity/character/level1_running_gun_mask.png",
      width = 34,
      height = 50,
      shift = util.by_pixel(1.0,-23.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_running_gun_mask.png",
        width = 66,
        height = 100,
        shift = util.by_pixel(1.0,-23.0),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    running_gun_shadow =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level1_running_gun_shadow-1.png",
        width_in_frames = 11,
        height_in_frames = 18,
        },
        {
        filename = "__base__/graphics/entity/character/level1_running_gun_shadow-2.png",
        width_in_frames = 11,
        height_in_frames = 18,
        },
      },
      width = 96,
      height = 50,
      shift = util.by_pixel(30.0,0.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        stripes =
        {
          {
          filename = "__base__/graphics/entity/character/hr-level1_running_gun_shadow-1.png",
          width_in_frames = 11,
          height_in_frames = 18,
          },
          {
          filename = "__base__/graphics/entity/character/hr-level1_running_gun_shadow-2.png",
          width_in_frames = 11,
          height_in_frames = 18,
          },
        },
        width = 192,
        height = 100,
        shift = util.by_pixel(30.0,0.0),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running_gun_shadow_flipped =
    {
      filename = "__base__/graphics/entity/character/level1_running_gun_shadow_flipped.png",
      line_length = 22,
      width = 90,
      height = 50,
      shift = util.by_pixel(26.0,0.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level1_running_gun_shadow_flipped.png",
        width = 178,
        height = 100,
        shift = util.by_pixel(25.5,0.0),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        line_length = 22,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
  },
  level2addon =
  {
    dead =
    {
      filename = "__base__/graphics/entity/character/level2addon_dead.png",
      width = 44,
      height = 34,
      shift = util.by_pixel(-1.0,-5.0),
      frame_count = 2,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_dead.png",
        width = 86,
        height = 68,
        shift = util.by_pixel(-1.0,-5.0),
        frame_count = 2,
        scale = 0.5
      },
    },
    dead_mask =
    {
      filename = "__base__/graphics/entity/character/level2addon_dead_mask.png",
      width = 44,
      height = 34,
      shift = util.by_pixel(0.0,-5.0),
      frame_count = 2,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_dead_mask.png",
        width = 86,
        height = 66,
        shift = util.by_pixel(-0.5,-5.5),
        frame_count = 2,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    dead_shadow =
    {
      filename = "__base__/graphics/entity/character/level2addon_dead_shadow.png",
      width = 46,
      height = 36,
      shift = util.by_pixel(2.0,0.0),
      frame_count = 2,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_dead_shadow.png",
        width = 90,
        height = 68,
        shift = util.by_pixel(1.5,-0.5),
        frame_count = 2,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    idle =
    {
      filename = "__base__/graphics/entity/character/level2addon_idle.png",
      width = 28,
      height = 44,
      shift = util.by_pixel(0.0,-27.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_idle.png",
        width = 56,
        height = 86,
        shift = util.by_pixel(0.5,-27.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        scale = 0.5
      },
    },
    idle_mask =
    {
      filename = "__base__/graphics/entity/character/level2addon_idle_mask.png",
      width = 26,
      height = 42,
      shift = util.by_pixel(0.0,-28.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_idle_mask.png",
        width = 52,
        height = 84,
        shift = util.by_pixel(0.0,-28.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    idle_shadow =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level2addon_idle_shadow-1.png",
        width_in_frames = 11,
        height_in_frames = 8,
        },
        {
        filename = "__base__/graphics/entity/character/level2addon_idle_shadow-2.png",
        width_in_frames = 11,
        height_in_frames = 8,
        },
      },
      width = 94,
      height = 40,
      shift = util.by_pixel(36.0,1.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_idle_shadow.png",
        width = 186,
        height = 78,
        shift = util.by_pixel(36.0,0.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    idle_gun =
    {
      filename = "__base__/graphics/entity/character/level2addon_idle_gun.png",
      width = 36,
      height = 44,
      shift = util.by_pixel(0.0,-25.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_idle_gun.png",
        width = 72,
        height = 86,
        shift = util.by_pixel(0.0,-25.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        scale = 0.5
      },
    },
    idle_gun_mask =
    {
      filename = "__base__/graphics/entity/character/level2addon_idle_gun_mask.png",
      width = 36,
      height = 44,
      shift = util.by_pixel(0.0,-25.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_idle_gun_mask.png",
        width = 72,
        height = 84,
        shift = util.by_pixel(0.0,-25.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    idle_gun_shadow =
    {
      filename = "__base__/graphics/entity/character/level2addon_idle_gun_shadow.png",
      width = 92,
      height = 48,
      shift = util.by_pixel(33.0,0.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_idle_gun_shadow.png",
        width = 182,
        height = 94,
        shift = util.by_pixel(33.0,0.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    mining_tool =
    {
      filename = "__base__/graphics/entity/character/level2addon_mining_tool.png",
      width = 72,
      height = 62,
      shift = util.by_pixel(0.0,-21.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_mining_tool.png",
        width = 142,
        height = 124,
        shift = util.by_pixel(0.0,-21.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        scale = 0.5
      },
    },
    mining_tool_mask =
    {
      filename = "__base__/graphics/entity/character/level2addon_mining_tool_mask.png",
      width = 70,
      height = 60,
      shift = util.by_pixel(0.0,-22.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_mining_tool_mask.png",
        width = 140,
        height = 120,
        shift = util.by_pixel(0.0,-22.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    mining_tool_shadow =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level2addon_mining_tool_shadow-1.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
        {
        filename = "__base__/graphics/entity/character/level2addon_mining_tool_shadow-2.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
      },
      width = 146,
      height = 72,
      shift = util.by_pixel(26.0,0.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      draw_as_shadow = true,
      hr_version =
      {
        stripes =
        {
          {
          filename = "__base__/graphics/entity/character/hr-level2addon_mining_tool_shadow-1.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
          {
          filename = "__base__/graphics/entity/character/hr-level2addon_mining_tool_shadow-2.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
        },
        width = 292,
        height = 142,
        shift = util.by_pixel(26.0,0.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running =
    {
      filename = "__base__/graphics/entity/character/level2addon_running.png",
      width = 36,
      height = 54,
      shift = util.by_pixel(0.0,-25.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_running.png",
        width = 70,
        height = 106,
        shift = util.by_pixel(0.0,-25.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        scale = 0.5
      },
    },
    running_mask =
    {
      filename = "__base__/graphics/entity/character/level2addon_running_mask.png",
      width = 36,
      height = 54,
      shift = util.by_pixel(0.0,-25.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_running_mask.png",
        width = 70,
        height = 104,
        shift = util.by_pixel(0.0,-25.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    running_shadow =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level2addon_running_shadow-1.png",
        width_in_frames = 11,
        height_in_frames = 8,
        },
        {
        filename = "__base__/graphics/entity/character/level2addon_running_shadow-2.png",
        width_in_frames = 11,
        height_in_frames = 8,
        },
      },
      width = 98,
      height = 34,
      shift = util.by_pixel(31.0,2.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        stripes =
        {
          {
          filename = "__base__/graphics/entity/character/hr-level2addon_running_shadow-1.png",
          width_in_frames = 11,
          height_in_frames = 8,
          },
          {
          filename = "__base__/graphics/entity/character/hr-level2addon_running_shadow-2.png",
          width_in_frames = 11,
          height_in_frames = 8,
          },
        },
        width = 194,
        height = 68,
        shift = util.by_pixel(31.0,2.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running_gun =
    {
      filename = "__base__/graphics/entity/character/level2addon_running_gun.png",
      width = 36,
      height = 48,
      shift = util.by_pixel(1.0,-25.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_running_gun.png",
        width = 68,
        height = 94,
        shift = util.by_pixel(0.5,-25.5),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        scale = 0.5
      },
    },
    running_gun_mask =
    {
      filename = "__base__/graphics/entity/character/level2addon_running_gun_mask.png",
      width = 36,
      height = 48,
      shift = util.by_pixel(1.0,-25.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_running_gun_mask.png",
        width = 68,
        height = 94,
        shift = util.by_pixel(0.5,-25.5),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    running_gun_shadow =
    {
      filename = "__base__/graphics/entity/character/level2addon_running_gun_shadow.png",
      width = 68,
      height = 30,
      shift = util.by_pixel(37.0,1.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_running_gun_shadow.png",
        width = 134,
        height = 58,
        shift = util.by_pixel(37.0,1.0),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running_gun_shadow_flipped =
    {
      filename = "__base__/graphics/entity/character/level2addon_running_gun_shadow_flipped.png",
      line_length = 22,
      width = 70,
      height = 30,
      shift = util.by_pixel(34.0,1.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level2addon_running_gun_shadow_flipped.png",
        width = 138,
        height = 58,
        shift = util.by_pixel(34.0,1.0),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        line_length = 22,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
  },
  level3addon =
  {
    dead =
    {
      filename = "__base__/graphics/entity/character/level3addon_dead.png",
      width = 44,
      height = 34,
      shift = util.by_pixel(-1.0,-5.0),
      frame_count = 2,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_dead.png",
        width = 88,
        height = 68,
        shift = util.by_pixel(-0.5,-5.0),
        frame_count = 2,
        scale = 0.5
      },
    },
    dead_mask =
    {
      filename = "__base__/graphics/entity/character/level3addon_dead_mask.png",
      width = 36,
      height = 30,
      shift = util.by_pixel(3.0,-4.0),
      frame_count = 2,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_dead_mask.png",
        width = 72,
        height = 60,
        shift = util.by_pixel(3.0,-3.5),
        frame_count = 2,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    dead_shadow =
    {
      filename = "__base__/graphics/entity/character/level3addon_dead_shadow.png",
      width = 48,
      height = 36,
      shift = util.by_pixel(2.0,-1.0),
      frame_count = 2,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_dead_shadow.png",
        width = 92,
        height = 72,
        shift = util.by_pixel(1.5,-1.0),
        frame_count = 2,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    idle =
    {
      filename = "__base__/graphics/entity/character/level3addon_idle.png",
      width = 38,
      height = 44,
      shift = util.by_pixel(0.0,-28.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_idle.png",
        width = 74,
        height = 86,
        shift = util.by_pixel(0.0,-28.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        scale = 0.5
      },
    },
    idle_mask =
    {
      filename = "__base__/graphics/entity/character/level3addon_idle_mask.png",
      width = 38,
      height = 38,
      shift = util.by_pixel(0.0,-31.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_idle_mask.png",
        width = 74,
        height = 72,
        shift = util.by_pixel(0.0,-31.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    idle_shadow =
    {
      filename = "__base__/graphics/entity/character/level3addon_idle_shadow.png",
      width = 66,
      height = 32,
      shift = util.by_pixel(38.0,0.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_idle_shadow.png",
        width = 132,
        height = 64,
        shift = util.by_pixel(38.5,0.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    idle_gun =
    {
      filename = "__base__/graphics/entity/character/level3addon_idle_gun.png",
      width = 40,
      height = 44,
      shift = util.by_pixel(0.0,-25.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_idle_gun.png",
        width = 78,
        height = 88,
        shift = util.by_pixel(0.0,-24.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        scale = 0.5
      },
    },
    idle_gun_mask =
    {
      filename = "__base__/graphics/entity/character/level3addon_idle_gun_mask.png",
      width = 38,
      height = 36,
      shift = util.by_pixel(0.0,-28.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_idle_gun_mask.png",
        width = 76,
        height = 68,
        shift = util.by_pixel(0.0,-28.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    idle_gun_shadow =
    {
      filename = "__base__/graphics/entity/character/level3addon_idle_gun_shadow.png",
      width = 66,
      height = 32,
      shift = util.by_pixel(34.0,0.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_idle_gun_shadow.png",
        width = 130,
        height = 64,
        shift = util.by_pixel(33.5,0.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.15,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    mining_tool =
    {
      filename = "__base__/graphics/entity/character/level3addon_mining_tool.png",
      width = 72,
      height = 64,
      shift = util.by_pixel(0.0,-21.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_mining_tool.png",
        width = 144,
        height = 124,
        shift = util.by_pixel(0.0,-21.5),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        scale = 0.5
      },
    },
    mining_tool_mask =
    {
      filename = "__base__/graphics/entity/character/level3addon_mining_tool_mask.png",
      width = 70,
      height = 56,
      shift = util.by_pixel(0.0,-24.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_mining_tool_mask.png",
        width = 138,
        height = 112,
        shift = util.by_pixel(0.0,-24.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    mining_tool_shadow =
    {
      stripes =
      {
        {
        filename = "__base__/graphics/entity/character/level3addon_mining_tool_shadow-1.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
        {
        filename = "__base__/graphics/entity/character/level3addon_mining_tool_shadow-2.png",
        width_in_frames = 13,
        height_in_frames = 8,
        },
      },
      width = 92,
      height = 58,
      shift = util.by_pixel(30.0,0.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      draw_as_shadow = true,
      hr_version =
      {
        stripes =
        {
          {
          filename = "__base__/graphics/entity/character/hr-level3addon_mining_tool_shadow-1.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
          {
          filename = "__base__/graphics/entity/character/hr-level3addon_mining_tool_shadow-2.png",
          width_in_frames = 13,
          height_in_frames = 8,
          },
        },
        width = 184,
        height = 116,
        shift = util.by_pixel(30.0,0.0),
        frame_count = 26,
        direction_count = 8,
        animation_speed = 0.9,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running =
    {
      filename = "__base__/graphics/entity/character/level3addon_running.png",
      width = 40,
      height = 54,
      shift = util.by_pixel(0.0,-25.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_running.png",
        width = 80,
        height = 108,
        shift = util.by_pixel(0.0,-25.0),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        scale = 0.5
      },
    },
    running_mask =
    {
      filename = "__base__/graphics/entity/character/level3addon_running_mask.png",
      width = 40,
      height = 44,
      shift = util.by_pixel(0.0,-29.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_running_mask.png",
        width = 78,
        height = 88,
        shift = util.by_pixel(0.0,-28.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    running_shadow =
    {
      filename = "__base__/graphics/entity/character/level3addon_running_shadow.png",
      width = 84,
      height = 36,
      shift = util.by_pixel(38.0,3.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_running_shadow.png",
        width = 168,
        height = 68,
        shift = util.by_pixel(38.0,2.5),
        frame_count = 22,
        direction_count = 8,
        animation_speed = 0.6,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running_gun =
    {
      filename = "__base__/graphics/entity/character/level3addon_running_gun.png",
      width = 38,
      height = 48,
      shift = util.by_pixel(0.0,-25.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_running_gun.png",
        width = 76,
        height = 96,
        shift = util.by_pixel(0.5,-24.5),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        scale = 0.5
      },
    },
    running_gun_mask =
    {
      filename = "__base__/graphics/entity/character/level3addon_running_gun_mask.png",
      width = 38,
      height = 38,
      shift = util.by_pixel(1.0,-29.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      apply_runtime_tint = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_running_gun_mask.png",
        width = 74,
        height = 74,
        shift = util.by_pixel(0.5,-29.5),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        apply_runtime_tint = true,
        scale = 0.5
      },
    },
    running_gun_shadow =
    {
      filename = "__base__/graphics/entity/character/level3addon_running_gun_shadow.png",
      width = 68,
      height = 32,
      shift = util.by_pixel(36.0,0.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_running_gun_shadow.png",
        width = 136,
        height = 64,
        shift = util.by_pixel(36.0,0.5),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
    running_gun_shadow_flipped =
    {
      filename = "__base__/graphics/entity/character/level3addon_running_gun_shadow_flipped.png",
      line_length = 22,
      width = 72,
      height = 32,
      shift = util.by_pixel(34.0,0.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/character/hr-level3addon_running_gun_shadow_flipped.png",
        width = 142,
        height = 64,
        shift = util.by_pixel(33.5,0.5),
        frame_count = 22,
        direction_count = 18,
        animation_speed = 0.6,
        line_length = 22,
        draw_as_shadow = true,
        scale = 0.5
      },
    },
  },
}


--[[
RECIPE{
    type = "recipe",
    name = "digosaurus",
    energy_required = 120,
    category = 'creature-chamber',
    enabled = true,
    ingredients =
    {
      {type = 'item', name = 'alien-sample01', amount = 10},
      {type = 'item', name = 'cdna', amount = 10},
      {type = 'item', name = 'moss-gen', amount = 30},
      {type = 'item', name = 'bio-sample', amount = 100},
      {type = 'item', name = 'earth-generic-sample', amount = 20},
      {type = 'fluid', name = 'blood', amount = 300},
      {type = 'fluid', name = 'water-saline', amount = 500},
    },
    result = "digosaurus"
  }--:add_unlock("zoology")
]]--
--[[
ITEM{
    type = "item-with-entity-data",
    name = "digosaurus",
    icon = "__pyalienlifegraphics__/graphics/icons/crawdad.png",
    icon_size = 64,
    subgroup = "py-alienlife-buildings-others",
    order = "x",
    place_result = "digosaurus",
    stack_size = 5
  }
]]--
data:extend(
    {
      {
        type = "optimized-particle",
        name = "character-footprint-particle",
        render_layer = "decals",
        render_layer_when_on_ground = "decals",
        life_time = 600, --300
        fade_away_duration = 125,
        pictures =
        {
          sheet =
          {
            filename = "__pyalienlifegraphics3__/graphics/entity/dig-osaur/footprints.png",
            line_length = 2,
            frame_count = 2,
            width = 30,
            height = 22,
            shift = util.by_pixel(0.25, 0.25),
            variation_count = 8,
            scale = 0.5,
          }
        },
      },
--ENTITY {
{
type = "character",
--name = 'ulric-man-attack',
name = "character",
icon = "__base__/graphics/icons/character.png",
icon_size = 64, icon_mipmaps = 4,
flags = {"placeable-off-grid", "breaths-air", "not-repairable", "not-on-map", "not-flammable"},
max_health = 250,
alert_when_damaged = false,
healing_per_tick = 0.5,
collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
selection_box = {{-0.4, -1.4}, {0.4, 0.2}},
hit_visualization_box = {{-0.2, -1.1}, {0.2, 0.2}},
sticker_box = {{-0.2, -1}, {0.2, 0}},
crafting_categories = {"crafting"},
mining_categories = {"basic-solid"},
character_corpse = "ulric-man-corpse",
inventory_size = 100,
build_distance = 20,
drop_item_distance = 20,
reach_distance = 20,
item_pickup_distance = 2,
loot_pickup_distance = 4,
enter_vehicle_distance = 3,
reach_resource_distance = 2.5,
ticks_to_keep_gun = 600,
ticks_to_keep_aiming_direction = 100,
--ticks you need to wait after firing a weapon or taking damage to get out of combat and get healed
ticks_to_stay_in_combat = 600,
damage_hit_tint = {r = 1, g = 0, b = 0, a = 0},
running_speed = 0.35,
distance_per_frame = 0.23,
maximum_corner_sliding_distance = 0.7,
subgroup = "creatures",
order="a",
eat =
{
  {
    filename = "__base__/sound/eat.ogg",
    volume = 1
  }
},
heartbeat =
{
  {
    filename = "__base__/sound/heartbeat.ogg"
  }
},
tool_attack_result =
{
  type = "direct",
  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      type = "damage",
      damage = { amount = 16 , type = "physical"}
    }
  }
},

animations =
{
  {
    idle =
    {
      layers =
      {
        {
          filenames =
            {
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-1.png",
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-2.png",
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-3.png",
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-4.png",
            },
          slice = 10,
          lines_per_file = 10,
          line_length = 10,
          width = 160,
          height = 192,
          frame_count = 50,
          direction_count = 8,
          animation_speed = 0.25,
          shift = util.mul_shift(util.by_pixel(-0, -0)),
          scale = 0.7,
          },
          {
          filenames =
            {
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-01.png",
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-02.png",
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-03.png",
              "__pyalienlifegraphics3__/graphics/entity/ulric-man/idle-sh-04.png",
            },
          slice = 10,
          lines_per_file = 10,
          line_length = 10,
          width = 192,
          height = 128,
          frame_count = 50,
          direction_count = 8,
          animation_speed = 0.25,
          shift = util.mul_shift(util.by_pixel(25, 30)),
          scale = 0.7,
          draw_as_shadow = true,
          },
      }
    },
    idle_with_gun =
    {
      layers =
      {
        character_animations.level1.idle_gun,
        character_animations.level1.idle_gun_mask,
        character_animations.level1.idle_gun_shadow
      }
    },
    mining_with_tool =
    {
      layers =
      {
        {
            filenames =
              {
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
            shift = util.mul_shift(util.by_pixel(-0, 0)),
            scale = 0.75,
            },
            {
            filenames =
              {
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
            shift = util.mul_shift(util.by_pixel(22, 54)),
            scale = 0.75,
            draw_as_shadow = true,
            },
      }
    },
    running_with_gun =
    {
      layers =
      {
        character_animations.level1.running_gun,
        character_animations.level1.running_gun_mask,
        character_animations.level1.running_gun_shadow
      }
    },
    running =
    {
      layers =
      {
        {
            filenames =
              {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-02.png",
              },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 224,
            height = 224,
            frame_count = 20,
            direction_count = 8,
            animation_speed = 0.3,
            shift = util.mul_shift(util.by_pixel(-0, 0)),
            scale = 0.7,
            },
            {
            filenames =
              {
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-01-sh.png",
                "__pyalienlifegraphics3__/graphics/entity/ulric-man/run-02-sh.png",
              },
            slice = 10,
            lines_per_file = 10,
            line_length = 10,
            width = 224,
            height = 160,
            frame_count = 20,
            direction_count = 8,
            animation_speed = 0.3,
            shift = util.mul_shift(util.by_pixel(17, 16)),
            scale = 0.7,
            draw_as_shadow = true,
             }
        }
    }
  },
},
light =
{
  {
    minimum_darkness = 0.3,
    intensity = 0.5,
    size = 40,
    color = {r=1.0, g=1.0, b=1.0}
  },
  {
    type = "oriented",
    minimum_darkness = 0.3,
    picture =
    {
      filename = "__core__/graphics/light-cone.png",
      priority = "extra-high",
      flags = { "light" },
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {0, -13},
    size = 2,
    intensity = 0.6,
    color = {r=1.0, g=1.0, b=1.0}
  }
},
mining_speed = 2.5,
mining_with_tool_particles_animation_positions = {19},
running_sound_animation_positions = {5, 16},
synced_footstep_particle_triggers = movement_triggers.character,
footprint_particles =
{
  {
    tiles =
    {
      "dry-dirt",
      "dirt-1", "dirt-2", "dirt-3", "dirt-4","dirt-5", "dirt-6", "dirt-7",
      "sand-1", "sand-2", "sand-3",
      "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3"
    },
    particle_name = "character-footprint-particle",
  },
  -- no particle by default so that both (synced_)footstep_particle_triggers are consistently not defined for tiles by default
  {
    tiles = {},
    use_as_default = true,
    particle_name = nil,
  }
},
right_footprint_frames = { 10, 21 },
left_footprint_frames = {5, 16}, --{ 5 },
right_footprint_offset = { 0.1, 0 },
left_footprint_offset = { -0.1, 0 },

water_reflection =
{
  pictures =
  {
    filename = "__base__/graphics/entity/character/character-reflection.png",
    priority = "extra-high",
    -- flags = { "linear-magnification", "not-compressed" },
    -- default value: flags = { "terrain-effect-map" },
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
)
