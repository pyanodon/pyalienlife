--[[
RECIPE {
    type = "recipe",
    name = "arthurian-pen-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "concrete", amount = 200},
        {type = "item", name = "titanium-plate", amount = 100},
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "glass", amount = 20},
        {type = "item", name = "advanced-circuit", amount = 35},
    },
    results = {
        {type = "item", name = "arthurian-pen-mk01", amount = 1}
    }
}:add_unlock("arthurian")
]]--
ITEM {
    type = "item",
    name = "py-filter-chest",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "py-filter-chest",
    stack_size = 10
}

ENTITY  {
    type = "car",
    name = "py-filter-chest",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 32,
    -- flags = {"placeable-neutral", "player-creation"},
	can_be_part_of_blueprint = true,
    minable = {mining_time = 0.2, result = "py-filter-chest"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 350,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(0, 0),
    energy_per_hit_point = 1,
    crash_trigger = _G.crash_trigger(),
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    effectivity = 0.5,
    braking_power = "200kW",
	energy_source =
		{
			type = "void"
		},
    consumption = "150kW",
    friction = 2e-3,
	render_layer = "object",
    animation =
   {
    layers =
   {
    {
          priority = "extra-high",
          width = 64,
          height = 80,
		  scale = 0.5,
          frame_count = 1,
          direction_count = 1,
          shift = {0, 0},
          animation_speed = 0.1,
          max_advance = 0,
          stripes =
          {
            {
             filename = "__base__/graphics/entity/steel-chest/hr-steel-chest.png",
             width_in_frames = 1,
             height_in_frames = 1,
            },

          },
        },


      }
    },
    turret_rotation_speed = 0 / 60,
    rotation_speed = 0,
    weight = 700,
    guns = {  },
    inventory_size = 40
  }
