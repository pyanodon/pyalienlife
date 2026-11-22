------------------PUP MAKER------------------

py.autorecipes {
	name = "korlex-pup",
	category = "rc",
	allowed_module_categories = {"korlex"},
	subgroup = "py-alienlife-korlex",
	order = "c",
	main_product = "korlex-pup",
	crafting_speed = 20,
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				--{name = 'korlex', amount = 2},
				{name = "tuuphra-seeds",           amount = 10},
				{name = "korlex-food-01",          amount = 2},
				{name = "fish-hydrolysate-barrel", amount = 5,  return_barrel = true},
				{name = "water-barrel",            amount = 20, return_barrel = true},
			},
			results =
			{
				{name = "korlex-pup", amount = 3},
			},
			tech = "korlex"
		},
		--py
		{
			ingredients =
			{
				{name = "ash",                     amount = 20},
				{name = "fish-hydrolysate-barrel", remove_item = true},
				{name = "fish-emulsion-barrel",    amount = 5,        return_barrel = true},
				{name = "bedding",                 amount = 1},
			},
			results =
			{
				{name = "korlex-pup", add_amount = 3},
			},
			tech = "korlex-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "korlex-food-02", amount = 2},
				{name = "ash",            add_amount = 20},
			},
			results =
			{
				{name = "korlex-pup", add_amount = 3},
			},
			tech = "korlex-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "fish", add_amount = 10},
			},
			results =
			{
				{name = "korlex-pup", add_amount = 3},
			},
			tech = "korlex-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='fish',remove_item = true},
					{name='ash',remove_item = true},
                    {name='korlex-food-02',remove_item = true},
                    {name='kicalk', amount =3},
					{name='tuuphra', amount =6},
					{name='pheromones', amount =1},
                    {name='bhoddos', amount =2},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='korlex-pup',remove_item = true},
					{name='korlex-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='bhoddos',remove_item = true},
                    {name='tuuphra',remove_item = true},
                    {name='kicalk',remove_item = true},
					{name='korlex-food-01', amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--ash
		{
			ingredients =
				{
					{name='ash', amount = 20},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fish
		{
			ingredients =
				{
					{name='fish', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='korlex-food-01',remove_item = true},
					{name='ash',remove_item = true},
					{name='fish',remove_item = true},
					{name='korlex-food-02', amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 ash
		{
			ingredients =
				{
					{name='ash',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'pheromones'
		},
		--food 2 ash fish
		{
			ingredients =
				{
					{name='fish', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'pheromones'
		},

	}
}
]] --

--raising
py.autorecipes {
	name = "korlex",
	category = "korlex",
	subgroup = "py-alienlife-korlex",
	order = "b",
	main_product = "korlex",
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "korlex-pup",     amount = 2},
				{name = "tuuphra",        amount = 5},
				{name = "kicalk",         amount = 1, fallback = {name = "raw-fiber", amount = 5}},
				{name = "korlex-food-01", amount = 1},
				{name = "water-barrel",   amount = 8, return_barrel = true},
			},
			results =
			{
				{name = "korlex", amount = 2},
			},
			crafting_speed = 150,
			tech = "korlex"
		},
		--py
		{
			ingredients =
			{
				{name = "korlex-pup", add_amount = 2},
				{name = "ash",        amount = 10},
				{name = "bedding",    amount = 2},
				{name = "fish",       amount = 5},
				{name = "bhoddos",    amount = 1},
			},
			results =
			{
				{name = "korlex", add_amount = 2},
			},
			crafting_speed = 130,
			tech = "korlex-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "korlex-pup",     add_amount = 2},
				{name = "korlex-food-02", amount = 1},
				{name = "ash",            add_amount = 10},
			},
			results =
			{
				{name = "korlex", add_amount = 2},
			},
			crafting_speed = 110,
			tech = "korlex-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "korlex-pup",      add_amount = 2},
				{name = "fish-oil-barrel", amount = 6,    return_barrel = true},
			},
			results =
			{
				{name = "korlex", add_amount = 2},
			},
			crafting_speed = 90,
			tech = "korlex-mk04"
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

					{name='caged-korlex', remove_item = true},
					{name='caged-korlex', probability = 1, amount_min =1, amount_max =2},
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
			crafting_speed = 90,
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
					{name='caged-korlex', remove_item = true},
					{name='brain-caged-korlex', amount = 1},
				},
			crafting_speed = 90,
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
					{name='brain-caged-korlex', remove_item = true},
					{name='bone-caged-korlex', amount = 1},
				},
			crafting_speed = 90,
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
					{name='bone-caged-korlex', remove_item = true},
					{name='meat-caged-korlex', amount = 1},
				},
			crafting_speed = 90,
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
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-korlex', remove_item = true},
					{name='guts-caged-korlex', amount = 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh
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
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='guts-caged-korlex', remove_item = true},
					{name='blood-caged-korlex', amount = 1},
				},
			crafting_speed = 90,
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
					{name='blood-caged-korlex', remove_item = true},
					{name='skin-caged-korlex', amount = 1},
				},
			crafting_speed = 90,
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
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='reca',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='skin-caged-korlex', remove_item = true},
					{name='fat-caged-korlex', amount = 1},
				},
			crafting_speed = 90,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'orexigenic'
		},
	}
}
]] --
