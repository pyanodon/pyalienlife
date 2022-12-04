local util = require('util')

RECIPE {
    type = 'recipe',
    name = 'outpost',
    energy_required = 50,
    category = 'crafting',
	enabled = false,
    ingredients = {
        {type = 'item', name = 'steel-plate', amount = 5},
		{type = 'item', name = 'small-parts-01', amount = 50},
		{type = 'item', name = 'duralumin', amount = 10},
		{type = 'item', name = 'concrete', amount = 20},
		{type = 'item', name = 'electronic-circuit', amount = 3},
		{type = 'item', name = 'glass', amount = 5},
    },
    result = 'outpost'
}:add_unlock('domestication')

ITEM {
    type = 'item',
    name = 'outpost',
    icon = '__pyalienlifegraphics2__/graphics/icons/outpost.png',
    icon_size = 64,
    subgroup = 'py-alienlife-special-creatures',
    order = 'a',
    place_result = 'outpost',
    stack_size = 10
}

data:extend{{
	name = 'outpost',
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
			-2.9,
			-2.9
		},
		{
			2.9,
			2.9
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
				filename = '__pyalienlifegraphics2__/graphics/entity/outpost/off.png',
				height = 224,
				width = 224,
				priority = 'extra-high',
				shift = util.by_pixel(16, -16),
			},
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
			-3.0,
			-3.0
		},
		{
			3.0,
			3.0
		}
	}
}}
