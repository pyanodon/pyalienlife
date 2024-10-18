py.autorecipes {
	name = "carapace",
	category = "phadai",
	subgroup = "py-alienlife-phadai",
	main_product = "carapace",
	mats =
	{
		--chem
		{
			ingredients =
			{
				{name = "phadai",               amount = 5},
				{name = "meat",                 amount = 15},
				{name = "water-barrel",         amount = 4, return_barrel = true},
				{name = "phadai-food-01",       amount = 3},
				{name = "programmable-speaker", amount = 1},
				{name = "small-lamp",           amount = 2},
			},
			results =
			{
				{name = "carapace",    amount = 5},
				{name = "used-phadai", amount = 5},
			},
			crafting_speed = 60,
			tech = "phadai",
			name = "Phadai-Dance-Dance-Revolution-1",
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		--py
		{
			ingredients =
			{
				{name = "phadai",       add_amount = 5},
				{name = "fawogae",      amount = 4},
				{name = "bedding",      amount = 1},
				{name = "energy-drink", amount = 4},
			},
			results =
			{
				{name = "carapace",    add_amount = 5},
				{name = "used-phadai", add_amount = 5},
			},
			crafting_speed = 60,
			tech = "phadai-mk02",
			name = "Phadai-Dance-Dance-Revolution-2",
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		--prod
		{
			ingredients =
			{
				{name = "phadai",         add_amount = 5},
				{name = "phadai-food-02", amount = 2},
				{name = "bedding",        amount = 2},
			},
			results =
			{
				{name = "carapace",    add_amount = 5},
				{name = "used-phadai", add_amount = 5},
			},
			crafting_speed = 60,
			tech = "phadai-mk03",
			name = "Phadai-Dance-Dance-Revolution-3",
		},
		--utility
		{
			ingredients =
			{
				{name = "phadai",       add_amount = 5},
				{name = "energy-drink", add_amount = 4},
			},
			results =
			{
				{name = "carapace",    add_amount = 5},
				{name = "used-phadai", add_amount = 5},
			},
			crafting_speed = 60,
			tech = "phadai-mk04",
			name = "Phadai-Dance-Dance-Revolution-4",
		},
	}
}
