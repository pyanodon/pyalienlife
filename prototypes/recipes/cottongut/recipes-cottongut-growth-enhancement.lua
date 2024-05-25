py.autorecipes {
    name = 'cottongut-growth-enhancement',
	category = 'cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		--nanochondria
		{
			ingredients =
				{
					{name = 'cottongut', amount = 4},
					{name='gh', amount =1},
					{name='nanochondria', amount =1},
				},
			results =
				{
					{name='cottongut', remove_item = true},
					{name='brain-cottongut', amount = 4},
				},
			crafting_speed = 90,
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
					{name='brain-cottongut', remove_item = true},
					{name='bone-cottongut', amount = 4},
				},
			crafting_speed = 90,
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
					{name='bone-cottongut', remove_item = true},
					{name='meat-cottongut', amount = 4},
				},
			crafting_speed = 90,
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
					{name='meat-cottongut', remove_item = true},
					{name='guts-cottongut', amount = 4},
				},
			crafting_speed = 90,
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
					{name='guts-cottongut', remove_item = true},
					{name='blood-cottongut', amount = 4},
				},
			crafting_speed = 90,
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
					{name='blood-cottongut', remove_item = true},
					{name='skin-cottongut', amount = 4},
				},
			crafting_speed = 90,
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
					{name='skin-cottongut', remove_item = true},
					{name='fat-cottongut', amount = 4},
				},
			crafting_speed = 80,
			tech = 'orexigenic'
		},
	}
}
