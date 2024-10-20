--MANURE

py.autorecipes {
	name = "manure",
	category = "scrondrix",
	main_product = "manure",
	mats =
	{
		--chem
		{
			ingredients =
			{
				{name = "wood-seeds",   amount = 15},
				{name = "meat",         amount = 5},
				{name = "yotoi-leaves", amount = 10},
				{name = "water-barrel", amount = 5, return_barrel = true},
			},
			results =
			{
				{name = "manure", amount = 5},
			},
			crafting_speed = 150,
			tech = "scrondrix",
			name = "Scrondrix-Manure-1",
		},
		--py
		--salt
		{
			ingredients =
			{
				{name = "salt",    amount = 5},
				{name = "bedding", amount = 1},
			},
			results =
			{
				{name = "manure", add_amount = 3},
			},
			crafting_speed = 130,
			tech = "scrondrix-mk02",
			name = "Scrondrix-Manure-2",
		},
		--prod
		--fiber
		{
			ingredients =
			{
				{name = "raw-fiber", amount = 5},
				{name = "gh",        amount = 1},
			},
			results =
			{
				{name = "manure", add_amount = 3},
			},
			crafting_speed = 90,
			tech = "scrondrix-mk03",
			name = "Scrondrix-Manure-3",
		},
		--prod
		--navens
		{
			ingredients =
			{
				{name = "navens",    amount = 5},
				{name = "antiviral", amount = 1},
			},
			results =
			{
				{name = "manure", add_amount = 10},
			},
			crafting_speed = 90,
			tech = "scrondrix-mk04",
			name = "Scrondrix-Manure-4",
		},
	}
}
