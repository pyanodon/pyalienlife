local util = require('util')

RECIPE{
    type = "recipe",
    name = "qaavi",
    energy_required = 120,
    category = 'creature-chamber',
    enabled = false,
    ingredients =
    {
      {type = 'item', name = 'enzyme-pks', amount = 1},
      {type = 'item', name = 'zymogens', amount = 5},
      {type = 'item', name = 'phadai', amount = 1},
      {type = 'item', name = 'bio-sample', amount = 100},
      {type = 'item', name = 'earth-generic-sample', amount = 50},
      {type = 'item', name = 'earth-tiger-sample', amount = 2},
      {type = 'fluid', name = 'artificial-blood', amount = 300},
      {type = 'fluid', name = 'water-saline', amount = 500},
    },
    result = "qaavi"
  }:add_unlock("pharmagenomics")

ITEM{
    type = "item-with-entity-data",
    name = "qaavi",
    icon = "__pyalienlifegraphics__/graphics/icons/phadaisus.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "x",
    place_result = "qaavi",
    stack_size = 5
  }

data:extend(
    {
      {
        type = "car",
        name = "qaavi",
        icon = "__pyalienlifegraphics__/graphics/icons/phadaisus.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
        minable = {mining_time = 0.5, result = "qaavi"},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        max_health = 5000,
        corpse = "big-biter-corpse",
        dying_explosion = "blood-explosion-huge",
        alert_icon_shift = util.by_pixel(-4, -13),
        immune_to_tree_impacts = true,
        has_belt_immunity = true,
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
        collision_box = {{0,0}, {0,0}},
        collision_mask = {},
        selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
        drawing_box = {{-1.8, -1.8}, {1.8, 1.8}},
        effectivity = 1,
        braking_power = "2000kW",
        burner =
        {
          fuel_category = "food",
          effectivity = 1,
          fuel_inventory_size = 1,
        },
        consumption = "140kW",
        --terrain_friction_modifier = 0.01,
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
          priority = "high",
          width = 352,
          height = 352,
          frame_count = 15,
          slice = 5,
          lines_per_file = 5,
          direction_count = 64,
          shift = util.by_pixel(20, -0.0),
          animation_speed = 0.8,
          max_advance = 1,
          filenames =
          {
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a1.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a2.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a3.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a4.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a5.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a6.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a7.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a8.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a9.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a10.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a11.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a12.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a13.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a14.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a15.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a16.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a17.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a18.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a19.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a20.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a21.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a22.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a23.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a24.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a25.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a26.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a27.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a28.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a29.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a30.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a31.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a32.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a33.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a34.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a35.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a36.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a37.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a38.png",
            "__pyalienlifegraphics3__/graphics/entity/phadaisus/a39.png",
          },
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
            filename = "__pyalienlifegraphics3__/sounds/phadaisus-breath.ogg",
            volume = 0.35
          }
        },
        sound_minimum_speed = 0.05;
        sound_scaling_ratio = 0.8,
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
          sound =
          {
            filename = "__pyalienlifegraphics3__/sounds/phadaisus-breath.ogg",
            volume = 0.25
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
        open_sound = { filename = "__pyalienlifegraphics3__/sounds/phadaisus-in.ogg", volume=0.7 },
        close_sound = { filename = "__pyalienlifegraphics3__/sounds/phadaisus-out.ogg", volume = 0.5 },
        rotation_speed = 0.015,
        --tank_driving = true,
        weight = 600,
        inventory_size = 250,
        --guns = {"flamethrower"}
        render_layer = 'air-object'
      }
    }
  )