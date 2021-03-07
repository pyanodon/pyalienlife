local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-antelope',
	category = 'antelope',
	module_limitations = 'antelope',
	subgroup = 'py-alienlife-antelope',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='rennea',amount =15},
                    {name='navens',amount =10},
                    {name='tuuphra-seeds',amount =15},
					{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					{name='cage-antelope',amount=1},
				},
			results =
				{
					{name='caged-antelope', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 120,
			tech = 'schrodinger-antelope'
        },

		{
			ingredients =
				{
					{name='nano-cellulose',amount =5},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'schrodinger-antelope'
		},

		{
			ingredients =
				{
					{name='salt',amount = 10},
					{name='fine-nexelit-powder',amount = 4},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'schrodinger-antelope'
		},
		--fiber
		{
			ingredients =
				{
					{name='sponge',amount = 5},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'schrodinger-antelope'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='seaweed',amount =10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'schrodinger-antelope'
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
					{name='caged-antelope', amount ='R'},
					{name='caged-antelope', probability = 0.7,amount_min =1,amount_max =1},
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
	}
}

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-antelope',
	--module_limitations = 'antelope',
	subgroup = 'py-alienlife-antelope',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5,amount_min =1,amount_max =4},
					{name='meat', probability = 0.5,amount_min =1,amount_max =5},
					{name='skin', probability = 0.5,amount_min =1,amount_max =2},
					{name='mukmoux-fat', probability = 0.5,amount_min =1,amount_max =2},
					{name='guts', probability = 0.5,amount_min =1,amount_max =4},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
					{name='cage-antelope', amount=1},
					{name='strangelets', probability = 0.2,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'schrodinger-antelope',
			name = 'Full Render Schrodinger antelopes',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-antelope.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='strangelets', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='mukmoux-fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
					{name='brain', amount ='R'},
					{name='meat', amount ='R'},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'schrodinger-antelope',
			name = 'Extract antelope Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'schrodinger-antelope',
			name = 'Extract antelope brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'schrodinger-antelope',
			name = 'Extract antelope skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='bones', amount =5},
				},
			crafting_speed = 15,
			tech = 'schrodinger-antelope',
			name = 'Extract antelope bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
					{name='guts', amount =5},
				},
			crafting_speed = 15,
			tech = 'schrodinger-antelope',
			name = 'Extract antelope guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='mukmoux-fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'schrodinger-antelope',
			name = 'Extract antelope lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--strangelets
		{
			ingredients =
				{
					--{name='caged-antelope',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount ='R'},
					{name='cage-antelope', amount='R'},
					{name='strangelets', amount =1},
				},
			crafting_speed = 15,
			tech = 'schrodinger-antelope',
			name = 'Extract antelope strangelets',
			icon = "__pyalienlifegraphics__/graphics/icons/strangelets.png",
			icon_size = 64,
		},
	}
}
