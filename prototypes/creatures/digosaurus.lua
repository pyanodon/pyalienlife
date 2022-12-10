local item_icon = '__pyalienlifegraphics3__/graphics/icons/dig-osaur.png' -- change this!
local time_taken_for_digosaurus_to_mine = 15 -- seconds

RECIPE {
  type = 'recipe',
  name = 'digosaurus',
  energy_required = 120,
  category = 'creature-chamber',
  enabled = false,
  ingredients = {
    {type = 'item', name = 'alien-sample01', amount = 10},
    {type = 'item', name = 'cdna', amount = 5},
    {type = 'item', name = 'moss-gen', amount = 30},
    {type = 'item', name = 'bio-sample', amount = 100},
    {type = 'item', name = 'animal-sample-01', amount = 5},
    {type = 'item', name = 'earth-generic-sample', amount = 20},
    {type = 'item', name = 'earth-lizard-sample', amount = 1},
    {type = 'fluid', name = 'blood', amount = 300},
    {type = 'fluid', name = 'water-saline', amount = 500},
  },
  result = 'digosaurus'
}

ITEM {
  type = 'item',
  name = 'digosaurus',
  icon = item_icon,
  icon_size = 64,
  subgroup = 'py-alienlife-special-creatures',
  order = 'x',
  stack_size = 1,
  flags = {'not-stackable'},
  localised_name = {'entity-name.digosaurus'},
  localised_description = {'entity-description.digosaurus'}
}

RECIPE {
  type = 'recipe',
  name = 'dino-dig-site',
  enabled = false,
  ingredients = {
      {'steel-plate', 50},
      {'duralumin', 30},
      {'electronic-circuit', 10},
      {'lead-plate', 50},
      {'titanium-plate', 100},
      {'small-parts-01', 100}
  },
  results = {
      {'dino-dig-site', 1}
  }
}

ITEM {
  type = 'item',
  name = 'dino-dig-site',
  icon = '__pyalienlifegraphics3__/graphics/icons/outpost-mining.png',
  icon_size = 64,
  flags = {},
  subgroup = 'py-alienlife-special-creatures',
  order = 'z-a',
  place_result = 'dino-dig-site',
  stack_size = 10
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
	name = 'digosaurus',
	icon = item_icon,
	icon_size = 64,
	flags = {'placeable-neutral', 'placeable-player', 'player-creation', 'placeable-off-grid', 'breaths-air', 'not-repairable', 'not-on-map', 'not-flammable'},
	max_health = 300,
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

data:extend{{
  type = 'recipe-category',
  name = 'dino-dig-site'
}}

local dig_site_graphic = {layers = {
  {
    filename = '__pyalienlifegraphics3__/graphics/entity/outpost-mining/outpost-mining.png',
    priority = 'high',
    width = 224,
    height = 320,
    shift = util.by_pixel(0, -48)
  },
  {
    filename = '__pyalienlifegraphics3__/graphics/entity/outpost-mining/outpost-mining-mask.png',
    priority = 'high',
    width = 224,
    height = 320,
    shift = util.by_pixel(0, -48),
    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
  }
}}

RECIPE {
  type = 'recipe',
  name = 'digosaurus-hidden-recipe',
  ingredients = {},
  results = {{'nexelit-ore', 20000}},
  category = 'dino-dig-site',
  enabled = false
}:add_unlock{'nexelit-mk02'}

ENTITY {
  fixed_recipe = 'digosaurus-hidden-recipe',
  gui_title_key = 'digosaurus-gui.empty',
  type = 'assembling-machine',
  name = 'dino-dig-site',
  icon = '__pyalienlifegraphics3__/graphics/icons/outpost-mining.png',
  icon_size = 64,
  flags = {'placeable-neutral', 'placeable-player', 'player-creation', 'no-automated-item-insertion'},
  minable = {mining_time = 2, result = 'dino-dig-site'},
  max_health = 350,
  corpse = 'big-remnants',
  dying_explosion = 'medium-explosion',
  open_sound = {filename = '__base__/sound/machine-open.ogg', volume = 0.85},
  close_sound = {filename = '__base__/sound/machine-close.ogg', volume = 0.75},
  vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
  collision_box = {{-3.3, -3.2}, {3.3, 3.2}},
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  energy_usage = '1W',
  crafting_speed = 40,
  crafting_categories = {'dino-dig-site'},
  energy_source = {type = 'void'},
  animation = {
    north = dig_site_graphic,
    east = dig_site_graphic,
    south = dig_site_graphic,
    west = dig_site_graphic,
  },
  radius_visualisation_specification = {
    sprite = {
      filename = '__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png',
      width = 10,
      height = 10
    },
    distance = 12.5,
    offset = {0, -16}
  }
}

ENTITY {
  type = 'container',
  localised_name = {'entity-name.dino-dig-site'},
  localised_description = {'entity-description.dino-dig-site'},
  name = 'dino-dig-site-food-input',
  icon = '__pyalienlifegraphics3__/graphics/icons/outpost-mining.png',
  icon_size = 64,
  flags = {'hidden', 'placeable-neutral', 'no-automated-item-removal', 'not-rotatable', 'not-flammable', 'placeable-off-grid', 'hide-alt-info'},
  max_health = 350,
  collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
  collision_mask = {},
  inventory_size = 2,
  enable_inventory_bar = false,
  picture = {
    filename = '__core__/graphics/empty.png',
    width = 1,
    height = 1
  },
  selectable_in_game = false,
  remove_decoratives = false,
  inventory_type = 'with_filters_and_bar'
}

ENTITY {
  type = 'electric-energy-interface',
  localised_name = {'entity-name.dino-dig-site'},
  localised_description = {'entity-description.dino-dig-site'},
  energy_source = {
    type = 'electric',
    usage_priority = 'secondary-input',
    buffer_capacity = (400/60) .. 'kJ'
  },
  energy_usage = '400kW',
  collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
  icon = '__pyalienlifegraphics3__/graphics/icons/outpost-mining.png',
  icon_size = 64,
  collision_mask = {},
  selectable_in_game = false,
  remove_decoratives = false,
  name = 'dino-dig-site-powersource',
  flags = {'placeable-neutral', 'hidden', 'not-selectable-in-game', 'not-rotatable', 'not-flammable', 'placeable-off-grid', 'hide-alt-info'}
}

ENTITY {
  type = 'simple-entity',
  name = 'digosaurus-mineable-proxy',
  localised_name = '',
  localised_description = '',
  icon = item_icon,
  icon_size = 64,
  collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
  selectable_in_game = false,
  remove_decoratives = false,
  flags = {'placeable-neutral', 'hidden', 'not-selectable-in-game', 'not-rotatable', 'not-flammable', 'placeable-off-grid', 'hide-alt-info'},
  max_health = time_taken_for_digosaurus_to_mine,
  picture = {
    filename = '__core__/graphics/empty.png',
    width = 1,
    height = 1
  }
}