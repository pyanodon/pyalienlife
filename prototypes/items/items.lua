ITEM {
    type = "item",
    name = "moss",
    icon = "__pyalienlife__/graphics/icons/moss.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-plants",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "biomass",
    icon = "__pyalienlife__/graphics/icons/biomass.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "4MJ",
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "fungal-substrate",
    icon = "__pyalienlife__/graphics/icons/fungal-substrate.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "4MJ",
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "fawogae-spore",
    icon = "__pyalienlife__/graphics/icons/fawogae-spore.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "wood-seedling",
    icon = "__pyalienlife__/graphics/icons/mip/seedling-1.png",
    icon_size = 64,
    icon_mipmaps = 3,
    pictures =
    {
      { size = 64, filename = "__pyalienlife__/graphics/icons/mip/seedling-1.png",   scale = 0.25, mipmap_count = 1 },
      { size = 64, filename = "__pyalienlife__/graphics/icons/mip/seedling-2.png", scale = 0.25, mipmap_count = 1 },
      { size = 64, filename = "__pyalienlife__/graphics/icons/mip/seedling-3.png", scale = 0.25, mipmap_count = 1 },
    },
    flags = {},
    subgroup = "py-alienlife-plants",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "wood-seeds",
    icon = "__pyalienlife__/graphics/icons/wood-seeds.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "empty-petri-dish",
    icon = "__pyalienlife__/graphics/icons/empty-petri-dish.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "petri-dish",
    icon = "__pyalienlife__/graphics/icons/petri-dish.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "petri-dish-bacteria",
    icon = "__pyalienlife__/graphics/icons/petri-dish-bacteria.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "seaweed",
    icon = "__pyalienlife__/graphics/icons/seaweed.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-plants",
    order = "b",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "agar",
    icon = "__pyalienlife__/graphics/icons/agar.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "b",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "moss-gen",
    icon = "__pyalienlife__/graphics/icons/moss-gen.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "b",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "cocoon",
    icon = "__pyalienlife__/graphics/icons/cocoon.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-creatures",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "plasmids",
    icon = "__pyalienlife__/graphics/icons/plasmids.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "retrovirus",
    icon = "__pyalienlife__/graphics/icons/retrovirus.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "cdna",
    icon = "__pyalienlife__/graphics/icons/cdna.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "b",
    stack_size = 50
}

ITEM {
    type = "item",
    name = "sea-sponge",
    icon = "__pyalienlife__/graphics/icons/sea-sponge.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-creatures",
    order = "a",
    stack_size = 50
}

local alien_life_limitations =
	{
	"cocoon-1"
	}

--Test ITEM
ITEM {
    type = "module",
    name = "test",
    icon = "__pyalienlife__/graphics/icons/cdna.png",
    icon_size = 64,
	category = "food",
	tier = 1,
    flags = {},
    subgroup = "py-alienlife-items",
    order = "b",
    stack_size = 10,
	effect = { speed = {bonus = 50}},
	limitation = alien_life_limitations,
	limitation_message_key = "Dont stick that in there"
}

data:extend(
{
  {
    type = "module-category",
    name = "food"
  },
}
)
