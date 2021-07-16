local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.5, amount_min =1, amount_max =2},
					{name='meat', probability = 0.5, amount_min =1, amount_max =3},
					{name='skin', probability = 0.4, amount_min =1, amount_max =1},
					{name='mukmoux-fat', probability = 0.4, amount_min =1, amount_max =2},
					{name='guts', probability = 0.5, amount_min =1, amount_max =2},
					{name='blood', amount =60},
					{name='pineal-gland', probability = 0.4, amount_min =1, amount_max =1},
					{name='cage', amount=1},
					{name='brain', probability = 0.5, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'scrondrix',
			name = 'Full Render scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-scrondrix.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
					{name='meat', remove_item = true},
					{name='pineal-gland', remove_item = true},
					{name='meat', amount =5},
					{name='bones', remove_item = true},
					--{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--pineal
		{
			ingredients =
				{
					--{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='pineal-gland', amount =1},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix Pineal Gland',
			icon = "__pyalienlifegraphics__/graphics/icons/pineal-gland.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='pineal-gland', remove_item = true},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =70},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'scrondrix-mk02',
			name = 'Extract scrondrix lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain scrondrix rendering
		{
			ingredients =
				{
					{name='caged-scrondrix',remove_item = true},
					{name='brain-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-scrondrix.png",
			icon_size = 64,
		},
		--bone scrondrix rendering
		{
			ingredients =
				{
					{name='brain-caged-scrondrix',remove_item = true},
					{name='bone-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-scrondrix.png",
			icon_size = 64,
		},
		--guts scrondrix rendering
		{
			ingredients =
				{
					{name='bone-caged-scrondrix',remove_item = true},
					{name='guts-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-scrondrix.png",
			icon_size = 64,
		},
		--blood scrondrix rendering
		{
			ingredients =
				{
					{name='guts-caged-scrondrix',remove_item = true},
					{name='blood-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =170},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-scrondrix.png",
			icon_size = 64,
		},
		--skin scrondrix rendering
		{
			ingredients =
				{
					{name='blood-caged-scrondrix',remove_item = true},
					{name='skin-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-scrondrix.png",
			icon_size = 64,
		},
		--fat scrondrix rendering
		{
			ingredients =
				{
					{name='skin-caged-scrondrix',remove_item = true},
					{name='fat-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-scrondrix.png",
			icon_size = 64,
		},
		--meat scrondrix rendering
		{
			ingredients =
				{
					{name='fat-caged-scrondrix',remove_item = true},
					{name='meat-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}
