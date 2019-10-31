RECIPE {
    type = 'recipe',
    name = 'auog-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-auog', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'auog-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog', amount = 1},
    },
}:add_unlock("domestication")

RECIPE {
    type = 'recipe',
    name = 'auog-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-auog', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog', amount = 1},
    },
}:add_unlock("domestication")