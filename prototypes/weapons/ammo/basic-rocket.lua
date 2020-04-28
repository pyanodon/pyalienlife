
RECIPE {
    type = "recipe",
    name = "basic-rocket-pod",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 2},
        {"iron-gear-wheel", 2},
    },
    results = {
        {"basic-rocket-pod", 1}
    }
}

ITEM {
    type = "ammo",
    name = "basic-rocket-pod",
    icon = "__base__/graphics/icons/rocket.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type =
    {
      category = "rocket",
      target_type = "direction",
      clamp_position = true,
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects =
            {
              {
                type = "create-explosion",
                entity_name = "explosion-gunshot"
              }
            }
          }
        },
        {
          type = "direct",
          repeat_count = 15,
          action_delivery =
            {
            type = "projectile",
            projectile = "explosive-rocket",
            starting_speed = 0.1,
            starting_speed_deviation = 0.3,
            direction_deviation = 0.6,
            range_deviation = 0.6,
            max_range = 30,
            source_effects =
                {
                type = "create-entity",
                entity_name = "explosion-hit",
                }
            }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "b[shotgun]-a[basic]",
    stack_size = 200
  }