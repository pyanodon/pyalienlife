RECIPE {
    type = "recipe",
    name = "land-bot",
    energy_required = 4,
    enabled = true,
    ingredients =
    {
        {"engine-unit",        20},
        {"electronic-circuit", 10},
        {"steel-plate",        30}
    },
    result = "land-bot"
} --:add_unlock("domestication")

ITEM {
    type = "item-with-entity-data",
    name = "land-bot",
    icon = "__pyalienlifegraphics__/graphics/icons/land-beetle.png",
    icon_size = 64,
    subgroup = "transport",
    order = "a",
    place_result = "land-bot",
    stack_size = 10
}

data:extend
{
    {
        type = "unit",
        name = "land-bot",
        icon = "__pyalienlifegraphics__/graphics/icons/land-beetle.png",
        icon_size = 64,
        flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air"},
        minable = {mining_time = 0.1, result = "land-bot"},
        max_health = 25,
        order = "b-b-a",
        subgroup = "enemies",
        resistances = {},
        healing_per_tick = 0.01,
        collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        --[[
    --handles enemy loot dropping
    loot =
      {
        {
          count_max = 1,
          count_min = 1,
          item = "iron-ore",
          probability = 1
        }
      },
	]] --
        attack_parameters =
        {
            type = "projectile",
            range = 0.5,
            cooldown = 35,
            ammo_category = "melee",
            ammo_type = _G.make_unit_melee_ammo_type(7),
            sound = _G.make_biter_roars(0.4),
            animation =
            {
                layers =
                {
                    {
                        filenames =
                        {
                            "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle.png",
                            "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle-2.png",
                        },
                        slice = 16,
                        lines_per_file = 16,
                        line_length = 16,
                        width = 128,
                        height = 128,
                        frame_count = 21,
                        direction_count = 16,
                        --shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
                        scale = 0.5,
                    },
                    {
                        filenames =
                        {
                            "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle-sh.png",
                            "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle-sh-2.png",
                        },
                        slice = 16,
                        lines_per_file = 16,
                        line_length = 16,
                        width = 128,
                        height = 128,
                        frame_count = 21,
                        --shift = util.mul_shift(util.by_pixel(0, 48)),
                        direction_count = 16,
                        scale = 0.5,
                        draw_as_shadow = true,
                    }
                }
            },
        },
        vision_distance = 30,
        movement_speed = 0.07,
        distance_per_frame = 0.03,
        absorptions_to_join_attack = {pollution = 4},
        distraction_cooldown = 300,
        min_pursue_time = 10 * 60,
        max_pursue_distance = 50,
        --corpse = "arthurian-corpse",
        dying_explosion = "blood-explosion-small",
        dying_sound = _G.make_biter_dying_sounds(0.4),
        working_sound = _G.make_biter_calls(0.3),
        run_animation =
        {
            layers =
            {
                {
                    filenames =
                    {
                        "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle.png",
                        "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle-2.png",
                    },
                    slice = 16,
                    lines_per_file = 16,
                    line_length = 16,
                    width = 128,
                    height = 128,
                    frame_count = 21,
                    direction_count = 16,
                    --shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
                    scale = 0.5,
                },
                {
                    filenames =
                    {
                        "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle-sh.png",
                        "__pyalienlifegraphics__/graphics/entity/land-beetle/beetle-sh-2.png",
                    },
                    slice = 16,
                    lines_per_file = 16,
                    line_length = 16,
                    width = 128,
                    height = 128,
                    frame_count = 21,
                    --shift = util.mul_shift(util.by_pixel(0, 48)),
                    direction_count = 16,
                    scale = 0.5,
                    draw_as_shadow = true,
                }
            }
        },
    }
    --[[
	caravan.add_arthur_die_animation(scale, --small_biter_tint1, small_biter_tint2,
	{
		type = "corpse",
		name = "caravan-corpse",
		icon = "__base__/graphics/icons/small-biter-corpse.png",
		icon_size = 32,
		selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selectable_in_game = false,
		subgroup="corpses",
		order = "c[corpse]-a[biter]-a[small]",
		flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"}
	}
	)
	]] --
}
