RECIPE{
    type = "recipe",
    name = "caravan",
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"engine-unit", 20},
      {"electronic-circuit", 10},
      {"steel-plate", 30}
    },
    result = "caravan"
  }

ITEM{
    type = "item-with-entity-data",
    name = "caravan",
    icon = "__pyalienlife__/graphics/icons/caravan.png",
    icon_size = 64,
    subgroup = "transport",
    order = "a",
    place_result = "caravan",
    stack_size = 5
  }

data:extend(
    {
      {
        type = "car",
        name = "caravan",
        icon = "__pyalienlife__/graphics/icons/caravan.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
        minable = {mining_time = 0.5, result = "caravan"},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        max_health = 2000,
        corpse = "tank-remnants",
        dying_explosion = "medium-explosion",
        alert_icon_shift = util.by_pixel(-4, -13),
        immune_to_tree_impacts = true,
        immune_to_rock_impacts = true,
        energy_per_hit_point = 0.5,
        resistances =
        {
          {
            type = "fire",
            decrease = 15,
            percent = 60
          },
          {
            type = "physical",
            decrease = 15,
            percent = 60
          },
          {
            type = "impact",
            decrease = 50,
            percent = 80
          },
          {
            type = "explosion",
            decrease = 15,
            percent = 70
          },
          {
            type = "acid",
            decrease = 0,
            percent = 70
          }
        },
        collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
        selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
        drawing_box = {{-1.8, -1.8}, {1.8, 1.5}},
        effectivity = 0.9,
        braking_power = "400kW",
        burner =
        {
          fuel_category = "food",
          effectivity = 1,
          fuel_inventory_size = 2,
          --[[
		  smoke =
          {
            {
              name = "tank-smoke",
              deviation = {0.25, 0.25},
              frequency = 50,
              position = {0, 1.5},
              starting_frame = 0,
              starting_frame_deviation = 60
            }
          }
		  ]]--
        },
        consumption = "600kW",
        terrain_friction_modifier = 0.2,
        friction = 0.002,
        light =
        {
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
            shift = {-0.6, -14},
            size = 2,
            intensity = 0.6,
            color = {r = 0.9, g = 1.0, b = 1.0}
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
            shift = {0.6, -14},
            size = 2,
            intensity = 0.6,
            color = {r = 0.9, g = 1.0, b = 1.0}
          }
        },
        animation =
        {
          layers =
          {
			{
			filenames =
			{
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-01.png",
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-02.png",
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-03.png",
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-04.png",
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-05.png",
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-06.png",
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-07.png",
			  "__pyalienlife__/graphics/entity/caravan/caravan-walk-08.png",
			},
			slice = 8,
			lines_per_file = 8,
			line_length = 8,
			width = 256,
			height = 224,
			frame_count = 30,
			direction_count = 16,
			shift = util.mul_shift(util.by_pixel(-2, -6), 0.5),
			scale = scale,
			},
			{
			filenames =
			{
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-01.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-02.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-03.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-04.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-05.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-05.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-06.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-07.png",
			  "__pyalienlife__/graphics/entity/caravan/sh-caravan-walk-08.png",
			},
			slice = 8,
			lines_per_file = 8,
			line_length = 8,
			width = 256,
			height = 224,
			frame_count = 30,
			shift = util.mul_shift(util.by_pixel(8, 10), 0.5),
			direction_count = 16,
			scale = scale,
			draw_as_shadow = true,
		  }
          }
        },

        sound_no_fuel =
        {
          {
            filename = "__pyalienlife__/sounds/caravan_hungry.ogg",
            volume = 0.6
          }
        },
        sound_minimum_speed = 0.15;
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/fight/tank-engine.ogg",
            volume = 0.6
          },
          activate_sound =
          {
            filename = "__base__/sound/fight/tank-engine-start.ogg",
            volume = 0.6
          },
          deactivate_sound =
          {
            filename = "__base__/sound/fight/tank-engine-stop.ogg",
            volume = 0.6
          },
          match_speed_to_activity = true
        },
        open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
        close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
        rotation_speed = 0.0035,
        tank_driving = true,
        weight = 20000,
        inventory_size = 80,
      }
    }
)
