local item_icon = '__pyalienlifegraphics3__/graphics/icons/thikat.png'

RECIPE {
  type = 'recipe',
  name = 'thikat',
  energy_required = 180,
  category = 'creature-chamber',
  enabled = false,
  ingredients = {
    {type = 'item', name = 'iron-plate', amount = 1},
  },
  result = 'thikat'
}:add_unlock{'nexelit-mk02'}

ITEM {
  type = 'item',
  name = 'thikat',
  icon = item_icon,
  icon_size = 64,
  subgroup = 'py-alienlife-special-creatures',
  order = 'xb',
  stack_size = 1,
  flags = {'not-stackable'},
  localised_name = {'entity-name.thikat'},
  localised_description = {'entity-description.thikat'}
}

local running_animation = {layers = {
        {
					filenames = {
						'__pyalienlifegraphics3__/graphics/entity/thikat/w1.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/w2.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/w3.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/w4.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/w5.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/w6.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/w7.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/w8.png'
					},
					slice = 6,
					lines_per_file = 5,
					line_length = 6,
					width = 288,
					height = 256,
					frame_count = 30,
					direction_count = 8,
          scale = 1.15,
					shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
				},
        {
					filenames = {
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws1.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws2.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws3.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws4.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws5.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws6.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws7.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/ws8.png'
					},
					slice = 6,
					lines_per_file = 5,
					line_length = 6,
					width = 288,
					height = 256,
					frame_count = 30,
					direction_count = 8,
          draw_as_shadow = true,
          scale = 1.15,
					shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
				},
}}

local mining_animation = {layers = {
        {
					filenames = {
						'__pyalienlifegraphics3__/graphics/entity/thikat/a1.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/a2.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/a3.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/a4.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/a5.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/a6.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/a7.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/a8.png'
					},
					slice = 7,
					lines_per_file = 7,
					line_length = 7,
					width = 288,
					height = 256,
					frame_count = 49,
					direction_count = 8,
          animation_speed = 1/2,
          scale = 1.15,
					shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
				},
        {
					filenames = {
						'__pyalienlifegraphics3__/graphics/entity/thikat/as1.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/as2.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/as3.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/as4.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/as5.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/as6.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/as7.png',
						'__pyalienlifegraphics3__/graphics/entity/thikat/as8.png'
					},
					slice = 7,
					lines_per_file = 7,
					line_length = 7,
					width = 288,
					height = 256,
					frame_count = 49,
					direction_count = 8,
          animation_speed = 1/2,
          draw_as_shadow = true,
          scale = 1.15,
					shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
				},
}}

ENTITY {
	type = 'unit',
	name = 'thikat',
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
		cooldown = 49 * 2 ,
		ammo_type = _G.make_unit_melee_ammo_type(1),
		animation = mining_animation
	},
  selectable_in_game = false,
	vision_distance = 30,
	movement_speed = 0.070,
	distance_per_frame = 0.10,
	pollution_to_join_attack = 4,
	distraction_cooldown = 300,
	min_pursue_time = 10 * 60,
	max_pursue_distance = 50,
	dying_explosion = 'blood-explosion-small',
	has_belt_immunity = true,
	affected_by_tiles = true,
	run_animation = running_animation
}