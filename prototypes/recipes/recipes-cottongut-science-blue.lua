--------------------------SCIENCE-----------------------

----COPIES OF OG SCIENCE---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-blue-seeds',
    enabled = false,
    category = 'research',
    energy_required = 10,
    ingredients =
        {
        },
    results = {
        {type = 'item', name = 'negasium', amount = 3},
    },
    main_product = "negasium",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    --icon_size = 64,
    subgroup = "py-items",
    order = "a1"
}:add_unlock("cottongut-mk03"):change_category('nano')

---cottongut-boosts---

---STARTER---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-blue',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 10},
        {type = 'item', name = 'negasium', amount = 1},
        },
    results = {
        {type = 'item', name = 'chemical-science-pack', amount = 25, probability = 0.1},
    },
    main_product = 'chemical-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'c1'
}:add_unlock("cottongut-mk03")


---UPGRADES---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-blue-02',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 25},
        {type = 'item', name = 'negasium', amount = 1},
        },
    results = {
        {type = 'item', name = 'chemical-science-pack', amount = 50, probability = 0.1},
    },
    main_product = 'chemical-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'c2'
}:add_unlock("cottongut-mk04")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-blue-03',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 60},
        {type = 'item', name = 'negasium', amount = 1},
        },
    results = {
        {type = 'item', name = 'chemical-science-pack', amount = 75, probability = 0.1},
    },
    main_product = 'chemical-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'c3'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-blue-04',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 100},
        {type = 'item', name = 'negasium', amount = 1},
        },
    results = {
        {type = 'item', name = 'chemical-science-pack', amount = 100, probability = 0.1},
    },
    main_product = 'chemical-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'c4'
}:add_unlock("biased-mutation")


---END GAME---
--[[
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-blue-05',
    category = 'cottongut',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'negasium', amount = 1},
        },
    results = {
        {type = 'item', name = 'chemical-science-pack', amount = 200, probability = 0.1},
    },
    main_product = 'chemical-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'c5'
}:add_unlock("biased-mutation")
]]--
