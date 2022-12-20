local item_icon = '__pyalienlifegraphics3__/graphics/icons/perfect-samples.png' -- change this

RECIPE {
  type = 'recipe',
  name = 'digosaurus-mk02',
  energy_required = 180,
  category = 'creature-chamber',
  enabled = false,
  ingredients = {
    {type = 'item', name = 'iron-plate', amount = 1},
  },
  result = 'digosaurus-mk02'
}:add_unlock{'nexelit-mk02'}

ITEM {
  type = 'item',
  name = 'digosaurus-mk02',
  icon = item_icon,
  icon_size = 64,
  subgroup = 'py-alienlife-special-creatures',
  order = 'xb',
  stack_size = 1,
  flags = {'not-stackable'},
  localised_name = {'entity-name.digosaurus-mk02'},
  localised_description = {'entity-description.digosaurus-mk02'}
}

local running_animation = {layers = {
  {
    filename = '__pyalienlifegraphics3__/graphics/entity/dig-osaur/walk.png',
    width = 128,
    height = 128,
    shift = util.by_pixel(0.0, 0.0),
    frame_count = 18,
    direction_count = 8,
    animation_speed = 1,
    scale = 1
  },
  {
    filename = '__pyalienlifegraphics3__/graphics/entity/dig-osaur/walk-sh.png',
    width = 128,
    height = 128,
    shift = util.by_pixel(6, 0),
    frame_count = 18,
    direction_count = 8,
    animation_speed = 1,
    draw_as_shadow = true,
    scale = 1
  }
}}

local mining_animation = {layers = {
  {
    stripes = {
      {
        filename = '__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-1.png',
        width_in_frames = 17,
        height_in_frames = 8
      },
      {
        filename = '__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-2.png',
        width_in_frames = 18,
        height_in_frames = 8
      }
    },
    width = 128,
    height = 128,
    shift = util.by_pixel(0, 0),
    frame_count = 35,
    direction_count = 8,
    animation_speed = 1,
    scale = 1
  },
  {
    stripes = {
      {
        filename = '__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-sh1.png',
        width_in_frames = 17,
        height_in_frames = 8
      },
      {
        filename = '__pyalienlifegraphics3__/graphics/entity/dig-osaur/mining-sh2.png',
        width_in_frames = 18,
        height_in_frames = 8
      }
    },
    width = 128,
    height = 128,
    shift = util.by_pixel(6, 0),
    frame_count = 35,
    direction_count = 8,
    animation_speed = 1,
    draw_as_shadow = true,
    scale = 1
  }
}}

ENTITY {
	type = 'unit',
	name = 'digosaurus-mk02',
	icon = item_icon,
	icon_size = 64,
	flags = {'placeable-neutral', 'placeable-player', 'player-creation', 'placeable-off-grid', 'breaths-air', 'not-repairable', 'not-on-map', 'not-flammable'},
	max_health = 900,
	subgroup = 'creatures',
	healing_per_tick = 0.01,
	collision_box = {{0,0}, {0,0}},
  collision_mask = {},
	attack_parameters = {
		type = 'projectile',
		range = 1,
		cooldown = 30,
		ammo_type = _G.make_unit_melee_ammo_type(1),
		animation = mining_animation
	},
  selectable_in_game = false,
	vision_distance = 30,
	movement_speed = 0.076,
	distance_per_frame = 0.13,
	pollution_to_join_attack = 4,
	distraction_cooldown = 300,
	min_pursue_time = 10 * 60,
	max_pursue_distance = 50,
	dying_explosion = 'blood-explosion-small',
	has_belt_immunity = true,
	affected_by_tiles = true,
	run_animation = running_animation
}