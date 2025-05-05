py.autorecipes {
	name = "Moss",
	category = "moss",
	subgroup = "py-alienlife-moss",
	order = "a",
	number_icons = true,
	upgrades =
	{
		{
			tech = "spores",
			ingredient_changes =
			{
				{name = "chlorinated-water", amount = 2}
			},
			result_changes =
			{
				{name = "moss", add_amount = 5}
			},
		},
	},
	mats =
	{
		--base
		{
			ingredients =
			{
				{name = "dirty-water-light", amount = 100},
				{name = "carbon-dioxide",    amount = 100},
			},
			results =
			{
				{name = "moss", amount = 8},
			},
			crafting_speed = 100,
			tech = "moss-mk01"
		},
		--red
		{
			ingredients =
			{
				{name = "stone", amount = 20},
			},
			results =
			{
				{name = "moss", add_amount = 8}
			},
			crafting_speed = 80,
			tech = "moss-mk01"
		},
		--py
		{
			ingredients =
			{
				{name = "coarse", amount = 5},
			},
			results =
			{
				{name = "moss", add_amount = 8}
			},
			crafting_speed = 60,
			tech = "moss-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "limestone", amount = 10},
				{name = "coarse",    add_amount = 10}
			},
			results =
			{
				{name = "moss", add_amount = 8}
			},
			crafting_speed = 40,
			tech = "moss-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "fertilizer", amount = 5},
			},
			results =
			{
				{name = "moss", add_amount = 8}
			},
			crafting_speed = 20,
			tech = "moss-mk04"
		},
	}
}
