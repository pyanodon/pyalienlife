--------------------------SCIENCE-----------------------

----COPIES OF OG SCIENCE---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-seeds',
    category = 'research',
    enabled = false,
    energy_required = 10,
    ingredients =
        {
            {type = 'item', name = 'fawogae-substrate', amount = 10},
            {type = 'item', name = 'bio-sample', amount = 2},
            {type = 'item', name = 'plasmids', amount = 1},
        },
    results = {
        {type = 'item', name = 'solidified-sarcorus', amount = 3},
    },
    main_product = "solidified-sarcorus",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    --icon_size = 64,
    subgroup = "py-alienlife-items",
    order = "a1"
}:add_unlock("cottongut-mk01")

---cottongut-boosts---

---STARTER---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 2},
        {type = 'item', name = 'solidified-sarcorus', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 25, probability = 0.1},
    },
    main_product = 'automation-science-pack',
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'a1'
}:add_unlock("cottongut-mk01")


---UPGRADES---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-02',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'solidified-sarcorus', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 50, probability = 0.1},
    },
    main_product = 'automation-science-pack',
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'a2'
}:add_unlock("cottongut-mk02")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-03',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 10},
        {type = 'item', name = 'solidified-sarcorus', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 75, probability = 0.1},
    },
    main_product = 'automation-science-pack',
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'a3'
}:add_unlock("cottongut-mk03")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-04',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 15},
        {type = 'item', name = 'solidified-sarcorus', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 100, probability = 0.1},
    },
    main_product = 'automation-science-pack',
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'a4'
}:add_unlock("cottongut-mk04")


---END GAME---

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-05',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 40},
        {type = 'item', name = 'solidified-sarcorus', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 200, probability = 0.1},
    },
    main_product = 'automation-science-pack',
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'a5'
}:add_unlock("biased-mutation")