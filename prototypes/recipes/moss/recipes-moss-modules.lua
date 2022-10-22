
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
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'tuuphra-seeds', amount = 5},
    },
    results = {
        {type = 'item', name = 'moss-mk03', amount = 1, probability = 0.02},
    },
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
        {type = 'fluid', name = 'gta', amount = 200},
        {type = 'item', name = 'immunosupressants', amount = 5},
        {type = 'item', name = 'moss-mk03', amount = 5},
        {type = 'item', name = 'bhoddos', amount = 5},
    },
    results = {
        {type = 'item', name = 'moss-mk04', amount = 1, probability = 0.02},
    },
  }:add_unlock("moss-mk04")
