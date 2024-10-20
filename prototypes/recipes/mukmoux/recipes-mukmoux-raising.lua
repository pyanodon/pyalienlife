------------------CALF MAKER------------------

py.autorecipes {
	name = "mukmoux-calf",
	category = "rc",
	allowed_module_categories = {"mukmoux"},
	main_product = "mukmoux-calf",
	subgroup = "py-alienlife-mukmoux",
	order = "c",
	mats =
	{
		--logistic
		{
			ingredients =
			{
				--{name = 'mukmoux', amount = 2},
				{name = "fawogae",         amount = 30},
				{name = "ralesia-seeds",   amount = 30},
				{name = "mukmoux-food-01", amount = 2},
				{name = "bedding",         amount = 2},
				{name = "water-barrel",    amount = 15, return_barrel = true},
			},
			results =
			{
				{name = "mukmoux-calf", amount = 2},
				--{name = 'mukmoux', amount = 2},
			},
			crafting_speed = 10,
			tech = "mukmoux"
		},
		--py
		{
			ingredients =
			{
				{name = "mukmoux",   add_amount = 1},
				{name = "salt",      amount = 5},
				{name = "raw-fiber", amount = 4},
			},
			results =
			{
				{name = "mukmoux-calf", add_amount = 1},
				{name = "mukmoux",      add_amount = 1},
			},
			crafting_speed = 7,
			tech = "mukmoux-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "mukmoux",         add_amount = 1},
				{name = "mukmoux-food-02", amount = 2},
				{name = "salt",            amount = 4},
			},
			results =
			{
				{name = "mukmoux-calf", add_amount = 2},
				{name = "mukmoux",      add_amount = 1},
			},
			crafting_speed = 6,
			tech = "mukmoux-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "mukmoux",   add_amount = 1},
				{name = "raw-fiber", add_amount = 5},
			},
			results =
			{
				{name = "mukmoux-calf", add_amount = 1},
				{name = "mukmoux",      add_amount = 1},
			},
			crafting_speed = 5,
			tech = "mukmoux-mk04"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name='raw-fiber',remove_item = true},
					{name='salt',remove_item = true},
					{name='mukmoux-food-02',remove_item = true},
					{name='fawogae', amount =20},
					{name='pheromones', amount =1},
                    {name='ralesia-seeds', amount =20},
					--{name='water-barrel', amount=6,return_barrel = true},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='mukmoux-calf',remove_item = true},
					{name='mukmoux-calf', amount =5},
				},
			crafting_speed = 65,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
                    {name='ralesia-seeds',remove_item = true},
                    {name='fawogae',remove_item = true},
					{name='mukmoux-food-01', amount =2},
				},
			results =
				{

				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--salt
		{
			ingredients =
				{
					{name='salt', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 45,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='mukmoux-food-01',remove_item = true},
					{name='salt',remove_item = true},
					{name='raw-fiber',remove_item = true},
					{name='mukmoux-food-02', amount =2},

				},
			results =
				{

				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--food 2 salt
		{
			ingredients =
				{
					{name='salt',remove_item = true},
				},
			results =
				{

				},
			crafting_speed = 35,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'pheromones'
		},

	}
}
]] --

--raising

py.autorecipes {
	name = "mukmoux",
	category = "mukmoux",
	subgroup = "py-alienlife-mukmoux",
	order = "b",
	main_product = "mukmoux",
	upgrades =
	{
		{
			tech = "bigger-colon",
			ingredient_changes =
			{
				{name = "fiber", add_amount = 3}
			},
			result_changes =
			{
				{name = "manure", add_amount = 5}
			},
		},
		{
			tech = "explosive-diarrhea",
			ingredient_changes =
			{
				{name = "ethylene-glycol", add_amount = 3}
			},
			result_changes =
			{
				{name = "manure", add_amount = 10}
			},
		},
	},
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "mukmoux-calf",    amount = 3},
				{name = "fawogae",         amount = 15},
				{name = "ralesia-seeds",   amount = 15},
				{name = "mukmoux-food-01", amount = 2},
				{name = "water-barrel",    amount = 6, return_barrel = true},
			},
			results =
			{
				{name = "mukmoux", amount = 2},
			},
			crafting_speed = 75,
			tech = "mukmoux"
		},
		--py
		{
			ingredients =
			{
				{name = "mukmoux-calf", add_amount = 3},
				{name = "salt",         amount = 10},
				{name = "raw-fiber",    amount = 5},
				{name = "bedding",      amount = 2},
			},
			results =
			{
				{name = "mukmoux", add_amount = 2},
			},
			crafting_speed = 60,
			tech = "mukmoux-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "mukmoux-calf",    add_amount = 3},
				{name = "mukmoux-food-02", amount = 1},
				{name = "salt",            amount = 10},

			},
			results =
			{
				{name = "mukmoux", add_amount = 2},
			},
			crafting_speed = 45,
			tech = "mukmoux-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "mukmoux-calf", add_amount = 3},
				{name = "raw-fiber",    add_amount = 5},
			},
			results =
			{
				{name = "mukmoux", add_amount = 2},
			},
			crafting_speed = 30,
			tech = "mukmoux-mk04"
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
			crafting_speed = 12,
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

					{name='caged-mukmoux', remove_item = true},
					{name='caged-mukmoux', probability = 1, amount_min =1, amount_max =2},
				},
			crafting_speed = 12,
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
			crafting_speed = 30,
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
					{name='caged-mukmoux', remove_item = true},
					{name='brain-caged-mukmoux', amount = 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
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
					{name='brain-caged-mukmoux', remove_item = true},
					{name='bone-caged-mukmoux', amount = 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
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
					{name='bone-caged-mukmoux', remove_item = true},
					{name='meat-caged-mukmoux', amount = 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
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
					{name='meat-caged-mukmoux', remove_item = true},
					{name='guts-caged-mukmoux', amount = 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
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
					{name='guts-caged-mukmoux', remove_item = true},
					{name='blood-caged-mukmoux', amount = 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
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
					{name='blood-caged-mukmoux', remove_item = true},
					{name='skin-caged-mukmoux', amount = 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
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
					{name='skin-caged-mukmoux', remove_item = true},
					{name='fat-caged-mukmoux', amount = 1},
				},
			crafting_speed = 30,
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
			crafting_speed = 12,
			tech = 'orexigenic'
		},
	}
}
]] --
