RECIPE {
    type = "recipe",
    name = "gas-bladder-to-acetylene",
    categories = {"gas-separator"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "acetylene", amount = 40}
    }
}:add_unlock("phagnot-mk02"):replace_category("gas-separator", "gas-refinery")

if mods["pyhightech"] then
    RECIPE {
        type = "recipe",
        name = "gas-bladder-to-phophine-gas",
        categories = {"gas-separator"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "item", name = "gas-bladder", amount = 1},
        },
        results = {
            {type = "fluid", name = "phosphine-gas", amount = 30}
        }
    }:add_unlock("phagnot-mk02"):replace_category("gas-separator", "gas-refinery")
end

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-rich-gas",
    categories = {"gas-separator"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "rich-gas", amount = 30}
    }
}:add_unlock("phagnot-mk04"):replace_category("gas-separator", "gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-helium",
    categories = {"gas-separator"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "helium", amount = 10}
    }
}:add_unlock("phagnot-mk04"):replace_category("gas-separator", "gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-co2",
    categories = {"gas-separator"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 50}
    }
}:add_unlock("phagnot"):replace_category("gas-separator", "gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-chlorine",
    categories = {"gas-separator"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "chlorine", amount = 50}
    }
}:add_unlock("phagnot-mk03"):replace_category("gas-separator", "gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-hydrogen",
    categories = {"gas-separator"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 200}
    }
}:add_unlock("phagnot-mk03"):replace_category("gas-separator", "gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-hot-air",
    categories = {"gas-separator"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "hot-air", amount = 300}
    }
}:add_unlock("phagnot-mk03"):replace_category("gas-separator", "gas-refinery")
