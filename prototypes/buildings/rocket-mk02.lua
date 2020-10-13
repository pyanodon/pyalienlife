ENTITY {
    type = "rocket-silo-rocket",
    name = "rocket-mk02",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{-2, -7}, {2, 4}},
    selection_box = {{0, 0}, {0, 0}},
    dying_explosion = "massive-explosion",
    shadow_slave_entity = "rocket-silo-rocket-shadow",
    inventory_size = 10,
    rising_speed = 1 / (7 * 60),
    engine_starting_speed = 1 / (5.5 * 60),
    flying_speed = 1 / (2000 * 10),
    flying_acceleration = 0.03,

    glow_light =
    {
      intensity = 1,
      size = 30,
      shift = {0, 1.5},
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    rocket_sprite = util.add_shift_offset(util.by_pixel(0, 32*3.5), --util.mul_shift(rocket_rise_offset, -1),
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/rocket-mk02.png",
      width = 160,
      height = 992,
      scale = 0.5,
      shift = util.by_pixel(-0, -0),
      hr_version = {
        filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/hr-rocket-mk02.png",
        width = 319,
        height = 1983,
        shift = util.by_pixel(-0, -0),
        scale = 0.25,
      }
    }),

    rocket_shadow_sprite = util.add_shift_offset(util.by_pixel(-146, -120),
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/rocket-mk02-sh.png",
      priority = "medium",
      width = 496,
      height = 116,
      scale = 0.5,
      draw_as_shadow = true,
      shift = util.by_pixel(146, 120),
      hr_version = {
        filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/hr-rocket-mk02-sh.png",
        priority = "medium",
        width = 992,
        height = 231,
        draw_as_shadow = true,
        shift = util.by_pixel(146, 121),
        scale = 0.25,
      }
    }),

    rocket_glare_overlay_sprite =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/rocket-over-glare.png",
      blend_mode = "additive",
      priority = "medium",
      width = 481,
      height = 481,
      shift = util.by_pixel(-2, 90),
      scale = 0.4,
      flags = { "linear-magnification", "linear-minification" },
    },
    rocket_smoke_top1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(32, 192),
    },
    rocket_smoke_top2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 0, g = 1, b = 0, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(-32, 192),

    },
    rocket_smoke_top3_animation =
    {
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 0, g = 0, b = 1, a = 0.8 },
      width = 32,
      height = 32,
      scale = 1.5*1.3,
      shift = util.by_pixel(-2, -2),
    },

    rocket_smoke_bottom1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      --tint = { r = 1, g = 1, b = 0, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(-32, 256),

    },
    rocket_smoke_bottom2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      --tint = { r = 0, g = 1, b = 1, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(32, 256),

    },
    rocket_flame_animation =
    {
      filename = "__pyalienlifegraphics3__/graphics/entity/silo-2/p1.png",
      priority = "medium",
      blend_mode = "additive",
      width = 256,
      height = 224,
      frame_count = 16,
      line_length = 4,
      animation_speed = 0.6,
      scale = 1,
      shift = util.by_pixel(16, 400),
    },

    rocket_flame_left_animation = util.add_shift_offset(util.by_pixel(-32-28+3, 280-68+1),
    {
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
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
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
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

    rocket_flame_right_rotation = 0.0,
    rocket_initial_offset = {0, 3.3},
    rocket_rise_offset = {0, -7.5},
    rocket_launch_offset = {0, -256},
    rocket_render_layer_switch_distance = 12,
    full_render_layer_switch_distance = 12,
    effects_fade_in_start_distance = 4.5,
    effects_fade_in_end_distance = 7.5,
    shadow_fade_out_start_ratio = 0.25,
    shadow_fade_out_end_ratio = 0.75,
    rocket_visible_distance_from_center = 2.75,
  {
    type = "rocket-silo-rocket-shadow",
    name = "rocket-silo-rocket-shadow",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{0, 0}, {10, 3.5}},
    selection_box = {{0, 0}, {0, 0}}
  },
}
