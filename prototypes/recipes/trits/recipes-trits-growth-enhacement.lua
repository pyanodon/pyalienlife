local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

FUN.autorecipes {
    name = 'trits-improved',
	category = 'trits',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
	--main_product = 'trits',
    mats =
	{
		--nanochondria
		{
			ingredients =
				{
					{name = 'nanochondria', amount =1},
					{name = 'trits', amount = 1},
				},
			results =
				{
					{name = 'brain-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'nanochondria',remove_item = true},
					{name = 'bmp', amount =1},
				},
			results =
				{
					{name = 'brain-trits', remove_item = true},
					{name = 'bone-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'bmp',remove_item = true},
					{name = 'anabolic-rna', amount =1},
				},
			results =
				{
					{name = 'bone-trits', remove_item = true},
					{name = 'meat-trits', amount = 2},
				},
			crafting_speed = 160,
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
			crafting_speed = 50,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'anabolic-rna',remove_item = true},
					{name = 'antitumor', amount =1},
				},
			results =
				{
					{name = 'meat-trits', remove_item = true},
					{name = 'guts-trits', amount = 2},
				},
			crafting_speed = 160,
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
			crafting_speed = 50,
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
					{name = 'guts-trits', remove_item = true},
					{name = 'blood-trits', amount = 2},
				},
			crafting_speed = 160,
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
			crafting_speed = 50,
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
					{name = 'blood-trits', remove_item = true},
					{name = 'skin-trits', amount = 2},
				},
			crafting_speed = 160,
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
			crafting_speed = 50,
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
					{name = 'skin-trits', remove_item = true},
					{name = 'fat-trits', amount = 2},
				},
			crafting_speed = 160,
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
			crafting_speed = 50,
			tech = 'orexigenic'
		},
	}
}
