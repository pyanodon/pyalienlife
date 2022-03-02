local fun = require("prototypes/functions/functions")

	fun.autorecipes {
    name = 'zungror-improved',
	category = 'creature-chamber',
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
					{name = 'nanochondria', amount =1},
					{name = 'antiviral', amount =1},
				},
			results =
				{
					{name = 'zungror', remove_item = true},
					{name = 'brain-zungror', amount = 2},
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
					{name = 'brain-zungror', remove_item = true},
					{name = 'meat-zungror', amount = 2},
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
					{name = 'meat-zungror', remove_item = true},
					{name = 'guts-zungror', amount = 1},
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
					{name = 'guts-zungror', remove_item = true},
					{name = 'blood-zungror', amount = 2},
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
					{name = 'blood-zungror', remove_item = true},
					{name = 'skin-zungror', amount = 2},
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
					{name = 'skin-zungror', remove_item = true},
					{name = 'fat-zungror', amount = 2},
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
