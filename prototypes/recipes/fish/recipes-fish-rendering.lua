local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-fish',
	--module_limitations = 'fish',
	subgroup = 'py-alienlife-fish',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='fish', amount=8},
				},
			results =
				{
					{name='bones', amount =2},
					{name='meat', amount =2},
					{name='skin', amount =3},
					{name='guts', amount =5},
					{name='fish-oil', amount =25},
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
