local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-auog', amount=3},
				},
			results =
				{
					{name='bones', amount_min =2, amount_max =6},
					{name='meat', amount_min =3, amount_max =7},
					{name='skin', amount_min =1, amount_max =3},
					{name='mukmoux-fat', amount_min =1, amount_max =5},
					{name='guts', amount_min =1, amount_max =5},
					{name='blood', amount =150},
					{name='brain', amount_min =1, amount_max =3},
					{name='biomass', amount_min = 2, amount_max = 5},
					{name='cage', amount=3},
				},
			crafting_speed = 10,
			tech = 'rendering',
			name = 'Full Render auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-auog.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='bonemeal', amount = 8},
					{name='biomass', remove_item = true},
					{name='biomass', amount_min = 5, amount_max = 8},
				},
			crafting_speed = 10,
			tech = 'rendering',
			name = 'auogs to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =12},
				},
			crafting_speed = 10,
			tech = 'advanced-rendering',
			name = 'Extract auog Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =3},
				},
			crafting_speed = 10,
			tech = 'advanced-rendering',
			name = 'Extract auog brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =5},
				},
			crafting_speed = 10,
			tech = 'advanced-rendering',
			name = 'Extract auog skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =7},
				},
			crafting_speed = 10,
			tech = 'advanced-rendering',
			name = 'Extract auog bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =8},
				},
			crafting_speed = 10,
			tech = 'advanced-rendering',
			name = 'Extract auog guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =150},
				},
			crafting_speed = 10,
			tech = 'advanced-rendering',
			name = 'Extract auog blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-auog', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =6},
				},
			crafting_speed = 10,
			tech = 'advanced-rendering',
			name = 'Extract auog lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
	}
}
