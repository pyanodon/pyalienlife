local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4, amount_min =1, amount_max =3},
					{name='meat', probability = 0.4, amount_min =1, amount_max =3},
					{name='skin', probability = 0.2, amount_min =1, amount_max =1},
					{name='mukmoux-fat', probability = 0.3, amount_min =1, amount_max =1},
					{name='guts', probability = 0.4, amount_min =1, amount_max =1},
					{name='blood', amount =50},
					{name='cage', amount=1},
					{name='brain', probability = 0.4, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-ulric.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
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
					{name='bonemeal', amount = 6},
				},
			crafting_speed = 15,
			tech = 'rendering',
			name = 'Ulrics to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Ulric lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain ulric rendering
		{
			ingredients =
				{
					{name='caged-ulric',remove_item = true},
					{name='brain-caged-ulric', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-ulric.png",
			icon_size = 64,
		},
		--bone ulric rendering
		{
			ingredients =
				{
					{name='brain-caged-ulric',remove_item = true},
					{name='bone-caged-ulric', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-ulric.png",
			icon_size = 64,
		},
		--bonemeal ulric rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', remove_item = true},
					{name='bonemeal', amount =24},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-ulric.png",
			icon_size = 64,
		},
		--guts ulric rendering
		{
			ingredients =
				{
					{name='bone-caged-ulric',remove_item = true},
					{name='guts-caged-ulric', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-ulric.png",
			icon_size = 64,
		},
		--blood ulric rendering
		{
			ingredients =
				{
					{name='guts-caged-ulric',remove_item = true},
					{name='blood-caged-ulric', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-ulric.png",
			icon_size = 64,
		},
		--skin ulric rendering
		{
			ingredients =
				{
					{name='blood-caged-ulric',remove_item = true},
					{name='skin-caged-ulric', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-ulric.png",
			icon_size = 64,
		},
		--fat ulric rendering
		{
			ingredients =
				{
					{name='skin-caged-ulric',remove_item = true},
					{name='fat-caged-ulric', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-ulric.png",
			icon_size = 64,
		},
		--meat ulric rendering
		{
			ingredients =
				{
					{name='fat-caged-ulric',remove_item = true},
					{name='meat-caged-ulric', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-ulric.png",
			icon_size = 64,
		},
	}
}
