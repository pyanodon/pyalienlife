local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'vonix',
	category = 'vonix',
	module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
                    {name='caged-mukmoux', amount =1},
                    {name='vonix-egg', amount =2},
					{name='guts', amount =10},
					{name='arqad-honey-barrel', amount=1,return_item={name='empty-barrel', amount=1}},
				},
			results =
				{
					{name='vonix', probability = 0.8, amount_min =2, amount_max =2},
				},
			crafting_speed = 250,
			tech = 'vonix'
		},
--yotoi leaves
		{
			ingredients =
				{
					--{name='wood-seeds',remove_item = true},
					{name='meat', amount =10},
				},
			results =
				{

				},
			crafting_speed = 235,
			tech = 'vonix'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding', amount = 3},
					{name='caged-auog', amount = 1},
				},
			results =
				{
					{name='vonix',remove_item = true},
					{name='vonix', probability = 0.9, amount_min =2, amount_max =3},   --since the auog is a large price increase  (maybe i need to add another egg)
				},
			crafting_speed = 220,
			tech = 'vonix-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='arthurian-egg', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 210,
			tech = 'vonix-mk03'
		},
		--navens
		{
			ingredients =
				{
					{name='navens', amount =5},

				},
			results =
				{

				},
			crafting_speed = 200,
			tech = 'vonix-mk03'
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
			crafting_speed = 60,
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
					{name='vonix', remove_item = true},
					{name='vonix', probability = 1, amount_min =2, amount_max =3},
				},
			crafting_speed = 60,
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
			crafting_speed = 180,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name='nanochondria', amount =1},
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='vonix', remove_item = true},
					{name='brain-vonix',2},
				},
			crafting_speed = 180,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'nanochondria'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='brain-vonix', remove_item = true},
					{name='meat-vonix', 2},
				},
			crafting_speed = 180,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =2},
				},
			results =
				{
					{name='meat-vonix', remove_item = true},
					{name='guts-vonix', 1},
				},
			crafting_speed = 180,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='guts-vonix', remove_item = true},
					{name='blood-vonix', 2},
				},
			crafting_speed = 180,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='blood-vonix', remove_item = true},
					{name='skin-vonix', 2},
				},
			crafting_speed = 180,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'reca'
		},
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='skin-vonix', remove_item = true},
					{name='fat-vonix', 2},
				},
			crafting_speed = 180,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'orexigenic'
		},
	}
}

------------------EGG MAKER------------------

fun.autorecipes {
    name = 'vonix-cub',
	category = 'vonix',
	module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='caged-mukmoux', amount =1},
					{name='caged-auog', amount =1},
					{name='meat', amount =5},
					{name='arqad-honey-barrel', amount=2,return_item={name='empty-barrel', amount=2}},
				},
			results =
				{
					{name='vonix-egg', probability = 0.7, amount_min =6, amount_max =8},
				},
			crafting_speed = 140,
			tech = 'vonix'
		},
		--guts
		{
			ingredients =
				{
                    --{name='wood-seeds',remove_item = true},
                    --{name='caged-mukmoux',remove_item = true},
					{name='guts', amount =10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'vonix'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding', amount = 3},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'vonix-mk02'
		},
		--fiber
		{
			ingredients =
				{
					{name='arthurian-egg', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'vonix-mk03'
		},
		--navens
		{
			ingredients =
				{
					{name='navens', amount =10},

				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'vonix-mk03'
		},

		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='arthurian-egg',remove_item = true},
					{name='bedding',remove_item = true},
					{name='navens',remove_item = true},
					{name='meat',remove_item = true},
					{name='pheromones', amount =1},
                    --{name='caged-auog', amount =4},
					--{name='caged-auog', amount = 1},
				},
			results =
				{
					{name='vonix-egg',remove_item = true},
					{name='vonix-egg', amount =10},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name='wood-seeds',remove_item = true},
                    --{name='caged-mukmoux', amount =15},
					{name='meat', amount =10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--bedding
		{
			ingredients =
				{
					{name='bedding', amount = 3},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='arthurian-egg', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--navens
		{
			ingredients =
				{
					{name='navens', amount =5},

				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'pheromones'
		},
	}
}

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
