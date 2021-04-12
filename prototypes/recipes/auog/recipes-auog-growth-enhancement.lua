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
					{name='auog-pup', amount =1},
					{name = 'fetal-serum', amount = 50},
					{name='antiviral', amount =1},
					{name='nanochondria', amount =1},
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='caged-auog', remove_item = true},
					{name='brain-caged-auog',1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
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
					{name='bmp', amount =1},
				},
			results =
				{
					{name='brain-caged-auog', remove_item = true},
					{name='bone-caged-auog', 1},
				},
			crafting_speed = 90,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
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
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='bone-caged-auog', remove_item = true},
					{name='meat-caged-auog', 1},
				},
			crafting_speed = 90,
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
			crafting_speed = 30,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-auog', remove_item = true},
					{name='guts-caged-auog', 1},
				},
			crafting_speed = 90,
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
			crafting_speed = 30,
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
					{name='guts-caged-auog', remove_item = true},
					{name='blood-caged-auog', 1},
				},
			crafting_speed = 90,
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
			crafting_speed = 30,
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
					{name='blood-caged-auog', remove_item = true},
					{name='skin-caged-auog', 1},
				},
			crafting_speed = 90,
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
			crafting_speed = 30,
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
					{name='skin-caged-auog', remove_item = true},
					{name='fat-caged-auog', 1},
				},
			crafting_speed = 90,
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
					{name='brain-caged-auog', amount=2},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =8},
					{name='cage', amount = 1}
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
					{name='brain-caged-auog',remove_item = true},
					{name='bone-caged-auog', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
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
					{name='bones', remove_item = true},
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
					{name='bone-caged-auog',remove_item = true},
					{name='meat-caged-auog', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
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
					{name='meat-caged-auog',remove_item = true},
					{name='guts-caged-auog', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
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
					{name='guts-caged-auog',remove_item = true},
					{name='blood-caged-auog', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
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
					{name='blood-caged-auog',remove_item = true},
					{name='skin-caged-auog', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
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
					{name='skin-caged-auog',remove_item = true},
					{name='fat-caged-auog', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}
