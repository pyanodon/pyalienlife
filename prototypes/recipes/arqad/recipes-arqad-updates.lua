RECIPE {
    type = 'recipe',
    name = 'arqad-propolis-02',
    category = 'arqad',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'rennea', amount = 2},
        {type = 'item', name = 'dhilmos-egg', amount = 1},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'wax-barrel', amount = 1},
        {type = 'item', name = 'naphtha-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'arqad-propolis', amount = 5},  --FUTURE USE IN PESTICIDE PRODUCTION--
        {type = 'item', name = 'empty-barrel', amount = 6},
    },
    main_product = "arqad-propolis",
}:add_unlock("cardial-hypopharynx")

RECIPE {
    type = 'recipe',
    name = 'propolis-diesel-02',
    category = 'olefin',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'arqad-propolis', amount = 1},
        {type = 'fluid', name = 'methanol', amount = 50},
    },
    results = {
        {type = 'fluid', name = 'diesel', amount = 350},
    },
    --main_product = "tar",
}:add_unlock("cardial-hypopharynx")

--------royal jelly

RECIPE {
    type = 'recipe',
    name = 'jelly-to-kerosene-02',
    category = 'olefin',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'arqad-jelly', amount = 50},
        {type = 'fluid', name = 'crude-oil', amount = 150},
    },
    results = {
        {type = 'fluid', name = 'kerosene', amount = 450},
    },
    --main_product = "tar",
}:add_unlock("chromosome-infocrystalization")

RECIPE {
    type = 'recipe',
    name = 'arqad-jelly-02',
    category = 'arqad',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'rennea', amount = 2},
        {type = 'item', name = 'active-carbon', amount = 1},
        {type = 'item', name = 'oleochemicals-barrel', amount = 6},
    },
    results = {
        {type = 'item', name = 'arqad-jelly-barrel', amount = 6},  --FUTURE USE IN PESTICIDE PRODUCTION--
    },
    subgroup = 'py-alienlife-arqad'
    --main_product = "arqad-jelly-barrel",
}:add_unlock("chromosome-infocrystalization")
