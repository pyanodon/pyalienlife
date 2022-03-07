ITEM {
    type = "item",
    name = "powdered-biomass",
    icon = "__pyalienlifegraphics__/graphics/icons/powdered-biomass.png",
    icon_size = 32,
    fuel_category = "biomass",
    fuel_value = "0.5MJ",
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
    fuel_category = "biomass",
    fuel_value = "0.75MJ",
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
    fuel_category = "biomass",
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
	limitation = {},
	limitation_message_key = "Simik",
    fuel_category = 'simik',
    fuel_value = '600MJ',
    burnt_result = 'used-simik'
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
	limitation = {},
	limitation_message_key = "Simik",
    fuel_category = 'simik',
    fuel_value = '800MJ',
    burnt_result = 'used-simik-mk02'
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
	limitation = {},
	limitation_message_key = "Simik",
    fuel_category = 'simik',
    fuel_value = '1100MJ',
    burnt_result = 'used-simik-mk03'
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
	limitation = {},
	limitation_message_key = "Simik",
    fuel_category = 'simik',
    fuel_value = '1500MJ',
    burnt_result = 'used-simik-mk04'
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

ITEM {
    type = "item",
    name = "fishmeal",
    icon = "__pyalienlifegraphics__/graphics/icons/fishmeal.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-food",
    order = "x",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "native-flora",
    icon = "__pyalienlifegraphics__/graphics/icons/mip/bio/19.png",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/01.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/30.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/03.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/04.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/28.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/26.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/07.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/08.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/09.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/19.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/18.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/27.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/13.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/14.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/24.png", scale = 0.5, },
      { size = 64, filename = "__pyalienlifegraphics__/graphics/icons/mip/bio/29.png", scale = 0.5, },
    },
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "used-simik",
    icons =
	{
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/tired.png"},
        --{icon = "__pyalienlifegraphics__/graphics/icons/over-mk01.png"},
    },
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-used",
    order = "x",
    stack_size = 1
}

ITEM {
    type = "item",
    name = "used-simik-mk02",
    icons =
	{
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/tired.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-used",
    order = "x",
    stack_size = 1
}

ITEM {
    type = "item",
    name = "used-simik-mk03",
    icons =
	{
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/tired.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    },
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-used",
    order = "x",
    stack_size = 1
}

ITEM {
    type = "item",
    name = "used-simik-mk04",
    icons =
	{
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/tired.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-used",
    order = "x",
    stack_size = 1
}

---ZUNGROR---
local alien_life_limitations_zungror =
{
}


ITEM {
    type = "module",
    name = "zungror",
    icons =
    {
        --{icon = "__pyalienlifegraphics__/graphics/icons/over-mk01.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png"}
    },
    icon_size = 64,
	category = "zungror",
	tier = 1,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-a",
    stack_size = 300,
	effect = { speed = {bonus = 2}},
	limitation = {},
	limitation_message_key = "zungror",
}

ITEM {
    type = "module",
    name = "zungror-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png"}
    },
    icon_size = 64,
	category = "zungror",
	tier = 2,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-b",
    stack_size = 300,
	effect = { speed = {bonus = 4}},
	limitation = {},
	limitation_message_key = "zungror",
}

ITEM {
    type = "module",
    name = "zungror-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png"}
    },
    icon_size = 64,
	category = "zungror",
	tier = 3,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-c",
    stack_size = 300,
	effect = { speed = {bonus = 6}},
	limitation = {},
	limitation_message_key = "zungror",
}

ITEM {
    type = "module",
    name = "zungror-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png"}
    },
    icon_size = 64,
	category = "zungror",
	tier = 4,
    flags = {},
    subgroup = "py-alienlife-modules",
    order = "xa-d",
    stack_size = 300,
	effect = { speed = {bonus = 8}},
	limitation = {},
	limitation_message_key = "zungror",
}


ITEM {
    type = "item",
    name = "caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/caged-zungror.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "a",
    stack_size = 50
}
ITEM {
    type = "item",
    name = "zungror-cocoon",
    icon = "__pyalienlifegraphics__/graphics/icons/zungror-cocoon.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "vsk",
    icon = "__pyalienlifegraphics3__/graphics/icons/vsk.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "x",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "earth-goat-sample",
    icon = "__pyalienlifegraphics__/graphics/icons/earth-goat-sample.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-samples",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "earth-spider-sample",
    icon = "__pyalienlifegraphics__/graphics/icons/earth-spider-sample.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-samples",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "zungror-codex",
    icon = "__pyalienlifegraphics__/graphics/icons/zungror-codex.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "guts-caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-zungror.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "blood-caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-zungror.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "brain-caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-zungror.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "b",
    stack_size = 50
}
ITEM {
    type = "item",
    name = "fat-caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-zungror.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "b",
    stack_size = 50
}
ITEM {
    type = "item",
    name = "meat-caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-zungror.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "b",
    stack_size = 50
}
ITEM {
    type = "item",
    name = "skin-caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-zungror.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "bone-caged-zungror",
    icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-zungror.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-zungror",
    order = "b",
    stack_size = 50
}