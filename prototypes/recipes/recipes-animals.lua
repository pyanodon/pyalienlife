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


--SPONGE--

RECIPE {
    type = 'recipe',
    name = 'sea-sponge-1',
    category = 'sponge',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 100},
        {type = 'fluid', name = 'zogna-bacteria', amount = 40},
    },
    results = {
        {type = 'item', name = 'sea-sponge', amount = 1},
        {type = 'fluid', name = 'water-saline', amount = 100},
    },
    main_product = "sea-sponge",
}:add_unlock("water-animals-mk01")