---------------------ABLAZED-------------

RECIPE {
    type = "recipe",
    name = "charged-auog",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "auog",         amount = 1},
        {type = "item", name = "energy-drink", amount = 1},
    },
    results = {
        {type = "item", name = "charged-auog", amount = 1},
    },
}:add_unlock("energy-drink")

RECIPE {
    type = "recipe",
    name = "charged-dingrit",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "dingrits",     amount = 1},
        {type = "item", name = "energy-drink", amount = 1},
    },
    results = {
        {type = "item", name = "charged-dingrit", amount = 1},
    },
}:add_unlock("domestication-mk03")

---------------------MK LEVELS--------------

RECIPE {
    type = "recipe",
    name = "auog-recharge-0",
    category = "bay",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "used-auog",    amount = 1},
        {type = "item", name = "auog-food-01", amount = 1},
    },
    results = {
        {type = "item", name = "auog", amount = 1},
    },
}:add_unlock("domestication"):add_ingredient {type = "item", name = "moss", amount = 5}

RECIPE {
    type = "recipe",
    name = "auog-recharge-00",
    category = "bay",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "used-auog", amount = 1},
        {type = "item", name = "meat",      amount = 10},
    },
    results = {
        {type = "item", name = "auog", amount = 1},
    },
}:add_unlock("domestication"):add_ingredient {type = "item", name = "moss", amount = 5}

--mk01

RECIPE {
    type = "recipe",
    name = "auog-recharge",
    category = "bay",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "used-auog",    amount = 4},
        {type = "item", name = "bedding",      amount = 1},
        {type = "item", name = "auog-food-02", amount = 1},
    },
    results = {
        {type = "item", name = "auog", amount = 4},
    },
}:add_unlock("domestication-mk02")

--mk02

RECIPE {
    type = "recipe",
    name = "auog-mk02-recharge",
    category = "bay",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "used-auog-mk02", amount = 4},
        {type = "item", name = "bedding",        amount = 2},
        {type = "item", name = "energy-drink",   amount = 1},
        {type = "item", name = "auog-food-01",   amount = 1},
    },
    results = {
        {type = "item", name = "auog-mk02", amount = 4},
    },
}:add_unlock("domestication-mk02")

--mk03

RECIPE {
    type = "recipe",
    name = "auog-mk03-recharge",
    category = "bay",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "used-auog-mk03", amount = 4},
        {type = "item", name = "energy-drink",   amount = 1},
        {type = "item", name = "bedding",        amount = 2},
        {type = "item", name = "auog-food-01",   amount = 1},
    },
    results = {
        {type = "item", name = "auog-mk03", amount = 4},
    },
}:add_unlock("auog-mk03")

--mk04

RECIPE {
    type = "recipe",
    name = "auog-mk04-recharge",
    category = "bay",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "used-auog-mk04", amount = 4},
        {type = "item", name = "energy-drink",   amount = 1},
        {type = "item", name = "bedding",        amount = 2},
        {type = "item", name = "auog-food-01",   amount = 2},
    },
    results = {
        {type = "item", name = "auog-mk04", amount = 4},
    },
}:add_unlock("auog-mk04")

-------DINGRTIS----------------

RECIPE {
    type = "recipe",
    name = "dingrit-recharge",
    category = "bay",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "used-dingrit",     amount = 5},
        {type = "item", name = "bedding",          amount = 1},
        {type = "item", name = "dingrits-food-01", amount = 1},
    },
    results = {
        {type = "item", name = "dingrits", amount = 5},
    },
}:add_unlock("domestication-mk03")

RECIPE {
    type = "recipe",
    name = "dingrit-recharge-2",
    category = "bay",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "used-dingrit",     amount = 5},
        {type = "item", name = "bedding",          amount = 1},
        {type = "item", name = "dingrits-food-02", amount = 1},
    },
    results = {
        {type = "item", name = "dingrits", amount = 5},
    },
}:add_unlock("domestication-mk03")

--mk02

RECIPE {
    type = "recipe",
    name = "dingrit-mk02-recharge",
    category = "bay",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "used-dingrit-mk02", amount = 5},
        {type = "item", name = "energy-drink",      amount = 1},
        {type = "item", name = "bedding",           amount = 2},
        {type = "item", name = "dingrits-food-01",  amount = 2},
    },
    results = {
        {type = "item", name = "dingrits-mk02", amount = 5},
    },
}:add_unlock("dingrits-mk02")

RECIPE {
    type = "recipe",
    name = "dingrit-mk02-recharge-2",
    category = "bay",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "used-dingrit-mk02", amount = 5},
        {type = "item", name = "energy-drink",      amount = 1},
        {type = "item", name = "bedding",           amount = 2},
        {type = "item", name = "dingrits-food-02",  amount = 2},
    },
    results = {
        {type = "item", name = "dingrits-mk02", amount = 5},
    },
}:add_unlock("dingrits-mk02")

--mk03

RECIPE {
    type = "recipe",
    name = "dingrit-mk03-recharge",
    category = "bay",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "used-dingrit-mk03", amount = 5},
        {type = "item", name = "energy-drink",      amount = 1},
        {type = "item", name = "bedding",           amount = 2},
        {type = "item", name = "dingrits-food-01",  amount = 2},
    },
    results = {
        {type = "item", name = "dingrits-mk03", amount = 5},
    },
}:add_unlock("dingrits-mk03")

RECIPE {
    type = "recipe",
    name = "dingrit-mk03-recharge-2",
    category = "bay",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "used-dingrit-mk03", amount = 5},
        {type = "item", name = "energy-drink",      amount = 1},
        {type = "item", name = "bedding",           amount = 2},
        {type = "item", name = "dingrits-food-02",  amount = 2},
    },
    results = {
        {type = "item", name = "dingrits-mk03", amount = 5},
    },
}:add_unlock("dingrits-mk03")

--mk04

RECIPE {
    type = "recipe",
    name = "dingrit-mk04-recharge",
    category = "bay",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "used-dingrit-mk04", amount = 5},
        {type = "item", name = "energy-drink",      amount = 1},
        {type = "item", name = "bedding",           amount = 2},
        {type = "item", name = "dingrits-food-01",  amount = 2},
    },
    results = {
        {type = "item", name = "dingrits-mk04", amount = 5},
    },
}:add_unlock("dingrits-mk04")

RECIPE {
    type = "recipe",
    name = "dingrit-mk04-recharge-2",
    category = "bay",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "used-dingrit-mk04", amount = 5},
        {type = "item", name = "energy-drink",      amount = 1},
        {type = "item", name = "bedding",           amount = 2},
        {type = "item", name = "dingrits-food-02",  amount = 2},
    },
    results = {
        {type = "item", name = "dingrits-mk04", amount = 5},
    },
}:add_unlock("dingrits-mk04")

--------SIMIKS----------------------
--mk01

if mods["pyalternativeenergy"] then
    RECIPE {
        type = "recipe",
        name = "simik-recharge",
        category = "bay",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "used-simik",    amount = 2},
            {type = "item", name = "bedding",       amount = 1},
            {type = "item", name = "simik-food-01", amount = 1},
        },
        results = {
            {type = "item", name = "simik", amount = 2},
        },
    }:add_unlock("domestication-mk04")

    RECIPE {
        type = "recipe",
        name = "simik-recharge-2",
        category = "bay",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "item", name = "used-simik",    amount = 4},
            {type = "item", name = "bedding",       amount = 1},
            {type = "item", name = "simik-food-02", amount = 1},
        },
        results = {
            {type = "item", name = "simik", amount = 4},
        },
    }:add_unlock("domestication-mk04")

    --mk02

    RECIPE {
        type = "recipe",
        name = "simik-mk02-recharge",
        category = "bay",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type = "item", name = "used-simik-mk02", amount = 4},
            {type = "item", name = "bedding",         amount = 2},
            {type = "item", name = "energy-drink",    amount = 1},
            {type = "item", name = "simik-food-01",   amount = 2},
        },
        results = {
            {type = "item", name = "simik-mk02", amount = 4},
        },
    }:add_unlock("simik-mk02")

    RECIPE {
        type = "recipe",
        name = "simik-mk02-recharge-2",
        category = "bay",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "used-simik-mk02", amount = 4},
            {type = "item", name = "energy-drink",    amount = 1},
            {type = "item", name = "bedding",         amount = 2},
            {type = "item", name = "simik-food-02",   amount = 2},
        },
        results = {
            {type = "item", name = "simik-mk02", amount = 4},
        },
    }:add_unlock("simik-mk02")

    --mk03

    RECIPE {
        type = "recipe",
        name = "simik-mk03-recharge",
        category = "bay",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type = "item", name = "used-simik-mk03", amount = 4},
            {type = "item", name = "energy-drink",    amount = 1},
            {type = "item", name = "bedding",         amount = 2},
            {type = "item", name = "simik-food-01",   amount = 2},
        },
        results = {
            {type = "item", name = "simik-mk03", amount = 4},
        },
    }:add_unlock("simik-mk03")

    RECIPE {
        type = "recipe",
        name = "simik-mk03-recharge-2",
        category = "bay",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "used-simik-mk03", amount = 4},
            {type = "item", name = "energy-drink",    amount = 1},
            {type = "item", name = "bedding",         amount = 2},
            {type = "item", name = "simik-food-02",   amount = 2},
        },
        results = {
            {type = "item", name = "simik-mk03", amount = 4},
        },
    }:add_unlock("simik-mk03")

    --mk04

    RECIPE {
        type = "recipe",
        name = "simik-mk04-recharge",
        category = "bay",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type = "item", name = "used-simik-mk04", amount = 4},
            {type = "item", name = "energy-drink",    amount = 1},
            {type = "item", name = "bedding",         amount = 2},
            {type = "item", name = "simik-food-01",   amount = 2},
        },
        results = {
            {type = "item", name = "simik-mk04", amount = 4},
        },
    }:add_unlock("simik-mk04")

    RECIPE {
        type = "recipe",
        name = "simik-mk04-recharge-2",
        category = "bay",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "used-simik-mk04", amount = 4},
            {type = "item", name = "energy-drink",    amount = 1},
            {type = "item", name = "bedding",         amount = 2},
            {type = "item", name = "simik-food-02",   amount = 2},
        },
        results = {
            {type = "item", name = "simik-mk04", amount = 4},
        },
    }:add_unlock("simik-mk04")
end
