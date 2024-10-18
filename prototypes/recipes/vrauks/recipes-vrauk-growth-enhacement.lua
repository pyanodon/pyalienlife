py.autorecipes {
	name = "vrauks-improved",
	category = "vrauks",
	subgroup = "py-alienlife-vrauks",
	order = "b",
	mats =
	{
		--nanochondria
		{
			ingredients =
			{
				{name = "caged-vrauks", amount = 1},
				{name = "nanochondria", amount = 1},
			},
			results =
			{
				{name = "brain-caged-vrauks", amount = 1},
			},
			crafting_speed = 90,
			tech = "nanochondria"
		},
		--nanochondria and gh
		{
			ingredients =
			{
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
				{name = "brain-caged-vrauks", remove_item = true},
				{name = "meat-caged-vrauks",  amount = 1},
			},
			crafting_speed = 90,
			tech = "anabolic-rna"
		},
		--rna anabolic and gh
		{
			ingredients =
			{
				--{name='nanochondria',amount =1},
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
				{name = "meat-caged-vrauks", remove_item = true},
				{name = "guts-caged-vrauks", amount = 1},
			},
			crafting_speed = 90,
			tech = "antitumor"
		},
		--antitumor and gh
		{
			ingredients =
			{
				--{name='nanochondria',amount =1},
				{name = "gh", amount = 1},
			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "antitumor"
		},
		--reca
		{
			ingredients =
			{
				{name = "gh",        remove_item = true},
				{name = "antitumor", remove_item = true},
				{name = "reca",      amount = 1},
			},
			results =
			{
				{name = "guts-caged-vrauks",   remove_item = true},
				{name = "chitin-caged-vrauks", amount = 1},
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
		--Recombinant Ery
		{
			ingredients =
			{
				{name = "gh",              remove_item = true},
				{name = "reca",            remove_item = true},
				{name = "recombinant-ery", amount = 1},
			},
			results =
			{
				{name = "chitin-caged-vrauks", remove_item = true},
				{name = "blood-caged-vrauks",  amount = 1},
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
	}
}
