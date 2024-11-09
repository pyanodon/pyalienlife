RECIPE {
  type = "recipe",
  name = "pydrive",
  enabled = false,
  ingredients =
  {
    {type = "item", name = "neuromorphic-chip",      amount = 100},
    {type = "item", name = "super-alloy",            amount = 200},
    {type = "item", name = "low-density-structure",  amount = 100},
    {type = "item", name = "processing-unit",        amount = 20},
    {type = "item", name = "small-parts-03",         amount = 100},
    {type = "item", name = "perfect-samples",        amount = 4},
    {type = "item", name = "vonix",                  amount = 2},
    {type = "item", name = "earth-cow-sample",       amount = 10},
    {type = "item", name = "denatured-seismite",     amount = 2},
    {type = "item", name = "upgrader-mk03",          amount = 1},
    {type = "item", name = "automated-factory-mk03", amount = 1},
  },
  results = {
    {type = "item", name = "pydrive", amount = 1}
  }
}:add_unlock("domestication-mk05")

ITEM {
  type = "item",
  name = "pydrive",
  icon = "__pyalienlifegraphics3__/graphics/icons/logistic-station.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-others",
  order = "a",
  place_result = "pydrive",
  stack_size = 10
}

ENTITY {
  type = "linked-container",
  name = "pydrive",
  icon = "__pyalienlifegraphics3__/graphics/icons/logistic-station.png",
  icon_size = 64,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 2, result = "pydrive"},
  max_health = 350,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
  close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
  impact_category = "metal-large",
  resistances = {
    {
      type = "fire",
      percent = 90
    }
  },
  collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
  selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
  drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
  inventory_size = 100,
  scale_info_icons = true,
  picture = {
    filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/off.png",
    priority = "low",
    width = 512,
    height = 576,
    --scale = 0.5,
    shift = util.by_pixel(16, -48),
  },
  inventory_type = "with_filters_and_bar",
  gui_mode = "all",
  circuit_wire_connection_point = {
    shadow = {
      red = {-0.484375, -6.10938},
      green = {-0.390625, -6.10938}
    },
    wire = {
      red = {-0.1875, -5.59375},
      green = {-0.1875, -5.71875}
    }
  },
  circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
}

ENTITY {
  type = "electric-energy-interface",
  name = "pydrive_skin",
  icon = "__pyalienlifegraphics3__/graphics/icons/logistic-station.png",
  icon_size = 64,
  hidden = true,
  flags = {"placeable-player", "player-creation",},
  subgroup = "py-containers-warehouse",
  order = "a",
  map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
  max_health = 150,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
  selection_box = {{0, 0}, {0, 0}},
  --light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
  --integration_patch_render_layer = "decals",
  --integration_patch = hr_crash_site_lab_ground(),
  render_layer = "higher-object-under",
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {
      pollution = 3
    },
    render_no_power_icon = true,
    output_flow_limit = "0W",
    buffer_capacity = "250MW"
  },
  localised_name = {"entity-name.pydrive"},
  localised_description = {"entity-description.pydrive"},
  energy_usage = "250MW",
  continuous_animation = true,
  animations =
  {
    layers =
    {
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b1.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-224, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b2.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-192, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b3.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-160, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b4.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-128, 96),
        run_mode = "backward",
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b5.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-96, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b6.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-64, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b7.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-32, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b8.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-0, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b9.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(32, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b10.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(64, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b11.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(96, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b12.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(128, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b13.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(160, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b14.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(192, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b15.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(224, 96),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t1.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-224, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t2.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-192, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t3.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-160, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t4.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-128, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t5.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-96, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t6.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-64, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t7.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-32, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t8.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(-0, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t9.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(32, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t10.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(64, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t11.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(96, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t12.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(128, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t13.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(160, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t14.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(192, -192),
        animation_speed = 0.18
      },
      {
        filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t15.png",
        width = 32,
        height = 288,
        line_length = 50,
        frame_count = 250,
        shift = util.by_pixel(224, -192),
        animation_speed = 0.18
      },

    }
  },
  working_sound = {
    sound = {filename = "__pyalienlifegraphics3__/sounds/pydrive.ogg", volume = 1.1},
  },
  selectable_in_game = false
}
