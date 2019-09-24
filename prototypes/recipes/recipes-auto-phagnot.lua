local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-phagnot',
	category = 'phagnot',
	module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='fawogae',amount =10},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedphagnot', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'phagnot'
		},
		--food 1
		{
			ingredients =
				{
					{name='fawogae',amount ='R'},
					{name='phagnotfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 140,
			tech = 'food-mk01'
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 3},
					{name='bedding',amount = 1},
				},
			results =
				{
				
				},
			crafting_speed = 130,
			tech = 'organic-breeding'
		},
		--fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 120,
			tech = 'organic-breeding'
		},		
		--food 2
		{
			ingredients =
				{
					{name='phagnotfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='phagnotfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 110,
			tech = 'food-mk02'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount =3},
				},
			results =
				{
				
				},
			crafting_speed = 100,
			tech = 'organic-breeding'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 90,
			tech = 'organic-breeding'
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

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'phagnot-cub',
	category = 'phagnot',
	module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='fawogae',amount =15},
                    {name='yotoiseeds',amount =15},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
					--{name='cage',amount=1},
					{name='bedding',amount = 1},
				},
			results =
				{
					{name='phagnotcub', amount =1},
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='yotoiseeds',amount ='R'},
                    {name='fawogae',amount ='R'},
					{name='phagnotfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 60,
			tech = 'assisted-embryology'
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
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},
		--fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},		
		--food 2
		{
			ingredients =
				{
					{name='phagnotfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='phagnotfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 50,
			tech = 'assisted-embryology'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',amount =5},
				},
			results =
				{
				
				},
			crafting_speed = 45,
			tech = 'assisted-embryology'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='rawfiber',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 40,
			tech = 'assisted-embryology'
		},	
		--feromons

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	--module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =3},
					{name='meat', probability = 0.1,amount_min =1,amount_max =3},
					{name='skin', probability = 0.2,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =1},
                    {name='gasbladder', probability = 0.4,amount_min =1,amount_max =1},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'phagnot',
			name = 'Full Render phagnots',
			icon = "__pyalienlife__/graphics/icons/rendering-phagnot.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot brains',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--skin
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot skin',
			icon = "__pyalienlife__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =6},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot bones',
			icon = "__pyalienlife__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot guts',
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =70},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot blood',
			icon = "__pyalienlife__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--Gas Bladder
		{
			ingredients =
				{
					--{name='cagedphagnot',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='gasbladder', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot Gas bladder',
			icon = "__pyalienlife__/graphics/icons/gas-bladder.png",
			icon_size = 64,
		},	
	}
}