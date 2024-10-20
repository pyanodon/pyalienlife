py.autorecipes {
	name = "moss",
	category = "moss",
	subgroup = "py-alienlife-moss",
	order = "a",
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
			name = "Moss-1",
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
			name = "Moss-2",
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
			name = "Moss-3",
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
			name = "Moss-4",
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
			name = "Moss-5",
			tech = "moss-mk04"
		},
	}
}
