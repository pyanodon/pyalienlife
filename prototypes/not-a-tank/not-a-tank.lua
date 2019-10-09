RECIPE{
    type = "recipe",
    name = "not-a-tank",
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"engine-unit", 20},
      {"electronic-circuit", 10},
      {"steel-plate", 30}
    },
    result = "not-a-tank"
  }

ITEM{
    type = "item-with-entity-data",
    name = "not-a-tank",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    icon_size = 32,
    subgroup = "transport",
    order = "a[train-system]-f[diesel-locomotive]",
    place_result = "not-a-tank",
    stack_size = 5
  }

data:extend(
    {
      {
        type = "car",
        name = "not-a-tank",
        icon = "__base__/graphics/icons/tank.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
        minable = {mining_time = 0.5, result = "not-a-tank"},
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
          fuel_category = "chemical",
          effectivity = 1,
          fuel_inventory_size = 2,
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
          "__pyaliens__/graphics/entity/arthurian/arthurian-walk-01.png",
          "__pyaliens__/graphics/entity/arthurian/arthurian-walk-02.png",
          "__pyaliens__/graphics/entity/arthurian/arthurian-walk-03.png",
          "__pyaliens__/graphics/entity/arthurian/arthurian-walk-04.png",
          "__pyaliens__/graphics/entity/arthurian/arthurian-walk-05.png",
        },
        slice = 8,
        lines_per_file = 10,
        line_length = 8,
        width = 236,
        height = 179,
        frame_count = 21,
        direction_count = 16,
        shift = util.mul_shift(util.by_pixel(-2, -6), 0.5),
        scale = scale,
      }
            --[[
			{
              priority = "low",
              width = 236,
              height = 179,
              frame_count = 21,
              direction_count = 16,
              shift = util.mul_shift(util.by_pixel(-2, -6), 0.5),
              animation_speed = 8,
              max_advance = 20,
              stripes =
              {
                {
                 filename = "__pyaliens__/graphics/entity/arthurian/arthurian-walk-01.png",
                 width_in_frames = 8,
                 height_in_frames = 10
                },
                {
                 filename = "__pyaliens__/graphics/entity/arthurian/arthurian-walk-02.png",
                 width_in_frames = 8,
                 height_in_frames = 10
                },
                {
                 filename = "__pyaliens__/graphics/entity/arthurian/arthurian-walk-03.png",
                 width_in_frames = 8,
                 height_in_frames = 10
                },
                {
                 filename = "__pyaliens__/graphics/entity/arthurian/arthurian-walk-04.png",
                 width_in_frames = 8,
                 height_in_frames = 10
                },
                {
                  filename = "__pyaliens__/graphics/entity/arthurian/arthurian-walk-05.png",
                  width_in_frames = 8,
                  height_in_frames = 10
                 }
              }
            }
			]]--
          }
        },

        turret_animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/tank/tank-turret.png",
              priority = "low",
              line_length = 8,
              width = 90,
              height = 67,
              frame_count = 1,
              direction_count = 64,
              shift = util.by_pixel(-5, -34.5),
              animation_speed = 8,
              hr_version =
              {
                filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
                priority = "low",
                line_length = 8,
                width = 179,
                height = 132,
                frame_count = 1,
                direction_count = 64,
                shift = util.by_pixel(-4.75, -34.5),
                animation_speed = 8,
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
              priority = "low",
              line_length = 8,
              width = 36,
              height = 33,
              frame_count = 1,
              apply_runtime_tint = true,
              direction_count = 64,
              shift = util.by_pixel(-5, -35.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
                priority = "low",
                line_length = 8,
                width = 72,
                height = 66,
                frame_count = 1,
                apply_runtime_tint = true,
                direction_count = 64,
                shift = util.by_pixel(-5, -35.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
              priority = "low",
              line_length = 8,
              width = 97,
              height = 67,
              frame_count = 1,
              draw_as_shadow = true,
              direction_count = 64,
              shift = util.by_pixel(51.5, 6.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
                priority = "low",
                line_length = 8,
                width = 193,
                height = 134,
                frame_count = 1,
                draw_as_shadow = true,
                direction_count = 64,
                shift = util.by_pixel(51.25, 6.5),
                scale = 0.5
              }
            }
          }
        },
        turret_rotation_speed = 0.35 / 60,
        turret_return_timeout = 300,
        sound_no_fuel =
        {
          {
            filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
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
        guns = { "tank-cannon", "tank-machine-gun", "tank-flamethrower" }
      }
    }
)
