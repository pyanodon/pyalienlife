------------------pup MAKER------------------

py.autorecipes {
	name = "trits-cub",
	category = "rc",
	allowed_module_categories = {"trits"},
	subgroup = "py-alienlife-trits",
	order = "c",
	main_product = "trits-pup",
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "trits",            amount = 1},
				{name = "seaweed",          amount = 15},
				{name = "wood-seeds",       amount = 15},
				{name = "moondrop",         amount = 5,   fallback = "fawogae"},
				{name = "sea-sponge",       amount = 2},
				{name = "filtration-media", amount = 2},
				{name = "water-saline",     amount = 300, return_item = {name = "waste-water", amount = 300}},
			},
			results =
			{
				{name = "trits-pup", amount = 2},
			},
			crafting_speed = 80,
			tech = "trits"
		},
		--py/chem
		{
			ingredients =
			{
				{name = "trits",           add_amount = 1},
				{name = "sodium-alginate", amount = 10},
				{name = "albumin",         amount = 5},
			},
			results =
			{
				{name = "trits-pup", add_amount = 2},
			},
			crafting_speed = 60,
			tech = "trits-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "trits",    add_amount = 1},
				{name = "fish-egg", amount = 5},
			},
			results =
			{
				{name = "trits-pup", add_amount = 2},
			},
			crafting_speed = 50,
			tech = "trits-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "trits",   add_amount = 1},
				{name = "guts",    amount = 10},
				{name = "bhoddos", amount = 5},
			},
			results =
			{
				{name = "trits-pup", add_amount = 2},
			},
			crafting_speed = 40,
			tech = "trits-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
                    {name = 'sea-sponge',remove_item = true},
                    {name = 'bhoddos',remove_item = true},
                    {name = 'albumin',remove_item = true},
					{name = 'guts',remove_item = true},
					{name = 'moondrop',remove_item = true},
                    {name = 'sodium-alginate',remove_item = true},
                    {name = 'filtration-media',remove_item = true},
					{name = 'fish-egg',remove_item = true},
					--{name = 'seaweed', amount =15},
					{name = 'pheromones', amount =1},
					{name = 'moondrop', amount =10},
                    --{name = 'wood-seeds', amount =15},
					--{name = 'water-barrel', amount=6,return_item={name = 'barrel', amount=6}},
					--{name = 'sea-sponge', amount = 1},
				},
			results =
				{
					{name = 'trits-pup',remove_item = true},
					{name = 'trits-pup', amount =5},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    --{name = 'wood-seeds',remove_item = true},
                    --{name = 'seaweed',remove_item = true},
					{name = 'filtration-media', amount =3},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--sodium-alginate
		{
			ingredients =
				{
					{name = 'sodium-alginate', amount = 15},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name = 'sea-sponge', amount = 10},
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
					--{name = 'filtration-media',remove_item = true},
					--{name = 'sodium-alginate',remove_item = true},
					--{name = 'sea-sponge',remove_item = true},
					{name = 'fish-egg', amount =3},

				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--food 2 sodium-alginate
		{
			ingredients =
				{
					{name = 'guts', amount = 10},
				},
			results =
				{

				},
			crafting_speed = 90,
			tech = 'pheromones'
		},
		--food 2 sodium-alginate fiber
		{
			ingredients =
				{
					{name = 'bhoddos', amount = 5},
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

--Raising

py.autorecipes {
	name = "trits",
	category = "trits",
	subgroup = "py-alienlife-trits",
	order = "b",
	main_product = "trits",
	mats =
	{
		--py
		{
			ingredients =
			{
				{name = "trits-pup",        amount = 1},
				{name = "seaweed",          amount = 30},
				{name = "wood-seeds",       amount = 30},
				{name = "moondrop",         amount = 15,  fallback = "fawogae"},
				{name = "filtration-media", amount = 2},
				{name = "water-saline",     amount = 500, return_item = {name = "waste-water", amount = 250}},
			},
			results =
			{
				{name = "trits", amount = 2},
			},
			crafting_speed = 280,
			tech = "trits"
		},
		--py/chem
		{
			ingredients =
			{
				{name = "trits-pup",       add_amount = 1},
				{name = "sodium-alginate", amount = 15},
				{name = "sea-sponge",      amount = 5},
			},
			results =
			{
				{name = "trits", add_amount = 2},
			},
			crafting_speed = 240,
			tech = "trits-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "trits-pup", add_amount = 1},
				{name = "fish-egg",  amount = 25},
			},
			results =
			{
				{name = "trits", add_amount = 2},
			},
			crafting_speed = 200,
			tech = "trits-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "trits-pup",       add_amount = 1},
				{name = "sodium-alginate", add_amount = 20},
				{name = "sea-sponge",      add_amount = 7},
			},
			results =
			{
				{name = "trits", add_amount = 2},
			},
			crafting_speed = 160,
			tech = "trits-mk04"
		},
	}
}

--[[
		--gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},

				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'growth-hormone'
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name = 'antiviral', amount =1},
				},
			results =
				{
					{name = 'trits', remove_item = true},
					{name = 'trits', probability = 1, amount_min =2, amount_max =3},
				},
			crafting_speed = 50,
			tech = 'antiviral'
		},
		--antiviral
		{
			ingredients =
				{
					--{name = 'antiviral', amount =1},
					{name = 'gh',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 160,
			tech = 'antiviral'
		},
		--nanochondria
		{
			ingredients =
				{
					{name = 'nanochondria', amount =1},
					--{name = 'antiviral',remove_item = true},
				},
			results =
				{
					{name = 'trits', remove_item = true},
					{name = 'brain-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'nanochondria',remove_item = true},
					{name = 'bmp', amount =1},
				},
			results =
				{
					{name = 'brain-trits', remove_item = true},
					{name = 'bone-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'bmp'
		},

		--bmp and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'bmp',remove_item = true},
					{name = 'anabolic-rna', amount =1},
				},
			results =
				{
					{name = 'bone-trits', remove_item = true},
					{name = 'meat-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'anabolic-rna',remove_item = true},
					{name = 'antitumor', amount =1},
				},
			results =
				{
					{name = 'meat-trits', remove_item = true},
					{name = 'guts-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'antitumor',remove_item = true},
					{name = 'recombinant-ery', amount =1},
				},
			results =
				{
					{name = 'guts-trits', remove_item = true},
					{name = 'blood-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'recombinant-ery',remove_item = true},
					{name = 'reca', amount =1},
				},
			results =
				{
					{name = 'blood-trits', remove_item = true},
					{name = 'skin-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'reca'
		},
		--orexigenic
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'reca',remove_item = true},
					{name = 'orexigenic', amount =1},
				},
			results =
				{
					{name = 'skin-trits', remove_item = true},
					{name = 'fat-trits', amount = 2},
				},
			crafting_speed = 160,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'orexigenic'
		},
	}
}
]] --
