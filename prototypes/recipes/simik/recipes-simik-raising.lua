------------------CUB MAKER------------------

py.autorecipes {
	name = "simik-cub",
	category = "rc",
	allowed_module_categories = {"simik"},
	subgroup = "py-alienlife-simik",
	order = "c",
	main_product = "simik-pup",
	crafting_speed = 30,
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				--{name = "simik", amount = 4},
				{name = "stone-wool",         amount = 3, fallback = "raw-fiber"},
				{name = "sea-sponge",         amount = 1},
				{name = "simik-food-01",      amount = 2},
				{name = "olefin-barrel",      amount = 5, return_barrel = true},
				{name = "molten-iron-barrel", amount = 2, return_barrel = true},
			},
			results =
			{
				--{name = 'simik', amount_min = 1, amount_max = 4},
				{name = "simik-pup", amount = 2},
			},
			tech = "simik-mk01"
		},
		--py
		{
			ingredients =
			{
				{name = "arqad-maggot",        amount = 4},
				{name = "stone",               amount = 10},
				{name = "molten-iron-barrel",  remove_item = true},
				{name = "molten-steel-barrel", amount = 2,        return_barrel = true}
			},
			results =
			{
				{name = "simik-pup", add_amount = 2},
			},
			tech = "simik-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "simik-food-02",                 amount = 2},
				{name = "molten-steel-barrel",           remove_item = true},
				{name = "molten-stainless-steel-barrel", amount = 2,        return_barrel = true}
			},
			results =
			{
				{name = "simik-pup", add_amount = 4},
			},
			tech = "simik-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "stone",                         add_amount = 10},
				{name = "molten-stainless-steel-barrel", remove_item = true},
				{name = "molten-super-steel-barrel",     amount = 2,        return_barrel = true}
			},
			results =
			{
				{name = "simik-pup", add_amount = 8},
			},
			tech = "simik-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='stone',remove_item = true},
					{name='arqad-maggot',remove_item = true},
					{name='simik-food-02',remove_item = true},
					{name='stone-wool', amount =5},
					{name='pheromones', amount =1},
					--{name='olefin-barrel', amount=6,return_barrel = true},
					--{name='yotoi-leaves', amount = 3},
				},
			results =
				{
					{name='simik-pup',remove_item = true},
					{name='simik-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{

                    {name='stone-wool',remove_item = true},
					{name='simik-food-01', amount =2},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot', amount = 4},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--stone
		{
			ingredients =
				{
					{name='stone', amount = 10},
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
					{name='simik-food-01',remove_item = true},
					{name='arqad-maggot',remove_item = true},
					{name='stone',remove_item = true},
					{name='simik-food-02', amount =2},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 arqad-maggot
		{
			ingredients =
				{
					{name='arqad-maggot',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 arqad-maggot stone
		{
			ingredients =
				{
					{name='stone', amount = 10},
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
	name = "caged-simik",
	category = "simik",
	subgroup = "py-alienlife-simik",
	order = "b",
	main_product = "simik",
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "simik-pup",     amount = 5},
				{name = "stone-wool",    amount = 3, fallback = "raw-fiber"},
				{name = "sea-sponge",    amount = 1},
				{name = "simik-food-01", amount = 1},
				{name = "iron-plate",    amount = 10},
				{name = "olefin-barrel", amount = 2, return_barrel = true},
			},
			results =
			{
				{name = "simik", amount = 5},
			},
			crafting_speed = 100,
			tech = "simik-mk01"
		},
		--py
		{
			ingredients =
			{
				{name = "simik-pup",    add_amount = 5},
				{name = "arqad-maggot", amount = 2},
				{name = "stone",        amount = 5},
				{name = "iron-plate",   remove_item = true},
				{name = "steel-plate",  amount = 5}
			},
			results =
			{
				{name = "simik", add_amount = 5},
			},
			crafting_speed = 100,
			tech = "simik-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "simik-pup",       add_amount = 5},
				{name = "simik-food-01",   remove_item = true},
				{name = "simik-food-02",   amount = 1},
				{name = "steel-plate",     remove_item = true},
				{name = "stainless-steel", amount = 5}
			},
			results =
			{
				{name = "simik", add_amount = 5},
			},
			crafting_speed = 100,
			tech = "simik-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "simik-pup",       add_amount = 5},
				{name = "arqad-maggot",    add_amount = 5},
				{name = "stone",           add_amount = 5},
				{name = "stainless-steel", remove_item = true},
				{name = "super-steel",     amount = 5}
			},
			results =
			{
				{name = "simik", add_amount = 5},
			},
			crafting_speed = 100,
			tech = "simik-mk04"
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
					{name='caged-simik', remove_item = true},
					{name='caged-simik', probability = 1, amount_min =1, amount_max =2},
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
					{name='caged-simik', remove_item = true},
					{name='brain-caged-simik', amount = 1},
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
					{name='brain-caged-simik', remove_item = true},
					{name='bone-caged-simik', amount = 1},
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
					{name='bone-caged-simik', remove_item = true},
					{name='meat-caged-simik', amount = 1},
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
					{name='meat-caged-simik', remove_item = true},
					{name='guts-caged-simik', amount = 1},
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

		--antitumor hot air
		{
			ingredients =
				{
					{name='gh',remove_item = true},

				},
			results =
				{
					{name='guts-caged-simik', remove_item = true},
					{name='hot-air-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh hot air
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
					{name='hot-air-caged-simik', remove_item = true},
					{name='blood-caged-simik', amount = 1},
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
		--reca skin
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='blood-caged-simik', remove_item = true},
					{name='skin-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca skin and gh
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
        --reca chitin
		{
			ingredients =
				{
					{name='gh',remove_item = true},
				},
			results =
				{
					{name='skin-caged-simik', remove_item = true},
					{name='chitin-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca chitin and gh
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
        --reca keratin
		{
			ingredients =
				{
					{name='gh',remove_item = true},
				},
			results =
				{
					{name='chitin-caged-simik', remove_item = true},
					{name='keratin-caged-simik', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca keratin and gh
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
					{name='keratin-caged-simik', remove_item = true},
					{name='fat-caged-simik', amount = 1},
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

--poop

py.autorecipes {
	name = "simik-poop",
	category = "simik",
	subgroup = "py-alienlife-simik",
	order = "b",
	main_product = "simik-poop",
	number_icons = true,
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "stone-wool",    amount = 3, fallback = "raw-fiber"},
				{name = "simik-food-01", amount = 1},
				{name = "stone",         amount = 10},
				{name = "olefin-barrel", amount = 2, return_barrel = true},
			},
			results =
			{
				{name = "simik-poop", amount = 5},
			},
			crafting_speed = 80,
			tech = "simik-mk01"
		},
		--py
		{
			ingredients =
			{
				{name = "arqad-maggot", amount = 2},
			},
			results =
			{
				{name = "simik-poop", add_amount = 3},
			},
			crafting_speed = 80,
			tech = "simik-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "simik-food-01", remove_item = true},
				{name = "simik-food-02", amount = 1},
				{name = "grod-seeds",    amount = 5}
			},
			results =
			{
				{name = "simik-poop", add_amount = 4},
			},
			crafting_speed = 80,
			tech = "simik-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "arqad-maggot", add_amount = 3},
				{name = "stone",        add_amount = 5},
				{name = "scrondrix",    amount = 1}
			},
			results =
			{
				{name = "simik-poop", add_amount = 10},
			},
			crafting_speed = 80,
			tech = "simik-mk04"
		},
	}
}
