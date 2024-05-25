FUN.autorecipes {
    name = 'dhilmos-inproved',
	category = 'dhilmos',
	--module_limitations = 'dhilmos',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
	--main_product = "dhilmos",
    mats =
	{
		--rna anabolic
		{
			ingredients =
				{
					{name='dhilmos', amount=1},
					{name='antiviral', amount =1},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='meat-dhilmos', amount = 1},
				},
			crafting_speed = 80,
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
					{name='meat-dhilmos', remove_item = true},
					{name='guts-dhilmos', amount = 1},
				},
			crafting_speed = 80,
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
					{name='guts-dhilmos', remove_item = true},
					{name='blood-dhilmos', amount = 1},
				},
			crafting_speed = 80,
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
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='blood-dhilmos', remove_item = true},
					{name='fat-dhilmos', amount = 1},
				},
			crafting_speed = 80,
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
