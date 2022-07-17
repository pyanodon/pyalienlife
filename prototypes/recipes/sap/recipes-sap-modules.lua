
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'sap-seeds-mk02',
    category = 'nursery',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'sap-tree', amount = 5},
    },
    results = {
        {type = 'item', name = 'sap-seeds-mk02', amount = 1},
    },
  }:add_unlock("sap-mk02"):add_ingredient({type = "item", name = "urea", amount = 1})

  RECIPE {
    type = 'recipe',
    name = 'sap-tree-mk02',
    category = 'nursery',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sap-seeds-mk02', amount = 6},
        {type = 'item', name = 'fertilizer', amount = 4},
        {type = 'item', name = 'bonemeal', amount = 10}
    },
    results = {
        {type = 'item', name = 'sap-tree-mk02', amount = 1},
    },
  }:add_unlock("sap-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'sap-seeds-mk03',
    category = 'nursery',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'sap-tree-mk02', amount = 5},
    },
    results = {
        {type = 'item', name = 'sap-seeds-mk03', amount = 1},
    },
  }:add_unlock("sap-mk03"):add_ingredient({type = "item", name = "urea", amount = 1})

  RECIPE {
    type = 'recipe',
    name = 'sap-tree-mk03',
    category = 'nursery',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sap-seeds-mk03', amount = 6},
        {type = 'item', name = 'fertilizer', amount = 4},
        {type = 'item', name = 'bonemeal', amount = 10}
    },
    results = {
        {type = 'item', name = 'sap-tree-mk03', amount = 1},
    },
  }:add_unlock("sap-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'sap-seeds-mk04',
    category = 'nursery',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'sap-tree-mk03', amount = 5},
    },
    results = {
        {type = 'item', name = 'sap-seeds-mk04', amount = 1},
    },
  }:add_unlock("sap-mk04"):add_ingredient({type = "item", name = "urea", amount = 1})

  RECIPE {
    type = 'recipe',
    name = 'sap-tree-mk04',
    category = 'nursery',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sap-seeds-mk04', amount = 6},
        {type = 'item', name = 'fertilizer', amount = 4},
        {type = 'item', name = 'bonemeal', amount = 10}
    },
    results = {
        {type = 'item', name = 'sap-tree-mk04', amount = 1},
    },
  }:add_unlock("sap-mk04")
