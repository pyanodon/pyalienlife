local fun = require("prototypes/functions/functions")


------------------ARTHURIANS------------------

fun.autorecipes {
    name = 'rendering-meats-arthurians-2',
	category = 'slaughterhouse',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		--meat
		{
			ingredients =
				{
					--{name='cagedarthurian',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract arthurian Meat-2',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},	
		--meat arthurian rendering
		{
			ingredients =
				{
					{name='fatcagedarthurian',amount='R'},
					{name='meatcagedarthurian',amount=1},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved arthurians-2',
			icon = "__pyalienlife__/graphics/icons/meat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

fun.autorecipes {
    name = 'rendering-meats-auog-2',
	category = 'slaughterhouse',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{

		--meat
		{
			ingredients =
				{
					--{name='cagedauog',amount=1},
				},
			results =
				{
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount =12},
				},
                crafting_speed = 15,
                tech = 'myostatin',
                name = 'Extract auog Meat-2',
                icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
                icon_size = 64,
		},	
		--meat auog rendering
		{
			ingredients =
				{
					{name='bonecagedauog',amount='R'},
					{name='meatcagedauog',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =16},
				},
			crafting_speed = 15,
			tech = 'myostatin',
			name = 'Extract meat from Improved auogs-2',
			icon = "__pyalienlife__/graphics/icons/meat-caged-auog.png",
			icon_size = 64,
		},
	}
}
