ITEM {
    type = "item",
    name = "fiber",
    fuel_category = "biomass",
    fuel_value = "8MJ",
    icon = "__pyalienlifegraphics__/graphics/icons/fiber.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "h",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "kicalk-seeds",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-seeds.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "kicalk-seeds-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/kicalk-seeds.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
        },
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "kicalk-seeds-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/kicalk-seeds.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
        },
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "kicalk-seeds-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/kicalk-seeds.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
        },
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "kicalk-codex",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-codex.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "earth-palmtree-sample",
    icon = "__pyalienlifegraphics__/graphics/icons/earth-palmtree-sample.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-samples",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "module",
    name = "kicalk",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",
    icon_size = 64,
    category = "kicalk",
    tier = 1,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "k-a",
    stack_size = 50,
    effect = {pollution = 1,speed = 0.25},
    limitation = {},
    limitation_message_key = "kicalk"
}

ITEM {
    type = "module",
    name = "kicalk-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
    icon_size = 64,
    category = "kicalk",
    tier = 2,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "k-b",
    stack_size = 50,
    effect = {pollution = 1,speed = 0.5},
    limitation = {},
    limitation_message_key = "kicalk"
}

ITEM {
    type = "module",
    name = "kicalk-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    },
    icon_size = 64,
    category = "kicalk",
    tier = 3,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "k-c",
    stack_size = 50,
    effect = {pollution = 1,speed = 1},
    limitation = {},
    limitation_message_key = "kicalk"
}

ITEM {
    type = "module",
    name = "kicalk-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
    icon_size = 64,
    category = "kicalk",
    tier = 4,
    flags = {},
    subgroup = "py-alienlife-kicalk",
    order = "k-d",
    stack_size = 50,
    effect = {pollution = 1,speed = 1.5},
    limitation = {},
    limitation_message_key = "kicalk"
}

data:extend{{
    type = 'item',
    name = 'kicalk-dry',
    icon = '__pyalienlifegraphics__/graphics/icons/kicalk-dry.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-kicalk',
    order = 'b',
    stack_size = data.raw.module['kicalk'].stack_size * 2,
}}

ITEM {
    type = "item",
    name = "urea",
    icon = "__pyalienlifegraphics__/graphics/icons/urea.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "d",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-codex",
    icon = "__pyalienlifegraphics__/graphics/icons/moondrop-codex.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-seeds",
    icon = "__pyalienlifegraphics__/graphics/icons/moondrop-seeds.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-seeds-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/moondrop-seeds.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
        },
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-seeds-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/moondrop-seeds.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
        },
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-seeds-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/moondrop-seeds.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
        },
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "module",
    name = "moondrop",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/moondrop.png", icon_size = 64},
    },
    icon_size = 64,
    category = "moondrop",
    tier = 1,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-d",
    stack_size = 50,
    effect = {pollution = 1,speed = 1},
    limitation = {},
    limitation_message_key = "moondrop"
}

ITEM {
    type = "module",
    name = "moondrop-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/moondrop.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
    icon_size = 64,
    category = "moondrop",
    tier = 2,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-d",
    stack_size = 50,
    effect = {pollution = 1,speed = 2},
    limitation = {},
    limitation_message_key = "moondrop"
}

ITEM {
    type = "module",
    name = "moondrop-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/moondrop.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    },
    icon_size = 64,
    category = "moondrop",
    tier = 3,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-d",
    stack_size = 50,
    effect = {pollution = 1,speed = 3},
    limitation = {},
    limitation_message_key = "moondrop"
}

ITEM {
    type = "module",
    name = "moondrop-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/moondrop.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
    icon_size = 64,
    category = "moondrop",
    tier = 4,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-d",
    stack_size = 50,
    effect = {pollution = 1,speed = 4},
    limitation = {},
    limitation_message_key = "moondrop"
}

ITEM {
    type = "item",
    name = "moondrop-gas",
    icon = "__pyalienlifegraphics__/graphics/icons/moondrop-flower-iron.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-c",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-diesel",
    icon = "__pyalienlifegraphics__/graphics/icons/moondrop-flower-cobalt.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-c",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-kerosene",
    icon = "__pyalienlifegraphics__/graphics/icons/moondrop-flower-zinc.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-c",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "moondrop-fueloil",
    icon = "__pyalienlifegraphics__/graphics/icons/moondrop-flower-gold.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-moon",
    order = "k-c",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "s-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/s-biomass.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-phytomining",
    order = "h",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "earth-antelope-sample",
    icon = "__pyalienlifegraphics__/graphics/icons/earth-antelope-sample.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-samples",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "caged-antelope",
    icon = "__pyalienlifegraphics__/graphics/icons/caged-antelope.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-antelope",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "antelope-codex",
    icon = "__pyalienlifegraphics__/graphics/icons/antelope-codex.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "dimensional-gastricorg",
    icon = "__pyalienlifegraphics3__/graphics/icons/dimensional-gastricorg.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-antelope",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "cadaveric-arum-seeds",
    icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-seeds.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-cadaveric",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "cadaveric-arum-seeds-mk02",
    icons = {
		{icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-seeds.png", icon_size = 64},
		{icon = '__pyalienlifegraphics__/graphics/icons/over-mk02.png', icon_size = 64}
	},
    flags = {},
    subgroup = "py-alienlife-cadaveric",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "cadaveric-arum-seeds-mk03",
    icons = {
		{icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-seeds.png", icon_size = 64},
		{icon = '__pyalienlifegraphics__/graphics/icons/over-mk03.png', icon_size = 64}
	},
    flags = {},
    subgroup = "py-alienlife-cadaveric",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "cadaveric-arum-seeds-mk04",
    icons = {
		{icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-seeds.png", icon_size = 64},
		{icon = '__pyalienlifegraphics__/graphics/icons/over-mk04.png', icon_size = 64}
	},
    flags = {},
    subgroup = "py-alienlife-cadaveric",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "module",
    name = "cadaveric-arum",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png"},
    },
    icon_size = 64,
    category = "arum",
    tier = 1,
    flags = {},
    subgroup = 'py-alienlife-cadaveric',
    order = "cad-a",
    stack_size = 50,
    effect = {pollution = 1,speed = 1},
    limitation = {},
    limitation_message_key = "cadaveric-arum"
}

ITEM {
    type = "module",
    name = "cadaveric-arum-mk02-a",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
    icon_size = 64,
    category = "arum",
    tier = 2,
    flags = {},
    subgroup = 'py-alienlife-cadaveric',
    order = "cad-b",
    stack_size = 50,
    effect = {pollution = 1,speed = 2},
    limitation = {},
    limitation_message_key = "cadaveric-arum"
}

ITEM {
    type = "module",
    name = "cadaveric-arum-mk03-a",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    },
    icon_size = 64,
    category = "arum",
    tier = 3,
    flags = {},
    subgroup = 'py-alienlife-cadaveric',
    order = "cad-c",
    stack_size = 50,
    effect = {pollution = 1,speed = 3},
    limitation = {},
    limitation_message_key = "cadaveric-arum"
}

ITEM {
    type = "module",
    name = "cadaveric-arum-mk04-a",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
    icon_size = 64,
    category = "arum",
    tier = 4,
    flags = {},
    subgroup = 'py-alienlife-cadaveric',
    order = "cad-d",
    stack_size = 50,
    effect = {pollution = 1,speed = 4},
    limitation = {},
    limitation_message_key = "cadaveric-arum"
}

ITEM {
    type = "module",
    name = "antelope",
    icon = "__pyalienlifegraphics__/graphics/icons/antelope.png",
    icon_size = 64,
	category = "antelope",
	tier = 1,
    flags = {},
    subgroup = "py-alienlife-antelope",
    order = "r",
    stack_size = 50,
	effect = {pollution = 1,speed = 1},
	limitation = {},
	limitation_message_key = "antelope"
}
