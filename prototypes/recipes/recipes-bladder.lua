RECIPE {
    type = "recipe",
    name = "gas-bladder-to-acetylene",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "acetylene", amount = 40}
    }
}:add_unlock("phagnot-mk02"):change_category("gas-refinery")

if mods["pyhightech"] then
    RECIPE {
        type = "recipe",
        name = "gas-bladder-to-phophine-gas",
        category = "gas-separator",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "item", name = "gas-bladder", amount = 1},
        },
        results = {
            {type = "fluid", name = "phosphine-gas", amount = 30}
        }
    }:add_unlock("phagnot-mk02"):change_category("gas-refinery")
end

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-rich-gas",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "rich-gas", amount = 30}
    }
}:add_unlock("phagnot-mk04"):change_category("gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-helium",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "helium", amount = 10}
    }
}:add_unlock("phagnot-mk04"):change_category("gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-co2",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 50}
    }
}:add_unlock("phagnot"):change_category("gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-chlorine",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "chlorine", amount = 50}
    }
}:add_unlock("phagnot-mk03"):change_category("gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-hydrogen",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 200}
    }
}:add_unlock("phagnot-mk03"):change_category("gas-refinery")

RECIPE {
    type = "recipe",
    name = "gas-bladder-to-hot-air",
    category = "gas-separator",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "gas-bladder", amount = 1},
    },
    results = {
        {type = "fluid", name = "hot-air", amount = 300}
    }
}:add_unlock("phagnot-mk03"):change_category("gas-refinery")
