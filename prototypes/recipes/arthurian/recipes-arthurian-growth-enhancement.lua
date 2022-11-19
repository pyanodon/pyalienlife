local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

--growth hormone and other trash that needs new uses. hulk growths

FUN.autorecipes {
    name = 'arthurian-growth-enhancement',
	category = "arthurian",
	subgroup = 'py-alienlife-arthurian',
	order = 'c',
    mats =
	{
		--nanochondria
		{
			ingredients =
				{
					{name='caged-arthurian', amount=1},
					{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{
					{name='brain-caged-arthurian', amount = 1},
				},
			crafting_speed = 80,
			name = 'arthurian-11',
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name='nanochondria',remove_item = true},
					{name='bmp', amount =1},
				},
			results =
				{
					{name='brain-caged-arthurian', remove_item = true},
					{name='bone-caged-arthurian', amount = 1},
				},
			crafting_speed = 80,
			name = 'arthurian-13',
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='bmp',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='bone-caged-arthurian', remove_item = true},
					{name='meat-caged-arthurian', amount = 1},
				},
			crafting_speed = 80,
			name = 'arthurian-15',
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-arthurian', remove_item = true},
					{name='guts-caged-arthurian', amount = 1},
				},
			crafting_speed = 80,
			name = 'arthurian-17',
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='guts-caged-arthurian', remove_item = true},
					{name='blood-caged-arthurian', amount = 1},
				},
			crafting_speed = 80,
			name = 'arthurian-19',
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='blood-caged-arthurian', remove_item = true},
					{name='skin-caged-arthurian', amount = 1},
				},
			crafting_speed = 80,
			name = 'arthurian-21',
			tech = 'reca'
		},
		--orexigenic
		{
			ingredients =
				{
					{name='reca',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='skin-caged-arthurian', remove_item = true},
					{name='fat-caged-arthurian', amount = 1},
				},
			crafting_speed = 80,
			name = 'arthurian-23',
			tech = 'orexigenic'
		},
	}
}
