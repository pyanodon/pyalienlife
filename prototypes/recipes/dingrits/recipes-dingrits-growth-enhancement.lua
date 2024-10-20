py.autorecipes {
	name = "dingrits-improved",
	category = "dingrits",
	subgroup = "py-alienlife-dingrits",
	order = "b",
	--main_product = "dingrits",
	mats =
	{
		--nanochondria
		{
			ingredients =
			{
				{name = "caged-dingrits", amount = 1},
				{name = "nanochondria",   amount = 1},
				{name = "antiviral",      amount = 1},
			},
			results =
			{
				{name = "brain-caged-dingrits", amount = 1},
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
		--bmp
		{
			ingredients =
			{
				{name = "gh",           remove_item = true},
				{name = "nanochondria", remove_item = true},
				{name = "bmp",          amount = 1},
			},
			results =
			{
				{name = "brain-caged-dingrits", remove_item = true},
				{name = "bone-caged-dingrits",  amount = 1},
			},
			crafting_speed = 90,
			tech = "bmp"
		},

		--bmp and gh
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
			tech = "bmp"
		},
		--rna anabolic
		{
			ingredients =
			{
				{name = "gh",           remove_item = true},
				{name = "bmp",          remove_item = true},
				{name = "anabolic-rna", amount = 1},
			},
			results =
			{
				{name = "bone-caged-dingrits", remove_item = true},
				{name = "meat-caged-dingrits", amount = 1},
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
				{name = "meat-caged-dingrits", remove_item = true},
				{name = "guts-caged-dingrits", amount = 1},
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
				{name = "guts-caged-dingrits",  remove_item = true},
				{name = "blood-caged-dingrits", amount = 1},
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
				{name = "cage",            add_amount = 1},
			},
			results =
			{
				{name = "blood-caged-dingrits", remove_item = true},
				{name = "skin-caged-dingrits",  amount = 1},
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
	}
}
