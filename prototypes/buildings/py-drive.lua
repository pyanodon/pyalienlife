	RECIPE {
        type = "recipe",
        name = 'pydrive',
        enabled = false,
        ingredients =
			{
        {type = 'item', name = 'neuromorphic-chip', amount = 10},
        {type = 'item', name = 'super-steel', amount = 200},
        {type = 'item', name = 'processing-unit', amount = 20},
        {type = 'item', name = 'small-parts-03', amount = 100},
        {type = 'item', name = 'alien-sample-03', amount = 4},
        {type = 'item', name = 'vonix', amount = 2},
        {type = 'item', name = 'earth-cow-sample', amount = 10},
        {type = 'item', name = 'gh', amount = 4},
        {type = 'item', name = 'enzyme-pks', amount = 2},
        {type = 'item', name = 'upgrader-mk02', amount = 1},
        {type = 'item', name = 'automated-factory-mk01', amount = 1},

			},
        results = {
            {'pydrive', 1}
        }
    }:add_unlock("domestication-mk03")

    ITEM {
        type = "item",
        name = 'pydrive',
        icon = "__pyalienlifegraphics3__/graphics/icons/logistic-station.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-alienlife-buildings-others",
        order = 'a',
        place_result = 'pydrive',
        stack_size = 15
    }

	ENTITY {
        type = "container",
        name = 'pydrive',
        icon = "__pyalienlifegraphics3__/graphics/icons/logistic-station.png",
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
        collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
        selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
        drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
        inventory_size = 800,
        scale_info_icons = true,
		picture = {
            filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/off.png",
            priority = "high",
            width = 512,
            height = 576,
            --scale = 0.5,
            shift = util.by_pixel(16, -48),
        }
    }

    ENTITY {
        type = "simple-entity",
        name = "pydrive_skin",
        icon = "__pyalienlifegraphics3__/graphics/icons/logistic-station.png",
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
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b1.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-240, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b2.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-208, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b3.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-176, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b4.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-144, 80),
                run_mode = "backward",
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b5.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-112, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b6.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-80, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b7.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-48, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b8.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-16, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b9.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(16, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b10.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(48, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b11.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(80, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b12.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(112, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b13.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(144, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b14.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(176, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/b15.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(208, 80),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t1.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-240, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t2.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-208, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t3.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-176, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t4.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-144, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t5.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-112, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t6.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-80, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t7.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-48, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t8.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(-16, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t9.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(16, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t10.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(48, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t11.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(80, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t12.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(112, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t13.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(144, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t14.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(176, -208),
                animation_speed = 0.18
              },
              {
                filename = "__pyalienlifegraphics3__/graphics/entity/logistic-station/t15.png",
                width = 32,
                height = 288,
                line_length = 50,
                frame_count = 250,
                shift = util.by_pixel(208, -208),
                animation_speed = 0.18
              },

          }
        },
        --vehicle_impact_sound = sounds.generic_impact,
      }