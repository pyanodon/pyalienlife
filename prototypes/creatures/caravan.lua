local util = require('util')

RECIPE {
    type = 'recipe',
    name = 'caravan',
    energy_required = 50,
    category = 'creature-chamber',
    enabled = false,
    ingredients = {
        {type = 'item', name = 'alien-sample01', amount = 5},
        {type = 'item', name = 'bio-sample', amount = 20},
        {type = 'item', name = 'auog', amount = 1},
		{type = 'item', name = 'animal-sample-01', amount = 2},
        {type = 'item', name = 'moss-gen', amount = 15},
        {type = 'item', name = 'earth-bear-sample', amount = 1},
        {type = 'fluid', name = 'water-saline', amount = 100}
    },
    result = 'caravan'
}:add_unlock('domestication')

ITEM {
    type = 'item-with-tags',
    name = 'caravan',
    icon = '__pyalienlifegraphics2__/graphics/icons/caravan.png',
    icon_size = 64,
    subgroup = 'py-alienlife-special-creatures',
    order = 'a',
    place_result = 'caravan',
    stack_size = 1,
	flags = {'not-stackable'}
}

data:extend{{
	type = 'unit',
	name = 'caravan',
	icon = '__pyalienlifegraphics2__/graphics/icons/caravan.png',
	icon_size = 64,
	flags = {'placeable-player', 'placeable-off-grid', 'not-repairable', 'breaths-air', 'building-direction-8-way'},
	minable = {mining_time = 0.1, result = 'caravan'},
	max_health = 425,
	order = 'b-b-a',
	subgroup = 'enemies',
	healing_per_tick = 0.03,
	collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
	selection_box = {{-1.1, -1.1}, {1.1, 1.1}},
	attack_parameters = {
		type = 'projectile',
		range = 0,
		cooldown = 0,
		ammo_type = _G.make_unit_melee_ammo_type(0),
		--sound = make_biter_roars(0.4),
		animation = {
			layers = {
				{
					filenames = {
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08.png'
					},
					slice = 8,
					lines_per_file = 8,
					line_length = 8,
					width = 256,
					height = 224,
					frame_count = 30,
					direction_count = 16,
					shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
				},
				{
					filenames = {
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01-mask.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02-mask.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03-mask.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04-mask.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05-mask.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06-mask.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07-mask.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08-mask.png'
					},
					slice = 8,
					tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
					lines_per_file = 8,
					line_length = 8,
					width = 256,
					height = 224,
					frame_count = 30,
					direction_count = 16,
					shift = util.mul_shift(util.by_pixel(-0, -0), 0.5)
				},
				{
					filenames = {
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-01.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-02.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-03.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-04.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-05.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-06.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-07.png',
						'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-08.png'
					},
					slice = 8,
					lines_per_file = 8,
					line_length = 8,
					width = 256,
					height = 224,
					frame_count = 30,
					shift = util.mul_shift(util.by_pixel(0, 48)),
					direction_count = 16,
					--scale = scale,
					draw_as_shadow = true
				}
			}
		}
	},
	vision_distance = 30,
	movement_speed = 0.1,
	distance_per_frame = 0.13,
	pollution_to_join_attack = 4,
	distraction_cooldown = 300,
	min_pursue_time = 10 * 60,
	max_pursue_distance = 50,
	dying_explosion = 'blood-explosion-small',
	has_belt_immunity = true,
	affected_by_tiles = true,
	run_animation = {
		layers = {
			{
				filenames = {
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08.png'
				},
				slice = 8,
				lines_per_file = 8,
				line_length = 8,
				width = 256,
				height = 224,
				frame_count = 30,
				direction_count = 16,
				shift = util.mul_shift(util.by_pixel(-0, -0)),
				scale = _G.scale
			},
			{
				filenames = {
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-01-mask.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-02-mask.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-03-mask.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-04-mask.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-05-mask.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-06-mask.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-07-mask.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/caravan-walk-08-mask.png'
				},
				slice = 8,
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
				lines_per_file = 8,
				line_length = 8,
				width = 256,
				height = 224,
				frame_count = 30,
				direction_count = 16,
				shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
				scale = _G.scale
			},
			{
				filenames = {
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-01.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-02.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-03.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-04.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-05.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-06.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-07.png',
					'__pyalienlifegraphics2__/graphics/entity/caravan/sh-caravan-walk-08.png'
				},
				slice = 8,
				lines_per_file = 8,
				line_length = 8,
				width = 256,
				height = 224,
				frame_count = 30,
				shift = util.mul_shift(util.by_pixel(-0, 48)),
				direction_count = 16,
				draw_as_shadow = true
			}
		}
	}
}}

data:extend{
	{
		type = 'custom-input',
		name = 'open-caravan-gui',
		key_sequence = '',
		linked_game_control = 'open-gui'
	},
	{
        type = 'ammo-category',
        name = 'caravan-control',
    }
}

ITEM {
    type = 'capsule',
    name = 'caravan-control',
    icon = '__pyalienlifegraphics2__/graphics/icons/carrot-on-a-stick.png',
    icon_size = 64,
    order = 'a',
    stack_size = 1,
	flags = {'hidden', 'not-stackable', 'only-in-cursor'},
	capsule_action = {
		type = 'throw',
		attack_parameters = {
			type = 'stream',
			range = 99999,
			cooldown = 1,
			ammo_type = {
				category = 'caravan-control',
				target_type = 'position',
			}
		}
	}
}

local style = data.raw['gui-style'].default

style.py_caravan_camera = {
	type = 'camera_style',
	minimal_height = 256,
	minimal_width = 256,
	horizontally_stretchable = 'on',
	graphical_set = {}
}

style.py_empty_widget = {
	type = 'empty_widget_style',
	horizontally_stretchable = 'stretch_and_expand',
	horizontally_squashable = 'on',
}

local button_style = style.button
style.py_clicked_train_schedule_action_button = {
  type = 'button_style',
  parent = 'train_schedule_action_button',
  default_font_color = button_style.selected_font_color,
  default_graphical_set = button_style.selected_graphical_set,
  hovered_font_color = button_style.selected_hovered_font_color,
  hovered_graphical_set = button_style.selected_hovered_graphical_set,
  clicked_font_color = button_style.selected_clicked_font_color,
  clicked_graphical_set = button_style.selected_clicked_graphical_set
}

style.py_compact_notched_slider = {
  type = 'slider_style',
  parent = 'notched_slider',
  horizontally_squashable = 'on',
  natural_width = 400,
  minimal_width = 20
}

style.py_compact_slider_value_textfield = {
	type = 'textbox_style',
	parent = 'slider_value_textfield',
	width = 40
}

style.py_schedule_move_button = {
	type = 'button_style',
	parent = 'train_schedule_delete_button',
	default_graphical_set = {
		base = {position = {68, 0}, corner_size = 8},
		shadow = {position = {399, 90}, corner_size = 4, draw_type = 'outer'} -- Removes black lines at right and bottom of shadow
	}
}

-- From Xorimuth's "Spidertron Patrols"
-- https://mods.factorio.com/mod/SpidertronPatrols
data:extend{
	{
		type = 'sprite',
		name = 'up-black',
		filename = '__pyalienlifegraphics2__/graphics/icons/up-black.png',
		size = 32,
		flags = {'gui-icon'}
	},
	{
		type = 'sprite',
		name = 'up-white',
		filename = '__pyalienlifegraphics2__/graphics/icons/up-white.png',
		size = 32,
		flags = {'gui-icon'}
	},
	{
		type = 'sprite',
		name = 'down-black',
		filename = '__pyalienlifegraphics2__/graphics/icons/down-black.png',
		size = 32,
		flags = {'gui-icon'}
	},
	{
		type = 'sprite',
		name = 'down-white',
		filename = '__pyalienlifegraphics2__/graphics/icons/down-white.png',
		size = 32,
		flags = {'gui-icon'}
	}
}
