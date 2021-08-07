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
                    {name='rennea', amount =15},
                    {name='navens', amount =10},
                    {name='tuuphra-seeds', amount =15},
					{name='water-barrel', amount=6,return_item={name='empty-barrel', amount=6}},
					{name='cage-antelope', amount=1},
				},
			results =
				{
					{name='caged-antelope', probability = 0.5, amount_min =1, amount_max =1},
				},
			crafting_speed = 120,
			tech = 'schrodinger-antelope'
        },

		{
			ingredients =
				{
					{name='nano-cellulose', amount =5},
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
					{name='salt', amount = 10},
					{name='fine-nexelit-powder', amount = 4},
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
					{name='sponge', amount = 5},
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
					{name='seaweed', amount =10},
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
					{name='gh', amount =1},

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
					{name='antiviral', amount =1},
				},
			results =
				{
					{name='caged-antelope', remove_item = true},
					{name='caged-antelope', probability = 0.7, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral', amount =1},
					{name='gh',remove_item = true},
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
    name = 'rendering-antelope',
	category = 'slaughterhouse-antelope',
	--module_limitations = 'antelope',
	subgroup = 'py-alienlife-antelope',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5, amount_min =1, amount_max =4},
					{name='meat', probability = 0.5, amount_min =1, amount_max =5},
					{name='skin', probability = 0.5, amount_min =1, amount_max =2},
					{name='mukmoux-fat', probability = 0.5, amount_min =1, amount_max =2},
					{name='guts', probability = 0.5, amount_min =1, amount_max =4},
					{name='brain', probability = 0.5, amount_min =1, amount_max =1},
					{name='cage-antelope', amount=1},
					{name='strangelets', probability = 0.2, amount_min =1, amount_max =1},
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
					--{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='strangelets', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', remove_item = true},
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
					--{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
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
					--{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
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
					--{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
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
					--{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
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
					--{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
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
					--{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='cage-antelope', remove_item = true},
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
