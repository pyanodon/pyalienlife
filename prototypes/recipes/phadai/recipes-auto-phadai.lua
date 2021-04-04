local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-phadai',
	category = 'phadai',
	module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cottongut',amount =2},
					{name='water-barrel',amount=4,return_item={name='empty-barrel',amount=4}},
                    {name='cage',amount=1},
                    {name='programmable-speaker',amount=1},
                    {name='small-lamp',amount=2},
				},
			results =
				{
					{name='caged-phadai', probability = 0.7,amount_min =1,amount_max =1},
				},
			crafting_speed = 150,
			tech = 'phadai'
		},
		--food 1
		{
			ingredients =
				{
                    {name='meat',remove_item = true},
                    {name='meat',amount =10},
					{name='phadai-food-01',amount =1},
				},
			results =
				{
					{name='caged-phadai',remove_item = true},
					{name='caged-phadai', probability = 0.8,amount_min =1,amount_max =1},
				},
			crafting_speed = 140,
			tech = 'phadai'
		},
		--fawogae
		{
			ingredients =
				{
					{name='fawogae',amount = 5},
					{name='bedding',amount = 1},
				},
			results =
				{

				},
			crafting_speed = 130,
			tech = 'phadai-mk02'
		},
		--energy drink
		{
			ingredients =
				{
					{name='energy-drink',amount = 4},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'phadai-mk02'
		},
		--food 2
		{
			ingredients =
				{
					{name='phadai-food-01',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='energy-drink',remove_item = true},
					{name='phadai-food-02',amount =1},

				},
			results =
				{
					{name='caged-phadai',remove_item = true},
					{name='caged-phadai', probability = 0.9,amount_min =1,amount_max =1},
				},
			crafting_speed = 110,
			tech = 'phadai-mk03'
		},
		--food 2 fawogae
		{
			ingredients =
				{
					{name='fawogae',amount =5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'phadai-mk03'
		},
		--food 2 fawogae energy-drink
		{
			ingredients =
				{
					{name='energy-drink',amount = 4},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'phadai-mk04'
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
					{name='caged-phadai', remove_item = true},
					{name='caged-phadai', probability = 1,amount_min =1,amount_max =2},
				},
			crafting_speed = 30,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral',amount =1},
					{name='gh',remove_item = true},
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
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='caged-phadai', remove_item = true},
					{name='brain-caged-phadai',1},
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
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='bmp',amount =1},
				},
			results =
				{
					{name='brain-caged-phadai', remove_item = true},
					{name='bone-caged-phadai', 1},
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
					{name='gh',remove_item = true},
					{name='bmp',remove_item = true},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='bone-caged-phadai', remove_item = true},
					{name='meat-caged-phadai', 1},
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
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meat-caged-phadai', remove_item = true},
					{name='guts-caged-phadai', 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh
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
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery',amount =1},
				},
			results =
				{
					{name='guts-caged-phadai', remove_item = true},
					{name='blood-caged-phadai', 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'recombinant-ery'
        },
		--reca
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca',amount =1},
				},
			results =
				{
					{name='blood-caged-phadai', remove_item = true},
					{name='skin-caged-phadai', 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
		},
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic',amount =1},
				},
			results =
				{
					{name='skin-caged-phadai', remove_item = true},
					{name='fat-caged-phadai', 1},
				},
			crafting_speed = 80,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'orexigenic'
		},
	}
}

------------------pup MAKER------------------

fun.autorecipes {
    name = 'phadai-pup',
	category = 'phadai',
	module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'c',
    mats =
	{
		{
			ingredients =
				{
                    {name='cottongut',amount =6},
                    {name='fawogae',amount =20},
					{name='water-barrel',amount=15,return_item={name='empty-barrel',amount=15}},
					--{name='cage',amount=1},
                    {name='bedding',amount = 1},
                    {name='programmable-speaker',amount=1},
                    {name='small-lamp',amount=2},
				},
			results =
				{
					{name='phadai-pup', amount =3},
				},
			crafting_speed = 140,
			tech = 'assisted-embryology'
		},
		--food 1
		{
			ingredients =
				{
                    {name='fawogae',remove_item = true},
                    {name='meat',remove_item = true},
                    {name='meat',amount =20},
					{name='phadai-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'assisted-embryology'
		},
		--fawogae
		{
			ingredients =
				{
					{name='fawogae',amount = 20},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'assisted-embryology'
		},
		--energy-drink
		{
			ingredients =
				{
					{name='energy-drink',amount = 6},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2
		{
			ingredients =
				{
					{name='phadai-food-01',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='energy-drink',remove_item = true},
					{name='phadai-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'assisted-embryology'
		},
		--food 2 fawogae
		{
			ingredients =
				{
					{name='fawogae',amount =10},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'assisted-embryology'
		},
		--food 2 fawogae energy-drink
		{
			ingredients =
				{
					{name='energy-drink',amount = 6},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'assisted-embryology'
		},
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='energy-drink',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='phadai-food-02',remove_item = true},
					--{name='meat',amount =15},
					{name='pheromones',amount =1},
                    {name='fawogae',amount =30},
					--{name='water-barrel',amount=6,return_item={name='empty-barrel',amount=6}},
					--{name='bedding',amount = 1},
				},
			results =
				{
					{name='phadai-pup',remove_item = true},
					{name='phadai-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='fawogae',remove_item = true},
					{name='phadai-food-01',amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--fawogae
		{
			ingredients =
				{
					{name='fawogae',amount = 20},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--energy-drink
		{
			ingredients =
				{
					{name='energy-drink',amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='phadai-food-01',remove_item = true},
					{name='fawogae',remove_item = true},
					{name='energy-drink',remove_item = true},
					{name='phadai-food-02',amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 fawogae
		{
			ingredients =
				{
					{name='fawogae',amount ='*5'},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 fawogae energy-drink
		{
			ingredients =
				{
					{name='energy-drink',amount = 7},
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
	category = 'slaughterhouse-phadai',
	--module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =3},
					{name='meat', probability = 0.3,amount_min =1,amount_max =1},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =3},
                    {name='mukmoux-fat', probability = 0.1,amount_min =1,amount_max =1},
                    {name='skin', probability = 0.1,amount_min =1,amount_max =1},
					{name='carapace', probability = 0.3,amount_min =1,amount_max =1},
					{name='blood', amount =30},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'phadai',
			name = 'Full Render phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phadai.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='meat', remove_item = true},
					{name='guts', remove_item = true},
					{name='pelt', remove_item = true},
					{name='carapace', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =2},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Fat',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--Carapace
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='carapace', amount ='*2'},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Carapace',
			icon = "__pyalienlifegraphics__/graphics/icons/carapace.png",
			icon_size = 64,
		},
		--Skin
		{
			ingredients =
				{
					--{name='caged-phadai',amount=1},
				},
			results =
				{
					{name='carapace', remove_item = true},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--brain phadai rendering
		{
			ingredients =
				{
					{name='caged-phadai',remove_item = true},
					{name='brain-caged-phadai',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='brain', amount =6},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-phadai.png",
			icon_size = 64,
		},
		--bone phadai rendering
		{
			ingredients =
				{
					{name='brain-caged-phadai',remove_item = true},
					{name='bone-caged-phadai',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =10},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phadai.png",
			icon_size = 64,
		},
		--guts phadai rendering
		{
			ingredients =
				{
					{name='bone-caged-phadai',remove_item = true},
					{name='guts-caged-phadai',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-phadai.png",
			icon_size = 64,
		},
		--blood phadai rendering
		{
			ingredients =
				{
					{name='guts-caged-phadai',remove_item = true},
					{name='blood-caged-phadai',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-phadai.png",
			icon_size = 64,
		},
		--meat phadai rendering
		{
			ingredients =
				{
					{name='blood-caged-phadai',remove_item = true},
					{name='meat-caged-phadai',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phadai.png",
			icon_size = 64,
        },
        --skin phadai rendering
		{
			ingredients =
				{
					{name='meat-caged-phadai',remove_item = true},
					{name='skin-caged-phadai',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='skin', amount =8},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phadai.png",
			icon_size = 64,
        },
        --fat phadai rendering
		{
			ingredients =
				{
					{name='skin-caged-phadai',remove_item = true},
					{name='fat-caged-phadai',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-phadai.png",
			icon_size = 64,
		},
	}
}
