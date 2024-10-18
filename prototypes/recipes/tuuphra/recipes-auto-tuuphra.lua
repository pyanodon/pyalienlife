py.autorecipes {
	name = "tuuphra",
	category = "tuuphra",
	subgroup = "py-alienlife-tuuphra",
	order = "a",
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "tuuphra-seeds",   amount = 5},
				{name = "manure-bacteria", amount = 50,  fluidbox_index = 2},
				{name = "soil",            amount = 20},
				{name = "coarse",          amount = 10},
				{name = "water",           amount = 100, fluidbox_index = 1},
			},
			results =
			{
				{name = "tuuphra", amount = 3},
			},
			crafting_speed = 100,
			tech = "tuuphra"
		},
		--py
		{
			ingredients =
			{
				{name = "tuuphra-seeds", add_amount = 5},
				{name = "fertilizer",    amount = 4},
				{name = "ash",           amount = 5},
				{name = "biomass",       amount = 10},
			},
			results =
			{
				{name = "tuuphra", add_amount = 5}
			},
			crafting_speed = 75,
			tech = "tuuphra-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "tuuphra-seeds",  add_amount = 5},
				{name = "blood-meal",     amount = 2,    fallback = {name = "blood-barrel", amount = 2}},
				{name = "nitrogen",       amount = 50,   fluidbox_index = 3},
				{name = "pesticide-mk01", amount = 2},
			},
			results =
			{
				{name = "tuuphra", add_amount = 10}
			},
			crafting_speed = 50,
			tech = "tuuphra-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "tuuphra-seeds",  add_amount = 5},
				{name = "fertilizer",     add_amount = 4},
				{name = "pesticide-mk02", amount = 1},
				{name = "small-lamp",     amount = 1},
			},
			results =
			{
				{name = "tuuphra", add_amount = 15}
			},
			crafting_speed = 25,
			tech = "tuuphra-mk04"
		},
	}
}

--[[
    --GH
		{
			ingredients =
				{
					{name='biomass',remove_item = true},
					{name='blood-meal',remove_item = true},
					{name='manure',remove_item = true},
					{name='fertilizer',remove_item = true},
					{name='gh', amount = 1},
				},
			results =
				{
					{name='tuuphra', add_amount = "6"}
				},
			crafting_speed = 50,
			tech = 'growth-hormone'
		},
		{
			ingredients =
				{
					{name='biomass', amount =10},
					--{'nitrogen',remove_item = true},
					--{'manure',remove_item = true},
					--{'biomass',remove_item = true},

				},
			results =
				{
					{name='tuuphra', add_amount = "2"}
				},
			crafting_speed = 50,
			tech = 'growth-hormone'
		},
		{
			ingredients =
				{
					{name='blood-meal', amount = 10},
					{name='manure', amount =5},
					--{'biomass',remove_item = true},

				},
			results =
				{
					{name='tuuphra', add_amount = "8"}
				},
			crafting_speed = 45,
			tech = 'growth-hormone'
		},
		{
			ingredients =
				{
					{name='manure',remove_item = true},
					{name='fertilizer', amount =2},
					{name='urea', amount =10},

				},
			results =
				{
					{name='tuuphra', add_amount = "10"}
				},
			crafting_speed = 30,
			tech = 'growth-hormone'
		},
	}
}
]] --
