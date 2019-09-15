local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-ulric',
	category = 'ulric',
	module_limitations = 'ulric',
    mats =
	{
		{
			ingredients =
				{
					{name='ralesiaseeds',amount =15},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedulric', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'ulric'
		},
		--food 1
		{
			ingredients =
				{
					{name='ralesiaseeds',amount ='R'},
					{name='ulricfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'ulric'
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 130,
			tech = 'ulric'
		},
		--fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 120,
			tech = 'ulric'
		},		
		--food 2
		{
			ingredients =
				{
					{name='ulricfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='ulricfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'ulric'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount ='R'},
				},
			results =
				{
				
				},
			crafting_speed = 100,
			tech = 'ulric'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 5},
				},
			results =
				{
				
				},
			crafting_speed = 90,
			tech = 'ulric'
		},	
		--gh
		{
			ingredients =
				{
					{name='gh',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 30,
			tech = 'growth-hormone'
		},
	}
}



------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	--module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.2,amount_min =1,amount_max =1},
					{name='fat', probability = 0.3,amount_min =1,amount_max =1},
					{name='guts', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =50},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'ulric',
			name = 'Full Render Ulrics',
			icon = "__pyalienlife__/graphics/icons/rendering-ulric.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
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
					{name='bonemeal', amount = 6},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Ulrics to Bonemeal',
			icon = "__pyalienlife__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Extract Ulric Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Extract Ulric brains',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--skin
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Extract Ulric skin',
			icon = "__pyalienlife__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =5},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Extract Ulric bones',
			icon = "__pyalienlife__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Extract Ulric guts',
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Extract Ulric blood',
			icon = "__pyalienlife__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedulric',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =2},
				},
			crafting_speed = 15,
			tech = 'ulric',
			name = 'Extract Ulric lard',
			icon = "__pyalienlife__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},	
	}
}