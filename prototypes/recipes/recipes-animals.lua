--VRAUKS--

RECIPE {
    type = 'recipe',
    name = 'cocoon-1',
    category = 'vrauks',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'water-barrel', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "cocoon",
}:add_unlock("zoology")

--APAGAR
RECIPE {
    type = 'recipe',
    name = 'apagar-1',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'coal', amount = 2},
    },
    results = {
        {type = 'item', name = 'iron-plate', amount = 1},
    },
    --main_product = "cocoon",
}:add_unlock("zoology")