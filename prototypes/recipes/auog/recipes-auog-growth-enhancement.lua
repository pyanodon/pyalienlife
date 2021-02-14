local fun = require("prototypes/functions/functions")

	--NOT STANDARD AOUGS
	fun.autorecipes {
		name = 'auog-mods',
		category = 'creature-chamber',
		subgroup = 'py-alienlife-auog',
		order = 'c',
		mats =
		{
		--nanochondria
		{
			ingredients =
				{
					{name='auogpup',amount =1},
					{name = 'fetal-serum', amount = 50},
					{name='antiviral',amount =1},
					{name='nanochondria',amount =1},
					--{name='antiviral',amount ='R'},
				},
			results =
				{
					{name='cagedauog', amount ='R'},
					{name='braincagedauog',1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
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
					{name='gh',amount ='R'},
					{name='nanochondria',amount ='R'},
					{name='bmp',amount =1},
				},
			results =
				{
					{name='braincagedauog', amount ='R'},
					{name='bonecagedauog', 1},
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
					{name='gh',amount ='R'},
					{name='bmp',amount ='R'},
					{name='anabolicrna',amount =1},
				},
			results =
				{
					{name='bonecagedauog', amount ='R'},
					{name='meatcagedauog', 1},
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
					{name='gh',amount ='R'},
					{name='anabolicrna',amount ='R'},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meatcagedauog', amount ='R'},
					{name='gutscagedauog', 1},
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
					{name='gh',amount ='R'},
					{name='antitumor',amount ='R'},
					{name='recombinantery',amount =1},
				},
			results =
				{
					{name='gutscagedauog', amount ='R'},
					{name='bloodcagedauog', 1},
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
					{name='gh',amount ='R'},
					{name='recombinantery',amount ='R'},
					{name='reca',amount =1},
				},
			results =
				{
					{name='bloodcagedauog', amount ='R'},
					{name='skincagedauog', 1},
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
					{name='gh',amount ='R'},
					{name='reca',amount ='R'},
					{name='orexigenic',amount =1},
				},
			results =
				{
					{name='skincagedauog', amount ='R'},
					{name='fatcagedauog', 1},
				},
			crafting_speed = 90,
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

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-auog-advanced',
	category = 'slaughterhouse-auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--brain auog rendering
		{
			ingredients =
				{
					{name='braincagedauog',amount=2},
				},
			results =
				{
					{name='fat', amount ='R'},
					{name='brain', amount =8},
					{name='cage',amount = 1}
				},
			crafting_speed = 30,
			tech = 'nanochondria',
			name = 'Extract brains from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-auog.png",
			icon_size = 64,
		},
		--bone auog rendering
		{
			ingredients =
				{
					{name='braincagedauog',amount='R'},
					{name='bonecagedauog',amount=1},
				},
			results =
				{
					{name='brain', amount ='R'},
					{name='bones', amount =11},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-auog.png",
			icon_size = 64,
		},
		--bonemeal auog rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', amount ='R'},
					{name='bonemeal', amount =7},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-auog.png",
			icon_size = 64,
        },
		--meat auog rendering
		{
			ingredients =
				{
					{name='bonecagedauog',amount='R'},
					{name='meatcagedauog',amount=1},
				},
			results =
				{
					{name='bonemeal', amount ='R'},
					{name='meat', amount =28},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-auog.png",
			icon_size = 64,
		},
		--guts auog rendering
		{
			ingredients =
				{
					{name='meatcagedauog',amount='R'},
					{name='gutscagedauog',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
					{name='guts', amount =11},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-auog.png",
			icon_size = 64,
		},
		--blood auog rendering
		{
			ingredients =
				{
					{name='gutscagedauog',amount='R'},
					{name='bloodcagedauog',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
					{name='blood', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-auog.png",
			icon_size = 64,
		},
		--skin auog rendering
		{
			ingredients =
				{
					{name='bloodcagedauog',amount='R'},
					{name='skincagedauog',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-auog.png",
			icon_size = 64,
		},
		--fat auog rendering
		{
			ingredients =
				{
					{name='skincagedauog',amount='R'},
					{name='fatcagedauog',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
					{name='fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}
