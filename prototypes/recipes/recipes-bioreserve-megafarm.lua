local tile_count = 529

RECIPE {
    type = "recipe",
    name = "bioreserve-super-1",
    category = "bioreserve-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "bio-sample", amount = 2},
        {type = "item", name = "soil",       amount = 1000},
    },
    results = {
        {type = "item", name = "native-flora", amount = tile_count * 1},
    },
    order = "flora-a"
}:add_unlock("mega-farm-bioreserve")

RECIPE {
    type = "recipe",
    name = "bioreserve-super-2",
    category = "bioreserve-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "water",      amount = 10000},
        {type = "item",  name = "soil",       amount = 1000},
        {type = "item",  name = "bio-sample", amount = 2},
        {type = "item",  name = "stone",      amount = 1500},
    },
    results = {
        {type = "item", name = "native-flora", amount = tile_count * 2},
    },
    order = "flora-b"
}:add_unlock("mega-farm-bioreserve")

RECIPE {
    type = "recipe",
    name = "bioreserve-super-3",
    category = "bioreserve-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "water",          amount = 10000},
        {type = "item",  name = "soil",           amount = 1000},
        {type = "item",  name = "bio-sample",     amount = 2},
        {type = "item",  name = "stone",          amount = 1500},
        {type = "item",  name = "alien-sample01", amount = 2},
    },
    results = {
        {type = "item", name = "native-flora", amount = tile_count * 3},
    },
    order = "flora-c"
}:add_unlock("mega-farm-bioreserve")

RECIPE {
    type = "recipe",
    name = "bioreserve-super-4",
    category = "bioreserve-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "water",          amount = 10000},
        {type = "item",  name = "soil",           amount = 1000},
        {type = "item",  name = "bio-sample",     amount = 2},
        {type = "item",  name = "stone",          amount = 1500},
        {type = "item",  name = "alien-sample01", amount = 2},
        {type = "item",  name = "lignin",         amount = 200},
    },
    results = {
        {type = "item", name = "native-flora", amount = tile_count * 4},
    },
    order = "flora-d"
}:add_unlock("mega-farm-bioreserve")

RECIPE {
    type = "recipe",
    name = "bioreserve-super-5",
    category = "bioreserve-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "water",          amount = 10000},
        {type = "item",  name = "soil",           amount = 1000},
        {type = "item",  name = "bio-sample",     amount = 2},
        {type = "item",  name = "stone",          amount = 1500},
        {type = "item",  name = "alien-sample01", amount = 2},
        {type = "item",  name = "lignin",         amount = 200},
        {type = "item",  name = "native-flora",   amount = 400},
    },
    results = {
        {type = "item", name = "native-flora", amount = tile_count * 5},
    },
    order = "flora-e"
}:add_unlock("mega-farm-bioreserve")

RECIPE {
    type = "recipe",
    name = "bioreserve-super-6",
    category = "bioreserve-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "water",           amount = 10000},
        {type = "item",  name = "soil",            amount = 1000},
        {type = "item",  name = "bio-sample",      amount = 2},
        {type = "item",  name = "stone",           amount = 1500},
        {type = "item",  name = "alien-sample-02", amount = 2},
        {type = "item",  name = "lignin",          amount = 200},
        {type = "item",  name = "native-flora",    amount = 400},
    },
    results = {
        {type = "item", name = "native-flora", amount = tile_count * 6},
    },
    order = "flora-f"
}:add_unlock("mega-farm-bioreserve")
