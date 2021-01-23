ITEM {
    type = "item",
    name = "powdered-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/powdered-biomass.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "1.05MJ",
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "fine-powdered-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/fine-powdered-biomass.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "1.1MJ",
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "dried-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/dried-biomass.png",
    icon_size = 64,
    fuel_category = "chemical",
    fuel_value = "1.2MJ",
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "green-sic",
    icon = "__pyalienlifegraphics__/graphics/icons/green-sic.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "sic",
    icon = "__pyalienlifegraphics__/graphics/icons/sic.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "quartz-tube",
    icon = "__pyalienlifegraphics__/graphics/icons/quartz-tube.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "mosfet",
    icon = "__pyalienlifegraphics__/graphics/icons/mosfet.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "nisi",
    icon = "__pyalienlifegraphics__/graphics/icons/nisi.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "abacus",
    icon = "__pyalienlifegraphics__/graphics/icons/abacus.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-arthurian",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "chlorinated-water",
    icon = "__pyalienlifegraphics2__/graphics/icons/bleach.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "honeycomb",
    icon = "__pyalienlifegraphics2__/graphics/icons/honeycomb.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-arqad",
    order = "ua",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "empty-honeycomb",
    icon = "__pyalienlifegraphics2__/graphics/icons/empty-honeycomb.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-arqad",
    order = "ub",
    stack_size = 100
}

local alien_life_limitations_simik =
{
}

----MODULES----

ITEM {
    type = "module",
    name = "simik",
    icons =
    {
        --{icon = "__pyalienlifegraphics__/graphics/icons/over-mk01.png"},
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"}
    },
    icon_size = 64,
	category = "simik",
	tier = 1,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-a",
    stack_size = 300,
	effect = { speed = {bonus = 2}},
	limitation = alien_life_limitations_simik,
	limitation_message_key = "Simik"
}

ITEM {
    type = "module",
    name = "simik-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"}
    },
    icon_size = 64,
	category = "simik",
	tier = 2,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-b",
    stack_size = 300,
	effect = { speed = {bonus = 4}},
	limitation = alien_life_limitations_simik,
	limitation_message_key = "Simik"
}

ITEM {
    type = "module",
    name = "simik-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"}
    },
    icon_size = 64,
	category = "simik",
	tier = 3,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-c",
    stack_size = 300,
	effect = { speed = {bonus = 6}},
	limitation = alien_life_limitations_simik,
	limitation_message_key = "Simik"
}

ITEM {
    type = "module",
    name = "simik-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"}
    },
    icon_size = 64,
	category = "simik",
	tier = 4,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-d",
    stack_size = 300,
	effect = { speed = {bonus = 8}},
	limitation = alien_life_limitations_simik,
	limitation_message_key = "Simik"
}

    {
    type = "module-category",
    name = "simik",
    }

ITEM {
    type = "item",
    name = "caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "a",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "brain-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/brain-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "bone-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/bone-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "chitin-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/chitin-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "meat-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/meat-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "skin-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/skin-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "blood-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/blood-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "guts-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/guts-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "fat-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/fat-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "hot-air-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/hot-air-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "keratin-caged-simik",
    icon = "__pyalienlifegraphics2__/graphics/icons/keratin-caged-simik.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "simik-pup",
    icon = "__pyalienlifegraphics2__/graphics/icons/simik-pup.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "a",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "keratin",
    icon = "__pyalienlifegraphics2__/graphics/icons/keratin.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "c",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "simik-codex",
    icon = "__pyalienlifegraphics2__/graphics/icons/simik-codex.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "strorix-unknown-sample",
    icon = "__pyalienlifegraphics2__/graphics/icons/strorix-unknown-sample.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-samples",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "simik-food-01",
    icon = "__pyalienlifegraphics2__/graphics/icons/simik-food-01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-food",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "simik-food-02",
    icon = "__pyalienlifegraphics2__/graphics/icons/simik-food-02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-food",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "hormonal",
    icon = "__pyalienlifegraphics2__/graphics/icons/hormonal.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-simik",
    order = "x",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "lcc",
    icon = "__pyalienlifegraphics2__/graphics/icons/lcc.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-cottongut",
    order = "x",
    stack_size = 50
}