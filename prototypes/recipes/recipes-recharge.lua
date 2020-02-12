require("prototypes/functions/functions")
---------------------ABLAZED-------------

RECIPE {
    type = 'recipe',
    name = 'charged-auog',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'auog', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
    },
    results = {
        {type = 'item', name = 'charged-auog', amount = 1},
    },
}:add_unlock("energy-drink")

RECIPE {
    type = 'recipe',
    name = 'charged-dingrit',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'dingrits', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
    },
    results = {
        {type = 'item', name = 'charged-dingrit', amount = 1},
    },
}:add_unlock("energy-drink")

---------------------MK LEVELS--------------



RECIPE {
    type = 'recipe',
    name = 'auog-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-auog', amount = 1},
        {type = 'item', name = 'bedding', amount = 1},
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
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'auog-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog', amount = 1},
    },
}:add_unlock("domestication")

--mk02

RECIPE {
    type = 'recipe',
    name = 'auog-mk02-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-auog-mk02', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'auog-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog-mk02', amount = 1},
    },
}:add_unlock("domestication-mk02")

RECIPE {
    type = 'recipe',
    name = 'auog-mk02-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-auog-mk02', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog-mk02', amount = 1},
    },
}:add_unlock("domestication-mk02")

--mk03

RECIPE {
    type = 'recipe',
    name = 'auog-mk03-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-auog-mk03', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'auog-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog-mk03', amount = 1},
    },
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'auog-mk03-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-auog-mk03', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog-mk03', amount = 1},
    },
}:add_unlock("artificial-breeding")

--mk04

RECIPE {
    type = 'recipe',
    name = 'auog-mk04-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-auog-mk04', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'auog-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog-mk04', amount = 1},
    },
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'auog-mk04-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-auog-mk04', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'auog-mk04', amount = 1},
    },
}:add_unlock("biased-mutation")


-------DINGRTIS----------------

RECIPE {
    type = 'recipe',
    name = 'dingrit-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-dingrit', amount = 1},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'dingrits-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits', amount = 1},
    },
}:add_unlock("domestication-mk02")

RECIPE {
    type = 'recipe',
    name = 'dingrit-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-dingrit', amount = 1},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'dingrits-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits', amount = 1},
    },
}:add_unlock("domestication-mk02")

--mk02

RECIPE {
    type = 'recipe',
    name = 'dingrit-mk02-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-dingrit-mk02', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'dingrits-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits-mk02', amount = 1},
    },
}:add_unlock("domestication-mk02")

RECIPE {
    type = 'recipe',
    name = 'dingrit-mk02-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-dingrit-mk02', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'dingrits-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits-mk02', amount = 1},
    },
}:add_unlock("domestication-mk02")

--mk03

RECIPE {
    type = 'recipe',
    name = 'dingrit-mk03-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-dingrit-mk03', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'dingrits-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits-mk03', amount = 1},
    },
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'dingrit-mk03-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-dingrit-mk03', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'dingrits-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits-mk03', amount = 1},
    },
}:add_unlock("artificial-breeding")

--mk04

RECIPE {
    type = 'recipe',
    name = 'dingrit-mk04-recharge',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-dingrit-mk04', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'dingrits-food-01', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits-mk04', amount = 1},
    },
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'dingrit-mk04-recharge-2',
    category = 'bay',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'used-dingrit-mk04', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'dingrits-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'dingrits-mk04', amount = 1},
    },
}:add_unlock("biased-mutation")
