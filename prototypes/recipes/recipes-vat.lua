--[[
RECIPE {
    type = 'recipe',
    name = 'logistic-science-01',
    category = "vat",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'automation-science-pack', amount = 10},
        {type = 'item', name = 'brain', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        {type = 'fluid', name = 'arqad-honey', amount = 150},
        {type = 'item', name = 'nexelit-plate', amount = 5},
    },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 1},
    },
}:add_unlock("biotech-mk02"):add_ingredient({type = "item", name = "small-parts-01", amount = 100})

RECIPE {
    type = 'recipe',
    name = 'chemical-science-01',
    category = "vat",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'logistic-science-pack', amount = 10},
        {type = 'item', name = 'automation-science-pack', amount = 10},
        {type = 'item', name = 'brain', amount = 8},
        {type = 'fluid', name = 'water', amount = 1000},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'arqad-honey', amount = 100},
        {type = 'item', name = 'nexelit-plate', amount = 5},
    },
    results = {
        {type = 'item', name = 'chemical-science-pack', amount = 1},
    },
}:add_unlock("biotech-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 100})

RECIPE {
    type = 'recipe',
    name = 'production-science-01',
    category = "vat",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'logistic-science-pack', amount = 10},
        {type = 'item', name = 'chemical-science-pack', amount = 10},
        {type = 'item', name = 'py-science-pack-3', amount = 10},
        {type = 'item', name = 'brain', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        {type = 'fluid', name = 'fetal-serum', amount = 250},
        {type = 'fluid', name = 'arqad-honey', amount = 150},
        {type = 'item', name = 'nexelit-plate', amount = 15},
    },
    results = {
        {type = 'item', name = 'production-science-pack', amount = 1},
    },
}:add_unlock("biotech-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 100})

RECIPE {
    type = 'recipe',
    name = 'utility-science-01',
    category = "vat",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'production-science-pack', amount = 10},
        {type = 'item', name = 'py-science-pack-3', amount = 10},
        {type = 'item', name = 'chemical-science-pack', amount = 10},
        {type = 'item', name = 'destablilized-toxirus', amount = 6},
        {type = 'item', name = 'brain', amount = 30},
        {type = 'fluid', name = 'gta', amount = 250},
        {type = 'fluid', name = 'fetal-serum', amount = 500},
        {type = 'fluid', name = 'arqad-honey', amount = 150},
        {type = 'item', name = 'nexelit-plate', amount = 50},
    },
    results = {
        {type = 'item', name = 'utility-science-pack', amount = 1},
    },
}:add_unlock("pharmagenomics"):add_ingredient({type = "item", name = "small-parts-03", amount = 100})
]]--

RECIPE {
    type = 'recipe',
    name = 'brain-cartridge-01',
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'brain', amount = 15},
        {type = 'item', name = 'nbalti', amount = 1},
        {type = 'fluid', name = 'scrude', amount = 50},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'brain-cartridge-01', amount = 1},
    },

}:add_unlock("vatbrain")

RECIPE {
    type = 'recipe',
    name = 'brain-cartridge-02',
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'brain-cartridge-01', amount = 1},
        {type = 'item', name = 'brain', amount = 15},
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'navens', amount = 1},
        {type = 'fluid', name = 'oleochemicals', amount = 50},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'brain-cartridge-02', amount = 2},
    },

}:add_unlock("vatbrain-mk02")

RECIPE {
    type = 'recipe',
    name = 'brain-cartridge-03',
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'brain-cartridge-02', amount = 1},
        {type = 'item', name = 'brain', amount = 15},
        {type = 'item', name = 'rayon', amount = 1},
        {type = 'item', name = 'eva', amount = 1},
        {type = 'item', name = 'phosphate-glass', amount = 2},
        {type = 'fluid', name = 'flavonoids', amount = 50},
        {type = 'fluid', name = 'psc', amount = 100},
    },
    results = {
        {type = 'item', name = 'brain-cartridge-03', amount = 2},
    },

}:add_unlock("vatbrain-mk03")

RECIPE {
    type = 'recipe',
    name = 'brain-cartridge-04',
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'brain-cartridge-03', amount = 1},
        {type = 'item', name = 'brain', amount = 15},
        {type = 'item', name = 'enzyme-pks', amount = 2},
        {type = 'item', name = 'low-density-structure', amount = 1},
        {type = 'item', name = 'acrylic', amount = 2},
        {type = 'fluid', name = 'psc', amount = 50},
        {type = 'fluid', name = 'numal-ink', amount = 10},
    },
    results = {
        {type = 'item', name = 'brain-cartridge-04', amount = 3},
    },

}:add_unlock("vatbrain-mk04")

RECIPE {
    type = 'recipe',
    name = 'brain-food-1',
    category = "vat",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'brain-cartridge-01', amount = 1},
    },
    results = {},
    icon = '__pyalienlifegraphics2__/graphics/icons/brain-cartridge-01.png',
    icon_size = 64,
    subgroup = 'py-alienlife-used',
    order = 'aa'
}:add_unlock("vatbrain")