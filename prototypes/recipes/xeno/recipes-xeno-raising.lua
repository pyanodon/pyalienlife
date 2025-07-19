------------------EGG MAKER------------------

py.autorecipes {
	name = "xeno-egg",
	category = "rc",
	allowed_module_categories = {"xeno"},
	subgroup = "py-alienlife-xeno",
	order = "c",
	main_product = "xeno-egg",
	number_icons = true,
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "xeno",          amount = 1},
				{name = "caged-mukmoux", amount = 2},
				{name = "fish",          amount = 25},
				{name = "bones",         amount = 20},
				{name = "water-barrel",  amount = 15, return_barrel = true},
			},
			results =
			{
				{name = "xeno-egg", amount = 3},
				{name = "cage",     amount = 2}
			},
			crafting_speed = 30,
			tech = "xeno"
		},
		--chem
		{
			ingredients =
			{
				{name = "guts", amount = 10},
			},
			results =
			{
				{name = "xeno-egg", add_amount = 3},
			},
			crafting_speed = 25,
			tech = "xeno-mk02"
		},
		--ulric
		{
			ingredients =
			{
				{name = "caged-ulric", amount = 2},

			},
			results =
			{
				{name = "xeno-egg", add_amount = 3},
				{name = "cage",     add_amount = 2}
			},
			crafting_speed = 20,
			tech = "xeno-mk03"
		},
		--ulric salt fiber
		{
			ingredients =
			{
				{name = "guts", add_amount = 10},
			},
			results =
			{
				{name = "xeno-egg", add_amount = 3},
			},
			crafting_speed = 20,
			tech = "xeno-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='guts',remove_item = true},
					{name='caged-ulric',remove_item = true},
					--{name='bones', amount =15},
					{name='pheromones', amount =1},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='fish', amount = 1},
				},
			results =
				{
					{name='xeno-egg',remove_item = true},
					{name='xeno-egg', amount =15},
				},
			crafting_speed =140,
			tech = 'pheromones'
		},
		--meat
		{
			ingredients =
				{
					{name='meat', amount =10},
				},
			results =
				{
                    {name='xeno-egg', add_amount = "1"},
				},
			crafting_speed = 115,
			tech = 'pheromones'
		},
		--guts
		{
			ingredients =
				{
					{name='guts', amount = 10},
				},
			results =
				{
                    {name='xeno-egg', add_amount = "1"},
				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--ulric
		{
			ingredients =
				{
					{name='meat',remove_item = true},
					{name='guts',remove_item = true},
					{name='caged-ulric', amount =2},

				},
			results =
				{
                    {name='xeno-egg', add_amount = "3"},
				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--ulric salt fiber
		{
			ingredients =
				{
					{name='guts', amount = 10},
				},
			results =
				{
                    {name='xeno-egg', add_amount = "1"},
				},
			crafting_speed = 80,
			tech = 'pheromones'
		},

	}
}
]] --

--Raising

py.autorecipes {
	name = "caged-xeno",
	category = "xeno",
	subgroup = "py-alienlife-xeno",
	order = "b",
	main_product = "caged-xeno",
	number_icons = true,
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "xeno-egg",      amount = 1},
				{name = "caged-mukmoux", amount = 1},
				{name = "bones",         amount = 10},
				{name = "water-barrel",  amount = 6, return_barrel = true},
			},
			results =
			{
				{name = "caged-xeno", amount = 1},
			},
			crafting_speed = 130,
			tech = "xeno"
		},
		--chem
		{
			ingredients =
			{
				{name = "xeno-egg",      add_amount = 1},
				{name = "fish",          amount = 8},
				{name = "caged-mukmoux", add_amount = 1},
				{name = "guts",          amount = 5},
			},
			results =
			{
				{name = "caged-xeno", add_amount = 1},
			},
			crafting_speed = 110,
			tech = "xeno-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "xeno-egg",    add_amount = 1},
				{name = "caged-ulric", amount = 1},
				{name = "fish",        add_amount = 8},

			},
			results =
			{
				{name = "caged-xeno", add_amount = 1},
			},
			crafting_speed = 90,
			tech = "xeno-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "xeno-egg", add_amount = 1},
				{name = "guts",     add_amount = 5},
				{name = "cage",     amount = 1},
			},
			results =
			{
				{name = "caged-xeno", add_amount = 1},
			},
			crafting_speed = 70,
			tech = "xeno-mk04"
		},
	}
}

--[[
		--gh
		{
			ingredients =
				{
					{name='gh', amount =1},

				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'growth-hormone'
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral', amount =1},
				},
			results =
				{
					{name='caged-xeno', remove_item = true},
					{name='caged-xeno', probability = 1.5, amount_min =1, amount_max =2},
				},
			crafting_speed = 30,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name='antiviral', amount =1},
					{name='gh',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name='nanochondria', amount =1},
					--{name='antiviral',remove_item = true},
				},
			results =
				{
					{name='caged-xeno', remove_item = true},
					{name='brain-caged-xeno', amount = 1},
				},
			crafting_speed = 80,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='bmp', amount =1},
				},
			results =
				{
					{name='brain-caged-xeno', remove_item = true},
					{name='bone-caged-xeno', amount = 1},
				},
			crafting_speed = 80,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='bmp',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='bone-caged-xeno', remove_item = true},
					{name='meat-caged-xeno', amount = 1},
				},
			crafting_speed = 80,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'anabolic-rna'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='meat-caged-xeno', remove_item = true},
					{name='sulfuric-caged-xeno', amount = 1},
				},
			crafting_speed = 80,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='sulfuric-caged-xeno', remove_item = true},
					{name='chitin-caged-xeno', amount = 1},
				},
			crafting_speed = 80,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
		},
	}
}
]] --
