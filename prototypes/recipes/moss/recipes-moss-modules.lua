
--Secondary Upgrade Recipes--
--SUR--
--DONE--

--mk02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'moss-mk02',
    category = 'moss',
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'wood', amount = 5},
    },
    results = {
        {type = 'item', name = 'moss-mk02', amount = 1, probability = 0.02},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/moss.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
  }:add_unlock("moss-mk02"):add_ingredient({type = "item", name = "urea", amount = 1})

--mk03--
--DONE--

  RECIPE {
    type = 'recipe',
    name = 'moss-mk03',
    category = 'moss',
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-heavy', amount = 200},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'moss-mk02', amount = 5},
        {type = 'item', name = 'tuuphra-seeds', amount = 5},
    },
    results = {
        {type = 'item', name = 'moss-mk03', amount = 1, probability = 0.02},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/moss.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
  }:add_unlock("moss-mk03")

--mk04--
--DONE--

  RECIPE {
    type = 'recipe',
    name = 'moss-mk04',
    category = 'moss',
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'gta', amount = 100},
        {type = 'item', name = 'immunosupressants', amount = 1},
        {type = 'item', name = 'moss-mk03', amount = 5},
        {type = 'item', name = 'bhoddos', amount = 5},
    },
    results = {
        {type = 'item', name = 'moss-mk04', amount = 1, probability = 0.02},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/moss.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
  }:add_unlock("moss-mk04")


--MK02 REPLICATOR---

RECIPE {
  type = 'recipe',
  name = 'moss-mk02r',
  category = 'nursery',
  enabled = false,
  energy_required = 100,
  ingredients = {
      {type = 'item', name = 'moss-mk02', amount = 2},
      {type = 'item', name = 'cdna', amount = 2},
      {type = 'item', name = 'moss-gen', amount = 3},
      {type = 'fluid', name = 'liquid-manure', amount = 50},
      {type = 'fluid', name = 'xenogenic-cells', amount = 100},
      {type = 'item', name = 'ground-sample01', amount = 5},
      {type = 'item', name = 'solidified-sarcorus', amount = 1},
      },
  results = {
      {type = 'item', name = 'moss-mk02', amount = 3},
  },
  icons =
  {
      {icon = '__pyalienlifegraphics__/graphics/icons/moss.png'},
      {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
  },
  icon_size = 64,
  subgroup = 'py-alienlife-moss',
  order = 'za'
}:add_unlock("moss-mk02")

--MK03 REPLICATOR---

RECIPE {
  type = 'recipe',
  name = 'moss-mk03r',
  category = 'nursery',
  enabled = false,
  energy_required = 100,
  ingredients = {
      {type = 'item', name = 'moss-mk03', amount = 2},
      {type = 'item', name = 'cdna', amount = 2},
      {type = 'item', name = 'moss-gen', amount = 3},
      {type = 'fluid', name = 'chelator', amount = 50},
      {type = 'fluid', name = 'xenogenic-cells', amount = 100},
      {type = 'item', name = 'rich-clay', amount = 5},
      {type = 'item', name = 'paragen', amount = 1},
      },
  results = {
      {type = 'item', name = 'moss-mk03', amount = 3},
  },
  icons =
  {
      {icon = '__pyalienlifegraphics__/graphics/icons/moss.png'},
      {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
  },
  icon_size = 64,
  subgroup = 'py-alienlife-moss',
  order = 'za'
}:add_unlock("moss-mk03")

--MK04 REPLICATOR---

RECIPE {
  type = 'recipe',
  name = 'moss-mk04r',
  category = 'nursery',
  enabled = false,
  energy_required = 100,
  ingredients = {
      {type = 'item', name = 'moss-mk04', amount = 2},
      {type = 'item', name = 'cdna', amount = 3},
      {type = 'item', name = 'moss-gen', amount = 5},
      {type = 'fluid', name = 'tholins', amount = 50},
      {type = 'fluid', name = 'psc', amount = 50},
      {type = 'item', name = 'chimeric-proteins', amount = 5},
      },
  results = {
      {type = 'item', name = 'moss-mk04', amount = 4},
  },
  icons =
  {
      {icon = '__pyalienlifegraphics__/graphics/icons/moss.png'},
      {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
  },
  icon_size = 64,
  subgroup = 'py-alienlife-moss',
  order = 'za'
}:add_unlock("moss-mk04")