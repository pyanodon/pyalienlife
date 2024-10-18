py.autorecipes {
	name = "caged-antelope",
	category = "antelope",
	subgroup = "py-alienlife-antelope",
	order = "b",
	main_product = "caged-antelope",
	mats =
	{
		{
			ingredients =
			{
				{name = "rennea",        amount = 15},
				{name = "navens",        amount = 10},
				{name = "tuuphra-seeds", amount = 15},
				{name = "water-barrel",  amount = 6, return_barrel = true},
				{name = "cage-antelope", amount = 1},
			},
			results =
			{
				{name = "caged-antelope", probability = 0.5, amount_min = 1, amount_max = 1},
			},
			crafting_speed = 120,
			tech = "schrodinger-antelope"
		},

		{
			ingredients =
			{
				{name = "nano-cellulose", amount = 5},
			},
			results =
			{

			},
			crafting_speed = 110,
			tech = "schrodinger-antelope"
		},

		{
			ingredients =
			{
				{name = "salt",                amount = 10},
				{name = "fine-nexelit-powder", amount = 4},
			},
			results =
			{

			},
			crafting_speed = 100,
			tech = "schrodinger-antelope"
		},
		--fiber
		{
			ingredients =
			{
				{name = "sea-sponge", amount = 5},
			},
			results =
			{

			},
			crafting_speed = 90,
			tech = "schrodinger-antelope"
		},
		--food 2 salt
		{
			ingredients =
			{
				{name = "seaweed", amount = 10},
			},
			results =
			{

			},
			crafting_speed = 80,
			tech = "schrodinger-antelope"
		},
		--gh
		{
			ingredients =
			{
				{name = "gh", amount = 1},

			},
			results =
			{

			},
			crafting_speed = 30,
			tech = "schrodinger-antelope"
		},
		--antiviral and gh
		{
			ingredients =
			{
				{name = "antiviral", amount = 1},
			},
			results =
			{
				{name = "caged-antelope", remove_item = true},
				{name = "caged-antelope", probability = 0.7, amount_min = 1, amount_max = 1},
			},
			crafting_speed = 30,
			tech = "schrodinger-antelope"
		},
		--antiviral
		{
			ingredients =
			{
				--{name='antiviral', amount =1},
				{name = "gh", remove_item = true},
			},
			results =
			{

			},
			crafting_speed = 90,
			tech = "schrodinger-antelope"
		},
	}
}
