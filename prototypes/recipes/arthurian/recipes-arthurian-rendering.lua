local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-arthurian',
	--module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3, amount_min =1, amount_max =2},
					{name='meat', probability = 0.4, amount_min =1, amount_max =3},
					{name='skin', probability = 0.4, amount_min =1, amount_max =4},
					{name='mukmoux-fat', probability = 0.2, amount_min =1, amount_max =1},
					{name='guts', probability = 0.4, amount_min =1, amount_max =2},
					{name='blood', amount =20},
					{name='cage', amount=1},
					{name='brain', probability = 0.6, amount_min =1, amount_max =2},
				},
			crafting_speed = 30,
			tech = 'arthurian',
			name = 'Full Render arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-arthurian.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
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
					{name='bonemeal', amount = 5},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'arthurians to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =2},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =50},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'arthurian',
			name = 'Extract arthurian lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain arthurian rendering
		{
			ingredients =
				{
					{name='caged-arthurian',remove_item = true},
					{name='brain-caged-arthurian', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =8},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-arthurian.png",
			icon_size = 64,
		},
		--bone arthurian rendering
		{
			ingredients =
				{
					{name='brain-caged-arthurian',remove_item = true},
					{name='bone-caged-arthurian', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =12},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-arthurian.png",
			icon_size = 64,
		},
		--bonemeal arthurian rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', remove_item = true},
					{name='bonemeal', amount =10},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-arthurian.png",
			icon_size = 64,
		},
		--guts arthurian rendering
		{
			ingredients =
				{
					{name='bone-caged-arthurian',remove_item = true},
					{name='guts-caged-arthurian', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='guts', amount =10},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-arthurian.png",
			icon_size = 64,
		},
		--blood arthurian rendering
		{
			ingredients =
				{
					{name='guts-caged-arthurian',remove_item = true},
					{name='blood-caged-arthurian', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =160},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-arthurian.png",
			icon_size = 64,
		},
		--skin arthurian rendering
		{
			ingredients =
				{
					{name='blood-caged-arthurian',remove_item = true},
					{name='skin-caged-arthurian', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-arthurian.png",
			icon_size = 64,
		},
		--fat arthurian rendering
		{
			ingredients =
				{
					{name='skin-caged-arthurian',remove_item = true},
					{name='fat-caged-arthurian', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-arthurian.png",
			icon_size = 64,
		},
		--meat arthurian rendering
		{
			ingredients =
				{
					{name='fat-caged-arthurian',remove_item = true},
					{name='meat-caged-arthurian', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved arthurians',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}
