local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-mukmoux',
	category = 'mukmoux',
	module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='fawogae',amount =15},
                    {name='ralesiaseeds',amount =15},
					{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedmukmoux', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'mukmoux'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesiaseeds',amount ='R'},
                    {name='fawogae',amount ='R'},
					{name='mukmouxfood01',amount =1},
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
					{name='salt',amount = 10},
					{name='bedding',amount = 2},
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
					{name='rawfiber',amount = 5},
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
					{name='mukmouxfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='mukmouxfood02',amount =1},

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
					{name='salt',amount ='R'},
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
					{name='rawfiber',amount = 5},
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
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral',amount =1},
				},
			results =
				{
					{name='cagedmukmoux', amount ='R'},
					{name='cagedmukmoux', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral',amount =1},
					{name='gh',amount ='R'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name='nanochondria',amount =1},
					--{name='antiviral',amount ='R'},
				},
			results =
				{
					{name='cagedmukmoux', amount ='R'},
					{name='braincagedmukmoux',1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='nanochondria',amount ='R'},
					{name='bmp',amount =1},
				},
			results =
				{
					{name='braincagedmukmoux', amount ='R'},
					{name='bonecagedmukmoux', 1},
				},
			crafting_speed = 90,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',amount ='R'},
					{name='bmp',amount ='R'},
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='bonecagedmukmoux', amount ='R'},
					{name='meatcagedmukmoux', 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'anabolic-rna'
		},
	}
}

------------------CALF MAKER------------------

fun.autorecipes {
    name = 'mukmoux-calf',
	category = 'mukmoux',
	module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='fawogae',amount =15},
                    {name='ralesiaseeds',amount =15},
					{name='waterbarrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='cage',amount=1},
					{name='bedding',amount = 2},
				},
			results =
				{
					{name='mukmouxcalf', amount =1},
				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesiaseeds',amount ='R'},
                    {name='fawogae',amount ='R'},
					{name='mukmouxfood01',amount =1},
				},
			results =
				{
				
				},
			crafting_speed = 70,
			tech = 'assisted-embryology'
		},
		--salt
		{
			ingredients =
				{
					{name='salt',amount = 10},
				},
			results =
				{
				
				},
			crafting_speed = 65,
			tech = 'assisted-embryology'
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
			crafting_speed = 60,
			tech = 'assisted-embryology'
		},		
		--food 2
		{
			ingredients =
				{
					{name='mukmouxfood01',amount ='R'},
					{name='salt',amount ='R'},
					{name='rawfiber',amount ='R'},
					{name='mukmouxfood02',amount =1},

				},
			results =
				{
				
				},
			crafting_speed = 65,
			tech = 'assisted-embryology'
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
			crafting_speed = 60,
			tech = 'assisted-embryology'
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
			crafting_speed = 55,
			tech = 'assisted-embryology'
		},	
		--feromons

	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =2},
					{name='meat', probability = 0.4,amount_min =1,amount_max =4},
					{name='skin', probability = 0.4,amount_min =1,amount_max =4},
					{name='fat', probability = 0.8,amount_min =1,amount_max =5},
					{name='guts', probability = 0.4,amount_min =1,amount_max =4},
					{name='blood', amount =50},
					{name='cage',amount=1},
					{name='brain', probability = 0.4,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'mukmoux',
			name = 'Full Render mukmouxs',
			icon = "__pyalienlife__/graphics/icons/rendering-mukmoux.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
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
					{name='bonemeal', amount = 4},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'mukmouxs to Bonemeal',
			icon = "__pyalienlife__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract mukmoux Meat',
			icon = "__pyalienlife__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract mukmoux brains',
			icon = "__pyalienlife__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},	
		--skin
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract mukmoux skin',
			icon = "__pyalienlife__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract mukmoux bones',
			icon = "__pyalienlife__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =8},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract mukmoux guts',
			icon = "__pyalienlife__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =130},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract mukmoux blood',
			icon = "__pyalienlife__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='cagedmukmoux',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract mukmoux lard',
			icon = "__pyalienlife__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},	
	}
}