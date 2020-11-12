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