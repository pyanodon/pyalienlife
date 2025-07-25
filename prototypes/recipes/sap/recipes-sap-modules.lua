--Secondary Upgrade Recipes--
--SUR--
--WIP--

RECIPE {
    type = "recipe",
    name = "sap-01",
    category = "sap-extractor",
    enabled = false,
    energy_required = 80,
    ingredients = {
    },
    results = {
        {type = "item", name = "saps", amount = 4}
    },
    main_product = "saps",
    allowed_module_categories = {
        "sap-mk01",
        "sap-mk02",
        "sap-mk03",
        "sap-mk04",
    }
}:add_unlock("sap-mk01")


--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "sap-seeds-mk02-gen",
    category = "nursery",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "muddy-sludge", amount = 200},
        {type = "item",  name = "sodium-alginate",   amount = 1},
        {type = "item",  name = "moss",              amount = 5},
        {type = "item",  name = "sap-tree",          amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds-mk02", amount = 1},
    },
}:add_unlock("sap-mk02"):add_ingredient {type = "item", name = "urea", amount = 1}

RECIPE {
    type = "recipe",
    name = "sap-tree-mk02-gen",
    category = "nursery",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "muddy-sludge", amount = 200},
        {type = "item",  name = "sap-seeds-mk02",    amount = 6},
        {type = "item",  name = "fertilizer",        amount = 4},
        {type = "item",  name = "bonemeal",          amount = 10}
    },
    results = {
        {type = "item", name = "sap-tree-mk02", amount = 1},
    },
}:add_unlock("sap-mk02")

RECIPE {
    type = "recipe",
    name = "sap-mk02",
    category = "sap-extractor",
    --hidden = true,
    enabled = false,
    energy_required = 80,
    ingredients = {
    },
    results = {
        {type = "item", name = "saps-mk02", amount = 4}
    },
    main_product = "saps-mk02",
    allowed_module_categories = {
        "sap-mk02",
        "sap-mk03",
        "sap-mk04",
    }
}:add_unlock("sap-mk02")

RECIPE {
    type = "recipe",
    name = "sap-seeds-mk02",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "saps-mk02", amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds-mk02", amount = 2}
    },
}:add_unlock("sap-mk02")

RECIPE {
    type = "recipe",
    name = "sap-seeds-mk03-gen",
    category = "nursery",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "muddy-sludge", amount = 200},
        {type = "item",  name = "sodium-alginate",   amount = 1},
        {type = "item",  name = "moss",              amount = 5},
        {type = "item",  name = "sap-tree-mk02",     amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds-mk03", amount = 1},
    },
}:add_unlock("sap-mk03"):add_ingredient {type = "item", name = "urea", amount = 1}

RECIPE {
    type = "recipe",
    name = "sap-tree-mk03-gen",
    category = "nursery",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "muddy-sludge", amount = 200},
        {type = "item",  name = "sap-seeds-mk03",    amount = 6},
        {type = "item",  name = "fertilizer",        amount = 4},
        {type = "item",  name = "bonemeal",          amount = 10}
    },
    results = {
        {type = "item", name = "sap-tree-mk03", amount = 1},
    },
}:add_unlock("sap-mk03")

RECIPE {
    type = "recipe",
    name = "sap-mk03",
    category = "sap-extractor",
    --hidden = true,
    enabled = false,
    energy_required = 80,
    ingredients = {
    },
    results = {
        {type = "item", name = "saps-mk03", amount = 4}
    },
    main_product = "saps-mk03",
    allowed_module_categories = {
        "sap-mk03",
        "sap-mk04",
    }
}:add_unlock("sap-mk03")

RECIPE {
    type = "recipe",
    name = "sap-seeds-mk03",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "saps-mk03", amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds-mk03", amount = 2}
    },
}:add_unlock("sap-mk03")

RECIPE {
    type = "recipe",
    name = "sap-seeds-mk04-gen",
    category = "nursery",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "muddy-sludge", amount = 200},
        {type = "item",  name = "sodium-alginate",   amount = 1},
        {type = "item",  name = "moss",              amount = 5},
        {type = "item",  name = "sap-tree-mk03",     amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds-mk04", amount = 1},
    },
}:add_unlock("sap-mk04"):add_ingredient {type = "item", name = "urea", amount = 1}

RECIPE {
    type = "recipe",
    name = "sap-tree-mk04-gen",
    category = "nursery",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "muddy-sludge", amount = 200},
        {type = "item",  name = "sap-seeds-mk04",    amount = 6},
        {type = "item",  name = "fertilizer",        amount = 4},
        {type = "item",  name = "bonemeal",          amount = 10}
    },
    results = {
        {type = "item", name = "sap-tree-mk04", amount = 1},
    },
}:add_unlock("sap-mk04")

RECIPE {
    type = "recipe",
    name = "sap-mk04",
    category = "sap-extractor",
    --hidden = true,
    enabled = false,
    energy_required = 80,
    ingredients = {
    },
    results = {
        {type = "item", name = "saps-mk04", amount = 4}
    },
    main_product = "saps-mk04",
    allowed_module_categories = {
        "sap-mk04",
    }
}:add_unlock("sap-mk04")

RECIPE {
    type = "recipe",
    name = "sap-seeds-mk04",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "saps-mk04", amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds-mk04", amount = 2}
    },
}:add_unlock("sap-mk04")
