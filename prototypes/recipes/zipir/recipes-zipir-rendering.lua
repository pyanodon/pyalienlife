local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-zipir',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'zipir',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name = 'zipir1', amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.5, amount_min =1, amount_max =2},
					{name='meat', probability = 0.4, amount_min =1, amount_max =4},
					{name='skin', probability = 0.5, amount_min =1, amount_max =6},
					{name='mukmoux-fat', probability = 0.4, amount_min =1, amount_max =3},
					{name='guts', probability = 0.4, amount_min =1, amount_max =4},
					{name='arthropod-blood', amount =50},
					{name='brain', probability = 0.3, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'zipir',
			name = 'Full Render zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-zipir.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
					--{name='bones', remove_item = true},
                    {name='meat', remove_item = true},
                    {name='meat', amount =4},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name = 'zipir1', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir brain',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name = 'zipir1', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =6},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--guts
		{
			ingredients =
				{
					--{name = 'zipir1', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name = 'zipir1', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =65},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name = 'zipir1', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='mukmoux-fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'zipir-mk02',
			name = 'Extract zipir lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain zipir rendering
		{
			ingredients =
				{
					{name = 'zipir1',remove_item = true},
					{name='brain-zipir', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-zipir.png",
			icon_size = 64,
		},
		--guts zipir rendering
		{
			ingredients =
				{
					{name='brain-zipir',remove_item = true},
					{name='guts-zipir', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='guts', amount =13},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-zipir.png",
			icon_size = 64,
		},
		--blood zipir rendering
		{
			ingredients =
				{
					{name='guts-zipir',remove_item = true},
					{name='blood-zipir', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =170},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract Arthropod blood from Improved Zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-zipir.png",
			icon_size = 64,
		},
		--skin zipir rendering
		{
			ingredients =
				{
					{name='blood-zipir',remove_item = true},
					{name='skin-zipir', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='skin', amount =17},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-zipir.png",
			icon_size = 64,
		},
		--fat zipir rendering
		{
			ingredients =
				{
					{name='skin-zipir',remove_item = true},
					{name='fat-zipir', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =15},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-zipir.png",
			icon_size = 64,
		},
		--meat zipir rendering
		{
			ingredients =
				{
					{name='fat-zipir',remove_item = true},
					{name='meat-zipir', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zipir.png",
			icon_size = 64,
		},
	}
}
