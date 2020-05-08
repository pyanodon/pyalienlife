	RECIPE {
        type = "recipe",
        name = 'pydrive',
        enabled = true,
        ingredients =
			{
			{'iron-plate', 5}
			},
        results = {
            {'pydrive', 1}
        }
    }--:add_unlock("domestication")

    ITEM {
        type = "item",
        name = 'pydrive',
        icon = "__pyalienlifegraphics__/graphics/icons/food-bowl.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-containers-warehouse",
        order = 'a',
        place_result = 'pydrive',
        stack_size = 15
    }

	ENTITY {
        type = "container",
        name = 'pydrive',
        icon = "__pyalienlifegraphics__/graphics/icons/food-bowl.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = 'pydrive'},
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
        close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        resistances = {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
        drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
        inventory_size = 800,
        scale_info_icons = true,
		picture = {
            filename = "__pyalienlifegraphics2__/graphics/entity/outpost/hr-food-bowl.png",
            priority = "high",
            width = 136,
            height = 128,
            scale = 0.5,
            shift = {0, 0},
        }
    }

    ENTITY {
        type = "simple-entity",
        name = "pydrive_skin",
        icon = "__base__/graphics/icons/crash-site-lab-broken.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation", "hidden"},
        subgroup = "py-containers-warehouse",
        order = 'a',
        map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
        max_health = 150,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{0,0}, {0,0}},
        selection_box = {{0,0}, {0,0}},
        --light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
        --integration_patch_render_layer = "decals",
        --integration_patch = hr_crash_site_lab_ground(),
        animations =
        {
          layers =
          {
              {
                filename = "__base__/graphics/entity/beacon/beacon-antenna.png",
                width = 54,
                height = 50,
                line_length = 8,
                frame_count = 32,
                shift = { -0.03125, -1.71875},
                animation_speed = 0.5
              },
              {
                filename = "__base__/graphics/entity/beacon/beacon-base.png",
                width = 116,
                height = 93,
                frame_count = 1,
                line_length = 1,
                animation_speed = 1 / 3,
                shift = { 0.34375, 0.046875}
            },
          }
        },
        --vehicle_impact_sound = sounds.generic_impact,
      }