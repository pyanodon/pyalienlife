
RECIPE{
    type = "recipe",
    name = "clone-1",
    energy_required = 120,
    category = 'creature-chamber',
    enabled = false,
    ingredients =
    {
      {type = 'item', name = 'enzyme-pks', amount = 1},
      {type = 'item', name = 'zymogens', amount = 5},
      {type = 'item', name = 'phadai', amount = 1},
      {type = 'item', name = 'bio-sample', amount = 100},
      {type = 'item', name = 'earth-generic-sample', amount = 50},
      {type = 'item', name = 'earth-tiger-sample', amount = 2},
      {type = 'fluid', name = 'artificial-blood', amount = 300},
      {type = 'fluid', name = 'water-saline', amount = 500},
    },
    result = "clone-1"
  }:add_unlock("pharmagenomics")

ITEM{
    type = "item-with-entity-data",
    name = "clone-1",
    icon = "__pyalienlifegraphics__/graphics/icons/phadaisus.png",
    icon_size = 64,
    subgroup = "py-alienlife-buildings-others",
    order = "x",
    place_result = "clone-1",
    stack_size = 10
  }

data:extend(
{
	{
    type = "unit",
    name = "clone-1",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 32,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 10,
    order="b-b-e",
    subgroup="enemies",
    resistances = {},
    healing_per_tick = 0.01,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    --alternative_attacking_frame_sequence = spitter_alternative_attacking_animation_sequence,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0.8,
      cooldown = 60,
      projectile_creation_distance = 0.6,
      range = 36,
      projectile_center = {-0.17, 0},
      sound =
      {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.7
        }
      },
      ammo_type =
        {
          range_modifier = 3,
          cooldown_modifier = 3,
          target_type = "position",
          category = "rocket",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "atomic-rocket",
              starting_speed = 0.05,
              source_effects =
              {
                type = "create-entity",
                entity_name = "explosion-hit"
              }
            }
          }
        },
        animation = data.raw.character.character.animations[1].running_with_gun
    },
    vision_distance = 30,
    movement_speed = 0.185,

    distance_per_frame = 0.04,
    -- in pu
    pollution_to_join_attack = 4,
    corpse = "character-corpse",
    dying_explosion = "blood-explosion-small",
    --working_sound = make_biter_calls(0.3),
    --dying_sound = make_spitter_dying_sounds(0.4),
    run_animation = data.raw.character.character.animations[1].running,
    move_while_shooting = true,
    can_open_gates = true,
    ai_settings =
    {
      do_separation = false
    },
  },
}
)
