	FUN.autorecipes {
    name = 'zungror-improved',
	category = 'zungror',
	--module_limitations = 'zungror',
	subgroup = 'py-alienlife-zungror',
	order = 'b',
	--main_product = "zungror",
    mats =
	{
		--nanochondria
		{
			ingredients =
				{
					{name = 'caged-zungror', amount = 2},
					{name = 'nanochondria', amount =1},
					{name = 'antiviral', amount =1},
				},
			results =
				{
					{name = 'brain-caged-zungror', amount = 2},
				},
			crafting_speed = 180,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
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
					{name = 'gh',remove_item = true},
					{name = 'nanochondria',remove_item = true},
					{name = 'anabolic-rna', amount =1},
				},
			results =
				{
					{name = 'brain-caged-zungror', remove_item = true},
					{name = 'meat-caged-zungror', amount = 2},
				},
			crafting_speed = 180,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
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
					{name = 'gh',remove_item = true},
					{name = 'anabolic-rna',remove_item = true},
					{name = 'antitumor', amount =2},
				},
			results =
				{
					{name = 'meat-caged-zungror', remove_item = true},
					{name = 'guts-caged-zungror', amount = 2},
				},
			crafting_speed = 180,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
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
					{name = 'gh',remove_item = true},
					{name = 'antitumor',remove_item = true},
					{name = 'recombinant-ery', amount =1},
				},
			results =
				{
					{name = 'guts-caged-zungror', remove_item = true},
					{name = 'blood-caged-zungror', amount = 2},
				},
			crafting_speed = 180,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
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
					{name = 'gh',remove_item = true},
					{name = 'recombinant-ery',remove_item = true},
					{name = 'reca', amount =1},
				},
			results =
				{
					{name = 'blood-caged-zungror', remove_item = true},
					{name = 'skin-caged-zungror', amount = 2},
				},
			crafting_speed = 180,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
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
					{name = 'gh',remove_item = true},
					{name = 'reca',remove_item = true},
					{name = 'orexigenic', amount =1},
				},
			results =
				{
					{name = 'skin-caged-zungror', remove_item = true},
					{name = 'fat-caged-zungror', amount = 2},
				},
			crafting_speed = 180,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'orexigenic'
		},
	}
}
