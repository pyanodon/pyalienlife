local fun = require("prototypes/functions/functions")

--growth hormone and other trash that needs new uses. hulk growths

fun.autorecipes {
    name = 'arthurian-growth-enhancement',
	category = 'arthurian',
	module_limitations = 'arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'c',
    mats =
	{
		--gh
		{
			ingredients =
				{
					{name='gh', amount =1},

				},
			results =
				{
					{name='arthurian', amount =1},
				},
			crafting_speed = 30,
			name = 'arthurian-08',
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
					{name='arthurian', remove_item = true},
					{name='arthurian', probability = 1, amount_min =1, amount_max =2},
				},
			crafting_speed = 30,
			name = 'arthurian-09',
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
			crafting_speed = 80,
			name = 'arthurian-10',
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
					{name='arthurian', remove_item = true},
					{name='brain-caged-arthurian',1},
				},
			crafting_speed = 80,
			name = 'arthurian-11',
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
			crafting_speed = 30,
			name = 'arthurian-12',
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
					{name='brain-caged-arthurian', remove_item = true},
					{name='bone-caged-arthurian', 1},
				},
			crafting_speed = 80,
			name = 'arthurian-13',
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
			name = 'arthurian-14',
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
					{name='bone-caged-arthurian', remove_item = true},
					{name='meat-caged-arthurian', 1},
				},
			crafting_speed = 80,
			name = 'arthurian-15',
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
			name = 'arthurian-16',
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
					{name='meat-caged-arthurian', remove_item = true},
					{name='guts-caged-arthurian', 1},
				},
			crafting_speed = 80,
			name = 'arthurian-17',
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
			name = 'arthurian-18',
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
					{name='guts-caged-arthurian', remove_item = true},
					{name='blood-caged-arthurian', 1},
				},
			crafting_speed = 80,
			name = 'arthurian-19',
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
			name = 'arthurian-20',
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
					{name='blood-caged-arthurian', remove_item = true},
					{name='skin-caged-arthurian', 1},
				},
			crafting_speed = 80,
			name = 'arthurian-21',
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
			name = 'arthurian-22',
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
					{name='skin-caged-arthurian', remove_item = true},
					{name='fat-caged-arthurian', 1},
				},
			crafting_speed = 80,
			name = 'arthurian-23',
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
			name = 'arthurian-24',
			tech = 'orexigenic'
		},
	}
}
