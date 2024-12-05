py.autorecipes {
	name = "fawogae",
	category = "fawogae",
	subgroup = "py-alienlife-fawogae",
	order = "b",
	upgrades =
	{
		{
			tech = "plankton",
			ingredient_changes =
			{
				{name = "phytoplankton", add_amount = 25}
			},
			result_changes =
			{
				{name = "fawogae", multiply_amount = 1.5, round_direction = "up"}
			},
		}
	},
	mats =
	{
		--base recipe
		{
			ingredients =
			{
				{name = "fawogae-spore", amount = 3},
			},
			results =
			{
				{name = "fawogae", amount = 7}
			},
			crafting_speed = 100,
			tech = "fawogae-mk01"
		},
		--first
		{
			ingredients =
			{
				{name = "water",            amount = 100},
				{name = "fungal-substrate", amount = 1},
			},
			results =
			{
				{name = "fawogae", amount = 15}
			},
			crafting_speed = 80,
			name = "fawogae-with-manure",
			tech = "fawogae-mk02"
		},
		--green
		{
			ingredients =
			{
				{name = "fungal-substrate",    remove_item = true},
				{name = "fungal-substrate-02", amount = 3},
				{name = "fertilizer",          add_amount = 3},
				{name = "biomass",             amount = 3},
			},
			results =
			{
				{name = "fawogae", amount = 30}
			},
			crafting_speed = 60,
			name = "fawogae-with-improved-substrate",
			tech = "fawogae-mk03"
		},
		--blue
		{
			ingredients =
			{
				{name = "fungal-substrate-02", remove_item = true},
				{name = "fungal-substrate-03", amount = 5},
				{name = "fertilizer",          add_amount = 4},
				{name = "biomass",             add_amount = 7},
			},
			results =
			{
				{name = "fawogae", amount = 60}
			},
			crafting_speed = 40,
			name = "fawogae-with-special-substrate",
			tech = "fawogae-mk04"
		},
		--GH
		{
			ingredients =
			{
				{name = "gh",         amount = 1},
				{name = "urea",       amount = 10,    fallback = "manure"},
				{name = "fertilizer", add_amount = 5},
				{name = "biomass",    add_amount = 15},
			},
			results =
			{
				{name = "fawogae", amount = 120}
			},
			crafting_speed = 20,
			name = "fawogae-with-growth-hormone",
			tech = "fawogae-mk05"
		},
	}
}
