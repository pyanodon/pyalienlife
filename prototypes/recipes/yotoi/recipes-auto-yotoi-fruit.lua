py.autorecipes {
	name = "yotoi-fruit",
	category = "yotoi",
	subgroup = "py-alienlife-yotoi",
	order = "z",
	number_icons = true,
	mats =
	{
		--logisitic
		{
			ingredients =
			{
				{name = "soil",      amount = 4},
				{name = "gravel",    amount = 10},
				{name = "limestone", amount = 5},
				{name = "water",     amount = 100, fluidbox_index = 1},
			},
			results =
			{
				{name = "yotoi-fruit", amount = 5},
			},
			crafting_speed = 100,
			tech = "yotoi"
		},
		--py
		{
			ingredients =
			{
				{name = "fertilizer", amount = 5},
				{name = "ash",        amount = 8},
				{name = "biomass",    amount = 6},
			},
			results =
			{
				{name = "yotoi-fruit", add_amount = 7}
			},
			crafting_speed = 70,
			tech = "yotoi-mk02"
		},
		--chem
		{
			ingredients =
			{
				{name = "blood-meal",     amount = 2,  fallback = {name = "blood-barrel", amount = 4}},
				{name = "carbon-dioxide", amount = 60, fluidbox_index = 2},
				{name = "pesticide-mk01", amount = 1},
			},
			results =
			{
				{name = "yotoi-fruit", add_amount = 7}
			},
			crafting_speed = 50,
			tech = "yotoi-mk03"
		},
		--prod
		{
			ingredients =
			{
				{name = "fertilizer",     add_amount = 5},
				{name = "small-lamp",     amount = 3},
				{name = "pesticide-mk02", amount = 1},
			},
			results =
			{
				{name = "yotoi-fruit", add_amount = 7}
			},
			crafting_speed = 20,
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
					{name='yotoi-fruit', add_amount = "8"}
				},
			crafting_speed = 20,
			tech = 'yotoi-mk04'
		},
		{
			ingredients =
				{
					{name='biomass', amount =5},
					--{'nitrogen',remove_item = true},
					--{'manure',remove_item = true},
					--{'biomass',remove_item = true},

				},
			results =
				{
					{name='yotoi-fruit', add_amount = "1"}
				},
			crafting_speed = 20,
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
					{name='yotoi-fruit', add_amount = "8"}
				},
			crafting_speed = 20,
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
					{name='yotoi-fruit', add_amount = "6"}
				},
			crafting_speed = 10,
			tech = 'yotoi-mk04'
		},
	}
}
]] --
