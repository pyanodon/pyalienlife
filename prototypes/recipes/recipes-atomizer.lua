RECIPE {
    type = "recipe",
    name = "blood-to-iron",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood", amount = 50},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 10},
    },
    icons = py.composite_icon("iron-ore", "blood"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion")

RECIPE {
    type = "recipe",
    name = "meat-to-iron",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 5},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 10},
    },
    icons = py.composite_icon("iron-ore", "meat"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "meat-and-gut-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 5},
        {type = "item", name = "guts", amount = 5},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 35},
    },
    icons = py.composite_icon("copper-ore", "meat", "guts"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "arthropod-blood-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "arthropod-blood", amount = 50},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 20},
    },
    icons = py.composite_icon("copper-ore", "arthropod-blood"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "tuuphra-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "tuuphra", amount = 4},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 20},
    },
    icons = py.composite_icon("copper-ore", "tuuphra"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "meat-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 6},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 10},
    },
    icons = py.composite_icon("copper-ore", "meat"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "guts-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guts", amount = 6},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 15},
    },
    icons = py.composite_icon("copper-ore", "guts"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "fish-to-iron",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "fish-oil", amount = 50},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 20},
    },
    icons = py.composite_icon("iron-ore", "fish-oil"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "tuupha-to-iron",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "tuuphra-seeds", amount = 30},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 6},
    },
    icons = py.composite_icon("iron-ore", "tuuphra-seeds"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "fawogae-to-iron",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fawogae", amount = 6},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 5},
    },
    icons = py.composite_icon("iron-ore", "fawogae"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion")

RECIPE {
    type = "recipe",
    name = "fish-oil-to-tin",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "fish-oil", amount = 50},
    },
    results = {
        {type = "item", name = "ore-tin", amount = 10},
    },
    icons = py.composite_icon("ore-tin", "fish-oil"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "meat-to-nitrogen",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 10},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 150},
    },
    icons = py.composite_icon("nitrogen", "meat"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "guts-to-chlorine",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guts", amount = 5},
    },
    results = {
        {type = "fluid", name = "chlorine", amount = 100},
    },
    icons = py.composite_icon("chlorine", "guts"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion")

RECIPE {
    type = "recipe",
    name = "blood-to-chlorine",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood", amount = 100},
    },
    results = {
        {type = "fluid", name = "chlorine", amount = 50},
    },
    icons = py.composite_icon("chlorine", "blood"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "brain-guts-to-zinc",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guts",  amount = 6},
        {type = "item", name = "brain", amount = 3},
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 30},
    },
    icons = py.composite_icon("ore-zinc", "guts", "brain"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "grod-to-zinc",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "grod-seeds", amount = 10},
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 5},
    },
    icons = py.composite_icon("ore-zinc", "grod-seeds"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "blood-to-zinc",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood", amount = 100},
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 20},
    },
    icons = py.composite_icon("ore-zinc", "blood"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "bhoddos-to-ti",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "bhoddos", amount = 2},
    },
    results = {
        {type = "item", name = "ore-titanium", amount = 10},
    },
    icons = py.composite_icon("ore-titanium", "bhoddos"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "navens-to-ti",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "navens", amount = 1},
    },
    results = {
        {type = "item", name = "ore-titanium", amount = 17},
    },
    icons = py.composite_icon("ore-titanium", "navens"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "yaedol-to-sulfur",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "yaedols", amount = 5},
    },
    results = {
        {type = "item", name = "sulfur", amount = 12},
    },
    icons = py.composite_icon("sulfur", "yaedols"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "fawogae-to-sulfur",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fawogae", amount = 5},
    },
    results = {
        {type = "item", name = "sulfur", amount = 5},
    },
    icons = py.composite_icon("sulfur", "fawogae"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "rennea-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "rennea-seeds", amount = 3},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 10},
    },
    icons = py.composite_icon("copper-ore", "rennea-seeds"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "yaedols-to-copper",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "yaedols", amount = 3},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 8},
    },
    icons = py.composite_icon("copper-ore", "yaedols"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "brain-to-zinc",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "brain", amount = 3},
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 12},
    },
    icons = py.composite_icon("ore-zinc", "brain"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = "recipe",
    name = "guts-to-zinc",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guts", amount = 6},
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 15},
    },
    icons = py.composite_icon("ore-zinc", "guts"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = "recipe",
    name = "carapace-to-al",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "carapace", amount = 3},
    },
    results = {
        {type = "item", name = "ore-aluminium", amount = 25},
    },
    icons = py.composite_icon("ore-aluminium", "carapace"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = "recipe",
    name = "spikes-to-mo",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "dingrit-spike", amount = 2},
    },
    results = {
        {type = "item", name = "molybdenum-ore", amount = 30},
    },
    icons = py.composite_icon("molybdenum-ore", "dingrit-spike"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "tuuphra-to-mo",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "tuuphra", amount = 5},
    },
    results = {
        {type = "item", name = "molybdenum-ore", amount = 5},
    },
    icons = py.composite_icon("molybdenum-ore", "tuuphra"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "cridren-seeds-to-mo",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "cridren-seeds", amount = 1},
    },
    results = {
        {type = "item", name = "molybdenum-ore", amount = 10},
    },
    icons = py.composite_icon("molybdenum-ore", "cridren-seeds"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = "recipe",
    name = "yotoi-leaves-to-chromium",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "yotoi-leaves", amount = 5},
    },
    results = {
        {type = "item", name = "ore-chromium", amount = 17},
    },
    icons = py.composite_icon("ore-chromium", "yotoi-leaves"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-to-chromium",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "yotoi-fruit", amount = 5},
    },
    results = {
        {type = "item", name = "ore-chromium", amount = 10},
    },
    icons = py.composite_icon("ore-chromium", "yotoi-fruit"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "meat-to-chromium",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 5},
    },
    results = {
        {type = "item", name = "ore-chromium", amount = 15},
    },
    icons = py.composite_icon("ore-chromium", "meat"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "yotoi-seed-to-chromium",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "yotoi-seeds", amount = 1},
    },
    results = {
        {type = "item", name = "ore-chromium", amount = 25},
    },
    icons = py.composite_icon("ore-chromium", "yotoi-seeds"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "meat-to-tin",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "meat", amount = 5},
    },
    results = {
        {type = "item", name = "ore-tin", amount = 15},
    },
    icons = py.composite_icon("ore-tin", "meat"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion")

RECIPE {
    type = "recipe",
    name = "fish-to-tin",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fish", amount = 10},
    },
    results = {
        {type = "item", name = "ore-tin", amount = 25},
    },
    icons = py.composite_icon("ore-tin", "fish"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-to-tin",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "yotoi-fruit", amount = 3},
    },
    results = {
        {type = "item", name = "ore-tin", amount = 10},
    },
    icons = py.composite_icon("ore-tin", "yotoi-fruit"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "grod-to-tin",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "grod", amount = 5},
    },
    results = {
        {type = "item", name = "ore-tin", amount = 5},
    },
    icons = py.composite_icon("ore-tin", "grod"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = "recipe",
    name = "navens-to-tin",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "navens", amount = 1},
    },
    results = {
        {type = "item", name = "ore-tin", amount = 17},
    },
    icons = py.composite_icon("ore-tin", "navens"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "manure-to-nitrogen",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "manure", amount = 8},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 50},
    },
    icons = py.composite_icon("nitrogen", "manure"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "simik-scales-to-uranium",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "simik-scales", amount = 2},
    },
    results = {
        {type = "item", name = "uranium-ore", amount = 8},
    },
    icons = py.composite_icon("uranium-ore", "simik-scales"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = "recipe",
    name = "simik-poop-to-borax",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "simik-poop", amount = 3},
    },
    results = {
        {type = "item", name = "raw-borax", amount = 8},
    },
    icons = py.composite_icon("raw-borax", "simik-poop"),
    icon_size = 64,
    --main_product = 'cocoon',
}:add_unlock("molecular-decohesion-mk03")

if mods.pyalternativeenergy then
    -- DEPRECATE: probably deprecate this in next major py update in favor of chain in breaking changes branch
    RECIPE {
        type = "recipe",
        name = "chitin-to-geothermal-water",
        category = "atomizer",
        enabled = false,
        hidden = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "chitin", amount = 2},
        },
        results = {
            {type = "fluid", name = "geothermal-water", amount = 50, temperature = 3000},
        },
    }:add_unlock("molecular-decohesion")
end
