local util = require('util')

RECIPE {
    type = 'recipe',
    name = 'outpost-aerial',
    energy_required = 50,
    category = 'crafting',
    enabled = false,
	ingredients = {
        {type = 'item', name = 'iron-plate', amount = 5}
    },
    result = 'outpost-aerial'
}:add_unlock('domestication-mk02')

ITEM {
    type = 'item',
    name = 'outpost-aerial',
    icon = '__pyalienlifegraphics2__/graphics/icons/flyavan-outpost.png',
    icon_size = 64,
    subgroup = 'py-alienlife-special-creatures',
    order = 'a',
    place_result = 'outpost-aerial',
    stack_size = 10
}

data:extend{{
	name = 'outpost-aerial',
	type = 'container',
	circuit_connector_sprites = table.deepcopy(data.raw.container['steel-chest'].circuit_connector_sprites),
	circuit_wire_connection_point = table.deepcopy(data.raw.container['steel-chest'].circuit_wire_connection_point),
	circuit_wire_max_distance = 9,
	close_sound = {
		filename = '__base__/sound/metallic-chest-close.ogg',
		volume = 0.42999999999999998
	},
	collision_box = {
		{
			-0.35,
			-0.35
		},
		{
			0.35,
			0.35
		}
	},
	corpse = 'steel-chest-remnants',
	damaged_trigger_effect = {
		damage_type_filters = 'fire',
		entity_name = 'spark-explosion',
		offset_deviation = {
			{
				-0.5,
				-0.5
			},
			{
				0.5,
				0.5
			}
		},
		offsets = {
			{
				0,
				1
			}
		},
		type = 'create-entity'
	},
	dying_explosion = 'steel-chest-explosion',
	fast_replaceable_group = 'container',
	flags = {
		'placeable-neutral',
		'player-creation'
	},
	icon = '__base__/graphics/icons/steel-chest.png',
	icon_mipmaps = 4,
	icon_size = 64,
	inventory_size = 48,
	max_health = 350,
	minable = {
		mining_time = 0.2,
		result = 'steel-chest'
	},
	open_sound = {
		filename = '__base__/sound/metallic-chest-open.ogg',
		volume = 0.42999999999999998
	},
	picture = {
		layers = {
			{
				filename = '__base__/graphics/entity/steel-chest/steel-chest.png',
				height = 40,
				hr_version = {
					filename = '__base__/graphics/entity/steel-chest/hr-steel-chest.png',
					height = 80,
					priority = 'extra-high',
					scale = 0.5,
					shift = {
						-0.0078125,
						-0.015625
					},
					width = 64
				},
				priority = 'extra-high',
				shift = {
					0,
					-0.015625
				},
				width = 32
			},
			{
				draw_as_shadow = true,
				filename = '__base__/graphics/entity/steel-chest/steel-chest-shadow.png',
				height = 22,
				hr_version = {
					draw_as_shadow = true,
					filename = '__base__/graphics/entity/steel-chest/hr-steel-chest-shadow.png',
					height = 46,
					priority = 'extra-high',
					scale = 0.5,
					shift = {
						0.3828125,
						0.25
					},
					width = 110
				},
				priority = 'extra-high',
				shift = {
					0.375,
					0.234375
				},
				width = 56
			}
		}
	},
	resistances = {
		{
			percent = 90,
			type = 'fire'
		},
		{
			percent = 60,
			type = 'impact'
		}
	},
	selection_box = {
		{
			-0.5,
			-0.5
		},
		{
			0.5,
			0.5
		}
	}
}}
