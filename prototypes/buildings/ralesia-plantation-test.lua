
RECIPE {
    type = "recipe",
    name = "ralesia-plantation-test",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"concrete", 200},
        {"niobium-pipe", 35}, --bob steel pipe
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
}:add_unlock("mega-farm")

ITEM {
    type = "item",
    name = "ralesia-plantation-test",
    icon = "__pyalienlife__/graphics/icons/mega-farm-ralesia.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farms",
    order = "a",
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
    allowed_effects = {"consumption", "speed"},
    minable = {mining_time = 1, result = "ralesia-plantation-test"},
    max_health = 5000,
    dying_explosion = "medium-explosion",
    corpse = "rocket-silo-generic-remnants",
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-12, -12}, {12, 12}},
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
          pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
          pipe_covers = DATA.Pipes.covers(true, true, true, true),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0.0, 4.0}}},
          priority = "extra-high"
      },
      {
        production_type = "input",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {0.0, -4.0}}},
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
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      --slice = 2,
      shift = util.by_pixel(0, 0),
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
        filename = "__pyalienlife__/graphics/entity/mega-farm/farm/a2.png",
		width = 128,
		height = 288,
		frame_count = 100,
		line_length = 16,
		animation_speed = 0.3,
		shift = {2, 0},
    },
	
    base_front_sprite =
    {
                filename = "__pyalienlife__/graphics/entity/mega-farm/farm/a1.png",
				width = 128,
				height = 288,
				frame_count = 100,
				line_length = 16,
				animation_speed = 0.3,
				shift = {-2, 0},
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
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 0.3,
      shift = util.by_pixel(0, 0),
    },

    arm_01_back_animation =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 0.3,
      shift = util.by_pixel(0, 0),
    },

    arm_02_right_animation =
    {
        filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
        width = 32,
        height = 32,
        frame_count = 1,
        line_length = 1,
        animation_speed = 0.3,
        shift = util.by_pixel(0, 0),
    },

    arm_03_front_animation =
    {
      filename = "__pyalienlife__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      frame_count = 1,
      line_length = 1,
      animation_speed = 0.3,
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
})
