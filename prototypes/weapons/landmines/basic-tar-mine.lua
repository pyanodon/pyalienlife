local hit_effects = require ("__base__/prototypes/entity/demo-hit-effects")
local sounds = require("__base__/prototypes/entity/demo-sounds")

RECIPE {
    type = "recipe",
    name = "basic-tar-mine",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 2},
        {"iron-gear-wheel", 2},
    },
    results = {
        {"basic-tar-mine", 5}
    }
}

ITEM {
    type = "item",
    name = "basic-tar-mine",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "a",
    place_result = "basic-tar-mine",
    stack_size = 10
}

ENTITY {
    type = "land-mine",
    name = "basic-tar-mine",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 64, icon_mipmaps = 4,
    flags =
    {
      "placeable-player",
      "placeable-enemy",
      "player-creation",
      "placeable-off-grid",
      "not-on-map"
    },
    minable = {mining_time = 0.5, result = "land-mine"},
    mined_sound = { filename = "__core__/sound/deconstruct-small.ogg" },
    max_health = 15,
    corpse = "small-remnants",
    dying_explosion = "land-mine-explosion",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    picture_safe =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    picture_set =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    picture_set_enemy =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine-set-enemy.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    trigger_radius = 2.5,
    ammo_category = "landmine",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "nested-result",
            affects_target = true,
            action =
            {
              type = "area",
              radius = 6,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = { amount = 250, type = "explosion"}
                  },
                  {
                    type = "create-fire",
                    entity_name = "fire-flame",
                    show_in_tooltip = true,
                    initial_ground_flame_count = 2
                  }
                }
              }
            }
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = { amount = 1000, type = "explosion"}
          }
        }
      }
    }
  }