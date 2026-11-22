------------------EGG MAKER------------------

py.autorecipes {
	name = "dhilmos-egg",
	category = "rc",
	allowed_module_categories = {"dhilmos"},
	subgroup = "py-alienlife-dhilmos",
	order = "c",
	main_product = "dhilmos-egg",
	number_icons = true,
	mats =
	{
		--chem
		{
			ingredients =
			{
				--{name = 'dhilmos', amount = 1},
				{name = "phytoplankton",    amount = 50,  fluidbox_index = 1},
				{name = "water-saline",     amount = 100, fluidbox_index = 2, return_item = {name = "waste-water"}},
				{name = "filtration-media", amount = 2},
			},
			results =
			{
				{name = "dhilmos-egg", amount = 2},
			},
			crafting_speed = 25,
			tech = "dhilmos"
		},
		--py
		{
			ingredients =
			{
				{name = "dhilmos-food-01", amount = 1},
				--{name = 'dhilmos', add_amount = 1},
				{name = "seaweed",         amount = 5},
			},
			results =
			{
				{name = "dhilmos-egg", add_amount = "1"},
			},
			crafting_speed = 20,
			tech = "dhilmos-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "dhilmos-food-01", remove_item = true},
				{name = "dhilmos",         add_amount = 2},
				{name = "seaweed",         remove_item = true},
				{name = "dhilmos-food-02", amount = 1},

			},
			results =
			{
				{name = "dhilmos-egg", add_amount = "1"},
			},
			crafting_speed = 18,
			tech = "dhilmos-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "seaweed", amount = 5},
				{name = "dhilmos", add_amount = 3},
			},
			results =
			{
				{name = "dhilmos-egg", add_amount = "1"},
			},
			crafting_speed = 16,
			tech = "dhilmos-mk04"
		},
	}
}

--hatching

py.autorecipes {
	name = "dhilmos-hatching",
	category = "dhilmos",
	subgroup = "py-alienlife-dhilmos",
	order = "c",
	main_product = "dhilmos-pup",
	mats =
	{
		--chem
		{
			ingredients =
			{
				{name = "dhilmos-egg",   amount = 20},
				{name = "ralesia-seeds", amount = 80},
				{name = "water-saline",  amount = 100, fluidbox_index = 2, return_item = {name = "waste-water"}},
				{name = "hot-air",       amount = 50,  fluidbox_index = 1},
			},
			results =
			{
				{name = "dhilmos-pup", amount = 20},
			},
			crafting_speed = 80,
			tech = "dhilmos"
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name = 'seaweed',remove_item = true},
					{name='dhilmos-food-02',remove_item = true},
					{name='fawogae', amount =15},
					{name='pheromones', amount =1},
				},
			results =
				{
					{name='dhilmos-egg',remove_item = true},
					{name='dhilmos-egg', amount =6},
				},
			crafting_speed = 50,
			tech = 'pheromones'
		},
		--food 1
		{
			ingredients =
				{
					{name='dhilmos-food-01', amount =1},
				},
			results =
				{
                    {name='dhilmos-egg', add_amount = "1"},
				},
			crafting_speed = 40,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name = 'seaweed', amount = 5},
				},
			results =
				{
                    {name='dhilmos-egg', add_amount = "1"},
				},
			crafting_speed = 30,
			tech = 'pheromones'
		},
		--food 2
		{
			ingredients =
				{
					{name='dhilmos-food-01',remove_item = true},
					{name = 'seaweed',remove_item = true},
					{name='dhilmos-food-02', amount =1},

				},
			results =
				{
                    {name='dhilmos-egg', add_amount = "1"},
				},
			crafting_speed = 20,
			tech = 'pheromones'
		},
		--food 2 salt fiber
		{
			ingredients =
				{
					{name = 'seaweed', amount = 5},
				},
			results =
				{
                    {name='dhilmos-egg', add_amount = "1"},
				},
			crafting_speed = 15,
			tech = 'pheromones'
		},

	}
}
]] --

--raising

py.autorecipes {
	name = "dhilmos",
	category = "dhilmos",
	subgroup = "py-alienlife-dhilmos",
	order = "b",
	main_product = "dhilmos",
	number_icons = true,
	mats =
	{
		--chem
		{
			ingredients =
			{
				{name = "dhilmos-pup",   amount = 1},
				{name = "phytoplankton", amount = 50},
				{name = "water-saline",  amount = 100, return_item = {name = "waste-water"}},
			},
			results =
			{
				{name = "dhilmos", amount = 1},
			},
			crafting_speed = 150,
			tech = "dhilmos"
		},
		--py
		{
			ingredients =
			{
				{name = "dhilmos-pup",      add_amount = 1},
				{name = "dhilmos-food-01",  amount = 2},
				{name = "filtration-media", amount = 1},
			},
			results =
			{
				{name = "dhilmos", add_amount = 1},
			},
			crafting_speed = 120,
			tech = "dhilmos-mk02"
		},
		--prod
		{
			ingredients =
			{
				{name = "dhilmos-pup",     add_amount = 3},
				{name = "seaweed",         amount = 10},
				{name = "dhilmos-food-02", amount = 3},
			},
			results =
			{
				{name = "dhilmos", add_amount = 3},
			},
			crafting_speed = 90,
			tech = "dhilmos-mk03"
		},
		--utility
		{
			ingredients =
			{
				{name = "dhilmos-pup",      add_amount = 3},
				{name = "filtration-media", add_amount = 2},
				{name = "seaweed",          add_amount = 10},
			},
			results =
			{
				{name = "dhilmos", add_amount = 3},
			},
			crafting_speed = 60,
			tech = "dhilmos-mk04"
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
					{name='dhilmos', remove_item = true},
					{name='dhilmos', probability = 1, amount_min =1, amount_max =2},
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
					{name='dhilmos', remove_item = true},
					{name='meat-dhilmos', amount = 1},
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
					{name='meat-dhilmos', remove_item = true},
					{name='guts-dhilmos', amount = 1},
				},
			crafting_speed = 80,
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
					{name='guts-dhilmos', remove_item = true},
					{name='blood-dhilmos', amount = 1},
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
					{name='blood-dhilmos', remove_item = true},
					{name='fat-dhilmos', amount = 1},
				},
			crafting_speed = 80,
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
