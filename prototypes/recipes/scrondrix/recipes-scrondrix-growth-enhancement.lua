------------------SPECIAL MAKER------------------

py.autorecipes {
	name = "scrondrix-improved",
	category = "scrondrix",
	module_limitations = "scrondrix",
	subgroup = "py-alienlife-scrondrix",
	order = "c",
	--main_product = 'scrondrix-pup',
	mats =
	{
		--nanochondria
		{
			ingredients =
			{
				{name = "caged-scrondrix", amount = 1},
				{name = "gh",              amount = 1},
				{name = "nanochondria",    amount = 1},
			},
			results =
			{
				{name = "brain-caged-scrondrix", amount = 1},
			},
			crafting_speed = 90,
			tech = "nanochondria",
			name = "Caged-scrondrix-9",
		},
		--[[
			nanochondria and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'nanochondria',
			name = 'Caged-scrondrix-10',
		},
		]] --
		--bmp
		{
			ingredients =
			{
				--{name='gh',remove_item = true},
				{name = "nanochondria", remove_item = true},
				{name = "bmp",          amount = 1},
			},
			results =
			{
				{name = "brain-caged-scrondrix", remove_item = true},
				{name = "bone-caged-scrondrix",  amount = 1},
			},
			crafting_speed = 90,
			tech = "bmp",
			name = "Caged-scrondrix-11",
		},
		--[[
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
			tech = 'bmp',
			name = 'Caged-scrondrix-12',
		},
		]] --
		--rna anabolic
		{
			ingredients =
			{
				--{name='gh',remove_item = true},
				{name = "bmp",          remove_item = true},
				{name = "anabolic-rna", amount = 1},
			},
			results =
			{
				{name = "bone-caged-scrondrix", remove_item = true},
				{name = "meat-caged-scrondrix", amount = 1},
			},
			crafting_speed = 90,
			tech = "anabolic-rna",
			name = "Caged-scrondrix-13",
		},
		--[[
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
			tech = 'anabolic-rna',
			name = 'Caged-scrondrix-14',
		},
		]] --
		--antitumor
		{
			ingredients =
			{
				--{name='gh',remove_item = true},
				{name = "anabolic-rna", remove_item = true},
				{name = "antitumor",    amount = 1},
			},
			results =
			{
				{name = "meat-caged-scrondrix", remove_item = true},
				{name = "guts-caged-scrondrix", amount = 1},
			},
			crafting_speed = 90,
			tech = "antitumor",
			name = "Caged-scrondrix-15",
		},
		--[[
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
			tech = 'antitumor',
			name = 'Caged-scrondrix-16',
		},
		]]
		--Recombinant Ery
		{
			ingredients =
			{
				--{name='gh',remove_item = true},
				{name = "antitumor",       remove_item = true},
				{name = "recombinant-ery", amount = 1},
			},
			results =
			{
				{name = "guts-caged-scrondrix",  remove_item = true},
				{name = "blood-caged-scrondrix", amount = 1},
			},
			crafting_speed = 90,
			tech = "recombinant-ery",
			name = "Caged-scrondrix-17",
		},
		--[[
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
			tech = 'recombinant-ery',
			name = 'Caged-scrondrix-18',
		},]]
		--reca
		{
			ingredients =
			{
				--{name='gh',remove_item = true},
				{name = "recombinant-ery", remove_item = true},
				{name = "reca",            amount = 1},
			},
			results =
			{
				{name = "blood-caged-scrondrix", remove_item = true},
				{name = "skin-caged-scrondrix",  amount = 1},
			},
			crafting_speed = 90,
			tech = "reca",
			name = "Caged-scrondrix-19",
		},
		--[[
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
			tech = 'reca',
			name = 'Caged-scrondrix-20',
		},]]
		--orexigenic
		{
			ingredients =
			{
				--{name='gh',remove_item = true},
				{name = "reca",       remove_item = true},
				{name = "orexigenic", amount = 1},
			},
			results =
			{
				{name = "skin-caged-scrondrix", remove_item = true},
				{name = "fat-caged-scrondrix",  amount = 1},
			},
			crafting_speed = 90,
			tech = "orexigenic",
			name = "Caged-scrondrix-21",
		},
		--[[
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
			tech = 'orexigenic',
			name = 'Caged-scrondrix-22',
		},]]
	}
}
