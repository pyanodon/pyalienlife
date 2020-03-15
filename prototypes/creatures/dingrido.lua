local util = require('util')

RECIPE{
    type = "recipe",
    name = "dingrido",
    energy_required = 90,
    category = 'creature-chamber',
    enabled = false,
    ingredients =
    {
      {type = 'item', name = 'alien-sample-02', amount = 10},
      {type = 'item', name = 'cdna', amount = 30},
      {type = 'item', name = 'cbp', amount = 10},
      {type = 'item', name = 'bio-sample', amount = 100},
      {type = 'item', name = 'dingrits-codex', amount = 5},
      {type = 'item', name = 'earth-wolf-sample', amount = 10},
      {type = 'fluid', name = 'fetal-serum', amount = 100},
      {type = 'fluid', name = 'artificial-blood', amount = 200},
    },
    result = "dingrido"
  }:add_unlock("domestication-mk02")

ITEM{
    type = "item-with-entity-data",
    name = "dingrido",
    icon = "__pyalienlifegraphics__/graphics/icons/dingrido.png",
    icon_size = 64,
    subgroup = "py-alienlife-buildings-others",
    order = "x",
    place_result = "dingrido",
    stack_size = 5
  }

data:extend(
    {
      {
        type = "car",
        name = "dingrido",
        icon = "__pyalienlifegraphics__/graphics/icons/dingrido.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
        minable = {mining_time = 0.5, result = "dingrido"},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        max_health = 3000,
        corpse = "medium-biter-corpse",
        dying_explosion = "blood-explosion-huge",
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
            decrease = 20,
            percent = 100
          },
          {
            type = "explosion",
            decrease = 20,
            percent = 100
          },
          {
            type = "acid",
            decrease = 0,
            percent = 70
          }
        },
        collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
        selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
        drawing_box = {{-1.8, -1.8}, {1.8, 1.8}},
        effectivity = 0.98,
        braking_power = "2000kW",
        burner =
        {
          fuel_category = "food",
          effectivity = 1,
          fuel_inventory_size = 1,
        },
        consumption = "500kW",
        terrain_friction_modifier = 0.01,
        friction = 0.001,
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
            shift = {-0.1, -7},
            size = 1,
            intensity = 0.7,
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
            shift = {0.1, -7},
            size = 1,
            intensity = 0.7,
            color = {r = 0.9, g = 1.0, b = 1.0}
          }
        },
        animation =
        {
          layers =
          {
          {
          priority = "low",
          width = 128,
          height = 128,
          frame_count = 16,
          direction_count = 64,
          shift = util.by_pixel(-0.0, -0.0),
          animation_speed = 1,
          max_advance = 1,
          stripes =
          {
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-01.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-02.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-03.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-04.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
          },
          hr_version =
          {
            priority = "low",
            width = 256,
            height = 256,
            frame_count = 16,
            direction_count = 64,
            shift = util.by_pixel(-0.0, -0.0),
            animation_speed = 1,
            max_advance = 1,
            stripes =
            {
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-01.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-02.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-03.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-04.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
            },
            scale = 0.85
          }
          },
          {
          priority = "low",
          width = 128,
          height = 128,
          frame_count = 16,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(0.0, 0.0),
          max_advance = 1,
          animation_speed = 1,
          stripes =
          {
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-01.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-02.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-03.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
            {
             filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/dingrit-sh-04.png",
             width_in_frames = 16,
             height_in_frames = 16
            },
          },
          hr_version =
          {
            priority = "low",
            width = 256,
            height = 256,
            frame_count = 16,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(0.0, 0.0),
            max_advance = 1,
            animation_speed = 1,
            stripes =
            {
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-sh-01.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-sh-02.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-sh-03.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
              {
              filename = "__pyalienlifegraphics3__/graphics/entity/dingrit/hr-dingrit-sh-04.png",
              width_in_frames = 16,
              height_in_frames = 16
              },
            },
            scale = 0.85
          }
        }
      }
    },

        turret_animation =
        {
          layers =
          {
            {
              filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
              priority = "low",
              --line_length = 8,
              width = 32,
              height = 32,
              frame_count = 1,
              direction_count = 1,
              shift = util.by_pixel(-0.0, -0.0),
              --animation_speed = 8,
            },
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
            filename = "__pyalienlifegraphics__/sounds/dingrit-breath.ogg",
            volume = 1
          },
          --activate_sound =
          --{
          --  filename = "__base__/sound/fight/tank-engine-start.ogg",
          --  volume = 0.6
          --},
          --deactivate_sound =
          --{
          --  filename = "__base__/sound/fight/tank-engine-stop.ogg",
          --  volume = 0.6
          --},
          match_speed_to_activity = false
        },
        open_sound = { filename = "__pyalienlifegraphics3__/sounds/dingrito-in.ogg", volume=0.9 },
        close_sound = { filename = "__pyalienlifegraphics3__/sounds/dingrito-out.ogg", volume = 0.9 },
        rotation_speed = 0.0035,
        tank_driving = true,
        weight = 9000,
        inventory_size = 250,
        guns = {}
      }
    }
  )