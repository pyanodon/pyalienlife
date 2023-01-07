local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 8

local BASE_BONES = 2
local BASE_MEAT = 2
local BASE_SKIN = 3
local BASE_GUTS = 5
local BASE_BLOOD = 40
local BASE_SPECIAL = 100


FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	--module_limitations = 'fish',
	subgroup = 'py-alienlife-fish',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='fish', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', amount = BASE_MEAT},
					{name='skin', amount = BASE_SKIN},
					{name='guts', amount = BASE_GUTS},
					{name='fish-oil', amount = BASE_SPECIAL},
				},
			crafting_speed = 30,
			tech = 'water-animals-mk01',
			name = 'full-render-fish',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-fish.png",
			icon_size = 64,
		},
    }
}
--[[
		--oil
		{
			ingredients =
				{
					--{name='cagedfish', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='fish-oil', amount =100},
				},
			crafting_speed = 10,
			tech = 'water-animals-mk01',
			name = 'Extract Oil from fish',
			icon = "__pyalienlifegraphics__/graphics/icons/fish-oil.png",
			icon_size = 64,
		},
	}
}
]]--
