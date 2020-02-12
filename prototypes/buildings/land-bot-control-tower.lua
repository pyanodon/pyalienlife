RECIPE {
    type = "recipe",
    name = "lb-control-tower",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 50},
        {"glass", 40},
        {"titanium-plate", 15},
        {"duralumin", 10},
        {"electronic-circuit", 20},
        {"iron-gear-wheel", 40},
    },
    results = {
        {"lb-control-tower", 1}
    }
}--:add_unlock("xenobiology")

ITEM {
    type = "item",
    name = "lb-control-tower",
    icon = "__pyalienlifegraphics__/graphics/icons/control-tower.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "c",
    place_result = "hidden-roboport-for-logistics-radius",
    stack_size = 10
}

ENTITY {
    type = "simple-entity-with-owner",
	  name = "lb-control-tower",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__pyalienlifegraphics__/graphics/icons/control-tower.png",
    icon_size = 64,
    subgroup = "grass",
    order = "b[decorative]-l[rock]-a[huge]",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = 3,
      results = {{name = "lb-control-tower", amount = 1}},
      --count = 200
    },
    count_as_rock_for_filtered_deconstruction = false,
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
	working_sound =
    {
      sound = { filename = "__pyalienlifegraphics__/sounds/tower.ogg", volume = 0.65 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    render_layer = "object",
    max_health = 2000,
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    pictures =
    {
      {
        filename = "__pyalienlifegraphics2__/graphics/entity/tower/tower.png",
        width = 192,
        height = 352,
        scale = 0.5,
        shift = util.by_pixel(16, -60),
      }
    }
  }

ENTITY {
    type = "roboport",
    name = "hidden-roboport-for-logistics-radius",
    icon = "__base__/graphics/icons/roboport.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {minable = false, mining_time = 0.1},
    max_health = 500,
    corpse = "roboport-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "5MW",
      buffer_capacity = "100MJ"
    },
    recharge_minimum = "40MJ",
    energy_usage = "50kW",
    -- per one charge slot
    charging_energy = "1000kW",
    logistics_radius = 25,
    construction_radius = 0,
    charge_approach_distance = 5,
    robot_slots_count = 7,
    material_slots_count = 7,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}
    },
    base =
    {
		filename = "__pyalienlifegraphics2__/graphics/entity/tower/tower.png",
		width = 192,
		height = 352,
		scale = 0.5,
		shift = util.by_pixel(16, -60),
    },
    base_patch =
    {
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
      shift = util.by_pixel(0, -0),
    },
    base_animation =
    {
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
	  frame_count = 1,
      animation_speed = 1,
      shift = util.by_pixel(0, -0),
    },
    door_animation_up =
    {
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
	  frame_count = 1,
      shift = util.by_pixel(0, -0),
    },
    door_animation_down =
    {
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
	  frame_count = 1,
      shift = util.by_pixel(0, -0),
    },
    recharging_animation =
    {
      filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
      width = 32,
      height = 32,
	  frame_count = 1,
      animation_speed = 1,
      shift = util.by_pixel(0, -0),
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,

    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = false,

    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
      }
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      }
    },

    circuit_wire_connection_point = _G.circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = _G.circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,

    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
  }
