ENTITY {
  type = "resource",
  name = "kicalk-tree",
  category = "kicalk-tree",
  icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",
  icon_size = 64,
  flags = {"placeable-neutral"},
  order = "a-b-a",
  map_color = {r = 0.462, g = 0.694, b = 0.705},
  minable = {

    -- mining_particle = "aluminium-ore-particle",
    mining_time = 2,
    results = {
      {type = "item", name = "kicalk", amount = 1}
    },
    --fluid_amount = 100,
    --required_fluid = "coal-gas"
  },
  starting_area = false,
  collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  stage_counts = {800},
  stages = {
    sheet = {
      filename = "__pyalienlifegraphics__/graphics/entity/crops/kicalk/hr-kicalk.png",
      priority = "extra-high",
      width = 128,
      height = 160,
      frame_count = 8,
      variation_count = 1,
      scale = 0.5,
      shift = util.by_pixel(0, -16),
    }
  }
}


data:extend {
  {
    type = "tree",
    name = "kicalk-tree-fake",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      count = 4,
      mining_particle = "wooden-particle",
      mining_time = 0.5,
      result = "wood"
    },
    emissions_per_second = {pollution = -0.001},
    max_health = 20,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    drawing_box = {{-0.6, -1.8}, {0.6, 0.3}},
    subgroup = "trees",
    order = "a[tree]-c[dry-tree]",
    impact_category = "wood", 
    --autoplace = dead_trees_autoplace(0.5),
    pictures =
    {
      --dry-tree
      {
        filename = "__pyalienlifegraphics__/graphics/entity/crops/kicalk/kicalk.png",
        priority = "extra-high",
        width = 64,
        height = 80,
        frame_count = 8,
        variation_count = 1,
        shift = util.by_pixel(0, -16),
      }
    }
  }
}
