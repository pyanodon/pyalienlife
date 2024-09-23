ITEM {
	type = 'capsule',
	name = 'energy-drink',
	icon = '__pyalienlifegraphics__/graphics/icons/energy-drink.png',
	icon_size = 64,
	flags = {},
	subgroup = 'py-alienlife-items',
	order = 'f',
	stack_size = 100,
	capsule_action = {
		attack_parameters = {
			activation_type = 'consume',
			ammo_category = 'capsule',
			ammo_type = {
				action = {
					action_delivery = {
						target_effects = {
							{
								sticker = 'speedup-sticker',
								type = 'create-sticker'
							},
							{
								entity_name = 'slowdown-capsule-explosion',
								type = 'create-entity'
							},
							{
								sound = {
									{
										filename = '__base__/sound/eat-5.ogg',
										volume = 0.6
									},
									{
										filename = '__base__/sound/eat-1.ogg',
										volume = 0.6
									},
									{
										filename = '__base__/sound/eat-2.ogg',
										volume = 0.6
									},
									{
										filename = '__base__/sound/eat-3.ogg',
										volume = 0.6
									},
									{
										filename = '__base__/sound/eat-4.ogg',
										volume = 0.6
									}
								},
								type = 'play-sound'
							}
						},
						type = 'instant'
					},
					type = 'direct'
				},
				category = 'capsule',
				target_type = 'position'
			},
			cooldown = 30,
			range = 0,
			type = 'projectile'
		},
		type = 'use-on-self'
	}
}

local speedup_sticker = table.deepcopy(data.raw['sticker']['slowdown-sticker'])
speedup_sticker.name = 'speedup-sticker'
speedup_sticker.duration_in_ticks = 60 * 60
speedup_sticker.target_movement_modifier_from = 20
speedup_sticker.target_movement_modifier_to = 1
data:extend{speedup_sticker}