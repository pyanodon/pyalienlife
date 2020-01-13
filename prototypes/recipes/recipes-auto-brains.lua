local fun = require("prototypes/functions/functions")


------------------RENDERING SCRONDRIX------------------

fun.autorecipes {
    name = 'rendering-brains-scrondrix',
	category = 'slaughterhouse',
	--module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedscrondrix',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =2},
					{name='meat', probability = 0.5,amount_min =1,amount_max =3},
					{name='skin', probability = 0.4,amount_min =1,amount_max =1},
					{name='fat', probability = 0.4,amount_min =1,amount_max =2},
					{name='guts', probability = 0.5,amount_min =1,amount_max =2},
					{name='blood', amount =60},
					{name='pinealgland', probability = 0.4,amount_min =1,amount_max =1},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render scrondrixsb',
			icon = "__pyalienlife__/graphics/icons/rendering-scrondrix.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedscrondrix',amount=1},
				},
			results =
				{
                    {name='meat', amount ='R'},
					{name='bones', amount ='R'},
					{name='pinealgland', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract scrondrix brainsb',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--brain scrondrix rendering
		{
			ingredients =
				{
					{name='cagedscrondrix',amount='R'},
					{name='braincagedscrondrix',amount=1},
				},
			results =
				{
                    {name='meat', amount ='R'},
					{name='bones', amount ='R'},
					{name='pinealgland', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract brains from Improved scrondrixsb',
			icon = "__pyalienlife__/graphics/icons/brain-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}


------------------RENDERING XENOS------------------

fun.autorecipes {
    name = 'rendering-brains-xenos',
	category = 'slaughterhouse',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.45,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='chitin', probability = 0.4,amount_min =1,amount_max =4},
					--{name='fat', probability = 0.2,amount_min =1,amount_max =1},
					--{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='sulfuricacid', amount =60},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'interactive-cognition',
			name = 'Full Render Xenosb',
			icon = "__pyalienlife__/graphics/icons/rendering-xeno.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedxeno',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='chitin', amount ='R'},
					{name='sulfuricacid', amount ='R'},
                    {name='meat', amount ='R'},
                    {name='brain', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract Xeno brainsb',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	

		--brain xeno rendering
		{
			ingredients =
				{
					{name='cagedxeno',amount='R'},
					{name='brainxeno',amount=1},
				},
			results =
				{
                    {name='sulfuricacid', amount ='R'},
                    {name='bones', amount ='R'},
					{name='chitin', amount ='R'},
                    {name='meat', amount ='R'},
                    {name='brain', amount ='R'},
					{name='brain', amount =3},
				},
			crafting_speed = 15,
			tech = 'interactive-cognition',
			name = 'Extract brains from Improved Xenosb',
			icon = "__pyalienlife__/graphics/icons/brain-xeno.png",
			icon_size = 64,
		},
	}
}