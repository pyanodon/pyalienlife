py.autorecipes {
	name = "yotoi",
	category = "yotoi",
	subgroup = "py-alienlife-yotoi",
	order = "a",
	mats =
	{
		--logistic
		{
			ingredients =
			{
				{name = "yotoi-seeds", amount = 1},
				{name = "sand",        amount = 8},
				{name = "limestone",   amount = 6},
				{name = "water",       amount = 100, fluidbox_index = 1},
			},
			results =
			{
				{name = "yotoi", amount = 4},
			},
			crafting_speed = 130,
			tech = "yotoi"
		},
		--py
		{
			ingredients =
			{
				{name = "fertilizer", amount = 6},
				{name = "ash",        amount = 5},
				{name = "biomass",    amount = 10},
			},
			results =
			{
				{name = "yotoi", add_amount = 8}
			},
			crafting_speed = 100,
			tech = "yotoi-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "blood-meal",     amount = 5,   fallback = {name = "blood-barrel", amount = 4}},
				{name = "carbon-dioxide", amount = 100, fluidbox_index = 2},
				{name = "pesticide-mk01", amount = 1},
			},
			results =
			{
				{name = "yotoi", add_amount = 8}
			},
			crafting_speed = 70,
			tech = "yotoi-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "fertilizer",     add_amount = 4},
				{name = "small-lamp",     amount = 2},
				{name = "pesticide-mk02", amount = 1},
			},
			results =
			{
				{name = "yotoi", add_amount = 8}
			},
			crafting_speed = 40,
			tech = "yotoi-mk04"
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
					{name='yotoi', add_amount = "8"}
				},
			crafting_speed = 35,
			tech = 'yotoi-mk04'
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
					{name='yotoi', add_amount = "2"}
				},
			crafting_speed = 35,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='blood-meal', amount = 1},
					{name='manure', amount =5},
					--{'biomass',remove_item = true},

				},
			results =
				{
					{name='yotoi', add_amount = "3"}
				},
			crafting_speed = 30,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='manure',remove_item = true},
					{name='fertilizer', amount =1},
					{name='urea', amount =5},

				},
			results =
				{
					{name='yotoi', add_amount = "10"}
				},
			crafting_speed = 20,
			tech = 'yotoi-mk04'
		},
	}
}
]] --
