
RECIPE {
    type = "recipe",
    name = "basic-firearm-magazine",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 2},
        {"iron-gear-wheel", 2},
    },
    results = {
        {"basic-firearm-magazine", 1}
    }
}

ITEM {
    type = "ammo",
    name = "basic-firearm-magazine",
    icon = "__base__/graphics/icons/firearm-magazine.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type =
    {
      category = "bullet",
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
          --repeat_count = 12,
          action_delivery =
          {
            type = "projectile",
            projectile = "shotgun-pellet",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.3,
            range_deviation = 0.3,
            max_range = 15
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "b[shotgun]-a[basic]",
    stack_size = 200
  }