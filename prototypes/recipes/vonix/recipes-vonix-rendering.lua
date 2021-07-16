local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='vonix', amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.5, amount_min =1, amount_max =2},
					{name='meat', probability = 0.5, amount_min =1, amount_max =6},
					{name='skin', probability = 0.4, amount_min =1, amount_max =4},
					{name='mukmoux-fat', probability = 0.5, amount_min =1, amount_max =5},
					{name='guts', probability = 0.4, amount_min =1, amount_max =6},
					{name='arthropod-blood', amount =80},
					{name='venon-gland', probability = 0.2, amount_min =1, amount_max =1},
					{name='brain', probability = 0.3, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'vonix',
			name = 'Full Render Vonix',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vonix.png",
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
					{name='venon-gland', remove_item = true},
                    {name='meat', amount =6},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='vonix', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix brain',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--venon
		{
			ingredients =
				{
					--{name='vonix', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='venon-gland', amount =1},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix´s Venom Gland',
			icon = "__pyalienlifegraphics__/graphics/icons/venon-gland.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='vonix', amount=1},
				},
			results =
				{
					{name='venon-gland', remove_item = true},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--guts
		{
			ingredients =
				{
					--{name='vonix', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='vonix', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name='vonix', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='mukmoux-fat', amount =5},
				},
			crafting_speed = 15,
			tech = 'vonix-mk02',
			name = 'Extract Vonix lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain vonix rendering
		{
			ingredients =
				{
					{name='vonix',remove_item = true},
					{name='brain-vonix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-vonix.png",
			icon_size = 64,
		},
		--guts vonix rendering
		{
			ingredients =
				{
					{name='brain-vonix',remove_item = true},
					{name='guts-vonix', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-vonix.png",
			icon_size = 64,
		},
		--blood vonix rendering
		{
			ingredients =
				{
					{name='guts-vonix',remove_item = true},
					{name='blood-vonix', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =230},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract Arthropod blood from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-vonix.png",
			icon_size = 64,
		},
		--skin vonix rendering
		{
			ingredients =
				{
					{name='blood-vonix',remove_item = true},
					{name='skin-vonix', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-vonix.png",
			icon_size = 64,
		},
		--fat vonix rendering
		{
			ingredients =
				{
					{name='skin-vonix',remove_item = true},
					{name='fat-vonix', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =23},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-vonix.png",
			icon_size = 64,
		},
		--meat vonix rendering
		{
			ingredients =
				{
					{name='fat-vonix',remove_item = true},
					{name='meat-vonix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Vonixes',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-vonix.png",
			icon_size = 64,
		},
	}
}
