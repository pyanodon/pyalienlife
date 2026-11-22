py.autorecipes {
	name = "zipir-improved",
	category = "zipir",
	subgroup = "py-alienlife-zipir",
	order = "b",
	mats =
	{
		--nanochondria
		{
			ingredients =
			{
				{name = "zipir1",       amount = 1},
				{name = "nanochondria", amount = 1},
				{name = "antiviral",    amount = 1},
			},
			results =
			{
				{name = "brain-zipir", amount = 1},
			},
			crafting_speed = 90,
			tech = "nanochondria"
		},
		--nanochondria and gh
		{
			ingredients =
			{
				--{name='nanochondria', amount =1},
				{name = "gh", amount = 1},
			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "nanochondria"
		},
		--rna anabolic
		{
			ingredients =
			{
				{name = "gh",           remove_item = true},
				{name = "nanochondria", remove_item = true},
				{name = "anabolic-rna", amount = 1},
			},
			results =
			{
				{name = "brain-zipir", remove_item = true},
				{name = "meat-zipir",  amount = 1},
			},
			crafting_speed = 90,
			tech = "anabolic-rna"
		},
		--rna anabolic and gh
		{
			ingredients =
			{
				--{name='nanochondria', amount =1},
				{name = "gh", amount = 1},
			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "anabolic-rna"
		},
		--antitumor
		{
			ingredients =
			{
				{name = "gh",           remove_item = true},
				{name = "anabolic-rna", remove_item = true},
				{name = "antitumor",    amount = 1},
			},
			results =
			{
				{name = "meat-zipir", remove_item = true},
				{name = "guts-zipir", amount = 1},
			},
			crafting_speed = 90,
			tech = "antitumor"
		},
		--antitumor and gh
		{
			ingredients =
			{
				--{name='nanochondria', amount =1},
				{name = "gh", amount = 1},
			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "antitumor"
		},
		--Recombinant Ery
		{
			ingredients =
			{
				{name = "gh",              remove_item = true},
				{name = "antitumor",       remove_item = true},
				{name = "recombinant-ery", amount = 1},
			},
			results =
			{
				{name = "guts-zipir",  remove_item = true},
				{name = "blood-zipir", amount = 1},
			},
			crafting_speed = 90,
			tech = "recombinant-ery"
		},
		--Recombinant Ery and gh
		{
			ingredients =
			{
				{name = "gh", amount = 1},
			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "recombinant-ery"
		},
		--reca
		{
			ingredients =
			{
				{name = "gh",              remove_item = true},
				{name = "recombinant-ery", remove_item = true},
				{name = "reca",            amount = 1},
			},
			results =
			{
				{name = "blood-zipir", remove_item = true},
				{name = "skin-zipir",  amount = 1},
			},
			crafting_speed = 90,
			tech = "reca"
		},
		--reca and gh
		{
			ingredients =
			{
				{name = "gh", amount = 1},
			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "reca"
		},
		--orexigenic
		{
			ingredients =
			{
				{name = "gh",         remove_item = true},
				{name = "reca",       remove_item = true},
				{name = "orexigenic", amount = 1},
			},
			results =
			{
				{name = "skin-zipir", remove_item = true},
				{name = "fat-zipir",  amount = 1},
			},
			crafting_speed = 90,
			tech = "orexigenic"
		},
		--orexigenic and gh
		{
			ingredients =
			{
				{name = "gh", amount = 1},
			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "orexigenic"
		},

	}
}
