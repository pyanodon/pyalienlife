----iron----

RECIPE {
    type = 'recipe',
    name = 'simik-iron',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'iron-ore', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'unslimed-iron', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "unslimed-iron",
}:add_unlock("simik-iron")

----copper----

RECIPE {
    type = 'recipe',
    name = 'simik-copper',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 1},
        {type = 'item', name = 'copper-ore', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'copper-solution-barrel', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "copper-solution-barrel",
}:add_unlock("simik-copper")

----quartz----

RECIPE {
    type = 'recipe',
    name = 'simik-quartz',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 1},
        {type = 'item', name = 'ore-quartz', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'quartz-pulp-02-barrel', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "quartz-pulp-02-barrel",
}:add_unlock("simik-quartz")

----coal----

RECIPE {
    type = 'recipe',
    name = 'simik-coal',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 1},
        {type = 'item', name = 'coal', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'coal-pulp-03-barrel', amount = 1},    --30 coal
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "coal-pulp-03-barrel",
}:add_unlock("simik-coal")

----tin----

RECIPE {
    type = 'recipe',
    name = 'simik-tin',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'ore-tin', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'tin-concentrate', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "tin-concentrate",
}:add_unlock("simik-tin")

----aluminium----

RECIPE {
    type = 'recipe',
    name = 'simik-aluminium',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 6},
        {type = 'item', name = 'ore-aluminium', amount = 60},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'crystalized-sodium-aluminate', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 6},
    },
    main_product = "crystalized-sodium-aluminate",
}:add_unlock("simik-aluminium")

----boron----

RECIPE {
    type = 'recipe',
    name = 'simik-boron',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 6},
        {type = 'item', name = 'raw-borax', amount = 20},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'boron-trioxide', amount = 7},
        {type = 'item', name = 'empty-barrel', amount = 6},
    },
    main_product = "boron-trioxide",
}:add_unlock("simik-boron")

----chromium----

RECIPE {
    type = 'recipe',
    name = 'simik-chromium',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'ore-chromium', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'chromite-sand', amount = 20},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "chromite-sand",
}:add_unlock("simik-chromium")

----molybdenum----

RECIPE {
    type = 'recipe',
    name = 'simik-molybdenum',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'molybdenum-ore', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'molybdenum-sulfide', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "molybdenum-sulfide",
}:add_unlock("simik-molybdenum")

----zinc----

RECIPE {
    type = 'recipe',
    name = 'simik-zinc',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'ore-zinc', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'concentrated-zinc', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "concentrated-zinc",
}:add_unlock("simik-zinc")

----nickel----

RECIPE {
    type = 'recipe',
    name = 'simik-nickel',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 1},
        {type = 'item', name = 'ore-nickel', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'nickel-pulp-03-barrel', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "nickel-pulp-03-barrel",
}:add_unlock("simik-nickel")

----lead----

RECIPE {
    type = 'recipe',
    name = 'simik-lead',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 2},
        {type = 'item', name = 'ore-lead', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'molten-lead-barrel', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "molten-lead-barrel",
}:add_unlock("simik-lead")

----titanium----

RECIPE {
    type = 'recipe',
    name = 'simik-titanium',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'ore-titanium', amount = 30},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'high-grade-ti', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "high-grade-ti",
}:add_unlock("simik-titanium")

----niobium----

RECIPE {
    type = 'recipe',
    name = 'simik-niobium',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 1},
        {type = 'item', name = 'niobium-ore', amount = 15},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'niobium-complex-barrel', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "niobium-complex-barrel",
}:add_unlock("simik-niobium")

----nexelit----

RECIPE {
    type = 'recipe',
    name = 'simik-nexelit',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
      --  {type = 'item', name = 'empty-barrel', amount = 1},
        {type = 'item', name = 'nexelit-ore', amount = 13},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'molten-nexelit-barrel', amount = 2},
        --{type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "molten-nexelit-barrel",
}:add_unlock("simik-nexelit")

----silver----

RECIPE {
    type = 'recipe',
    name = 'simik-silver',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 8},
        {type = 'item', name = 'ore-lead', amount = 80},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'high-grade-silver', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 8},
    },
    main_product = "high-grade-silver",
}:add_unlock("simik-silver")

----gold----

RECIPE {
    type = 'recipe',
    name = 'simik-gold',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 2},
        {type = 'item', name = 'ore-chromium', amount = 30},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = 'gold-concentrate', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "gold-concentrate",
}:add_unlock("simik-gold")

----uranium----

RECIPE {
    type = 'recipe',
    name = 'simik-uranium',
    category = 'simik',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'olefin-barrel', amount = 8},
        {type = 'item', name = 'uranium-ore', amount = 30},
        {type = 'item', name = 'bio-sample', amount = 1},
    },
    results = {
        {type = 'item', name = '70-u-powder', amount = 11},  -- should have been 14 but i picked 11 in order to roughly offset the cost of other chemicals used in main chain 
        {type = 'item', name = 'empty-barrel', amount = 8},
    },
    main_product = "70-u-powder",
}:add_unlock("simik-uranium")
