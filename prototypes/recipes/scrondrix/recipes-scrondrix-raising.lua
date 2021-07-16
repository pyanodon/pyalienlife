local fun = require("prototypes/functions/functions")

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'scrondrix-cub',
	category = 'scrondrix',
	module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'c',
	main_product = 'scrondrix-pup',
    mats =
	{
		--chem
		{
			ingredients =
				{
					{name = 'scrondrix', amount = 1},
                    {name='fawogae', amount =20},
					{name='wood-seeds', amount =20},
					{name='meat', amount =10},
					{name='water-barrel', amount=20, return_barrel = true},
				},
			results =
				{
					{name='scrondrix-pup', amount = 4},
					{name = 'manure', amount = 5},
				},
			crafting_speed = 140,
			tech = 'scrondrix',
			name = 'Scrondrix cub 1',
		},
		--py
		{
			ingredients =
				{
					{name='yotoi-leaves', amount =10},
					{name='salt', amount = 5},
					{name='bedding', amount = 1},
				},
			results =
				{
					{name='scrondrix-pup', add_amount = 2},
					{name = 'manure', add_amount = 3},
				},
			crafting_speed = 120,
			tech = 'scrondrix-mk02',
			name = 'Scrondrix cub 2',
		},
		--prod
		{
			ingredients =
				{
					{name='raw-fiber', amount = 5},
					{name = 'wood', amount = 5}
				},
			results =
				{
					{name='scrondrix-pup', add_amount = 2},
					{name = 'manure', add_amount = 3},
				},
			crafting_speed = 100,
			tech = 'scrondrix-mk03',
			name = 'Scrondrix cub 3',
		},
		--prod
		{
			ingredients =
				{
					{name='navens', amount =8},
				},
			results =
				{
					{name='scrondrix-pup', add_amount = 2},
					{name = 'manure', add_amount = 3},
				},
			crafting_speed = 80,
			tech = 'scrondrix-mk04',
			name = 'Scrondrix cub 4',
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
					{name='navens',remove_item = true},
					{name='yotoi-leaves',remove_item = true},
					{name='pheromones', amount =1},
                    --{name='bedding', amount =4},
					--{name='water-barrel', amount=6,return_item={name='empty-barrel', amount=6}},
					--{name='bedding', amount = 1},
				},
			results =
				{
					{name='scrondrix-pup',remove_item = true},
					{name='scrondrix-pup', amount =8},
				},
			crafting_speed = 140,
			tech = 'pheromones',
			name = 'Scrondrix cub 6',
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name='wood-seeds',remove_item = true},
                    --{name='fawogae', amount =15},
					{name='yotoi-leaves', amount =10},
				},
			results =
				{
					{name='scrondrix-pup', amount ='+1'},
				},
			crafting_speed = 120,
			tech = 'pheromones',
			name = 'Scrondrix cub 7',
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
			crafting_speed = 110,
			tech = 'pheromones',
			name = 'Scrondrix cub 8',
		},
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 10},
				},
			results =
				{
					{name='scrondrix-pup', amount ='+2'},
				},
			crafting_speed =100,
			tech = 'pheromones',
			name = 'Scrondrix cub 9',
		},
		--navens
		{
			ingredients =
				{
					{name='navens', amount =5},

				},
			results =
				{
					{name='scrondrix-pup', amount ='+2'},
				},
			crafting_speed = 100,
			tech = 'pheromones',
			name = 'Scrondrix cub 10',
		},
	}
}
]]--

--raising

fun.autorecipes {
    name = 'caged-scrondrix',
	category = 'scrondrix',
	module_limitations = 'scrondrix',
	upgrades =
			{
				{
					tech = 'bigger-colon',
					ingredient_changes =
					{
						{name = 'fiber', amount = 2}
					},
					result_changes =
					{
						{name = 'manure', add_amount = 4},
						{name = 'scrondrix', subtract_percent_amount = 0.2, round_direction = 'up'}
					},
				},
				{
					tech = 'explosive-diarrhea',
					ingredient_changes =
					{
						{name = 'ethylene-glycol', amount = 50}
					},
					result_changes =
					{
						{name = 'manure', add_amount = 6},
						{name = 'scrondrix', subtract_percent_amount = 0.4, round_direction = 'up'}
					}
				},
			},
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
	main_product = 'scrondrix',
    mats =
	{
		--chem
		{
			ingredients =
				{
					{name = 'scrondrix-pup', amount = 10},
					{name='wood-seeds', amount =15},
					{name='meat', amount =5},
					{name='yotoi-leaves', amount =10},
					{name='water-barrel', amount=5, return_barrel = true},
				},
			results =
				{
					{name='scrondrix', amount = 4},
					{name = 'manure', amount = 5},
				},
			crafting_speed = 150,
			tech = 'scrondrix',
			name = 'Caged scrondrix 1',
		},
		--py
		--salt
		{
			ingredients =
				{
					{name='salt', amount = 5},
					{name='bedding', amount = 1},
				},
			results =
				{
					{name='scrondrix', add_amount = 2},
					{name = 'manure', add_amount = 3},
				},
			crafting_speed = 130,
			tech = 'scrondrix-mk02',
			name = 'Caged scrondrix 2',
		},
		--prod
		--fiber
		{
			ingredients =
				{
					{name='raw-fiber', amount = 5},
				},
			results =
				{
					{name='scrondrix', add_amount = 2},
					{name = 'manure', add_amount = 3},
				},
			crafting_speed = 120,
			tech = 'scrondrix-mk03',
			name = 'Caged scrondrix 4',
		},
		--prod
		--navens
		{
			ingredients =
				{
					{name='navens', amount =5},

				},
			results =
				{
					{name='scrondrix', add_amount = 2},
					{name = 'manure', add_amount = 3},
				},
			crafting_speed = 110,
			tech = 'scrondrix-mk04',
			name = 'Caged scrondrix 5',
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
			tech = 'growth-hormone',
			name = 'Caged scrondrix 6',
		},
		--antiviral and gh
		{
			ingredients =
				{
					{name='antiviral', amount =1},
				},
			results =
				{
					{name='scrondrix', remove_item = true},
					{name='scrondrix', probability = 1, amount_min =1, amount_max =2},
				},
			crafting_speed = 30,
			tech = 'antiviral',
			name = 'Caged scrondrix 7',
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
			tech = 'antiviral',
			name = 'Caged scrondrix 8',
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
					{name='scrondrix', remove_item = true},
					{name='brain-caged-scrondrix',1},
				},
			crafting_speed = 90,
			tech = 'nanochondria',
			name = 'Caged scrondrix 9',
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
			tech = 'nanochondria',
			name = 'Caged scrondrix 10',
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
					{name='brain-caged-scrondrix', remove_item = true},
					{name='bone-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'bmp',
			name = 'Caged scrondrix 11',
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
			tech = 'bmp',
			name = 'Caged scrondrix 12',
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
					{name='bone-caged-scrondrix', remove_item = true},
					{name='meat-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna',
			name = 'Caged scrondrix 13',
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
			tech = 'anabolic-rna',
			name = 'Caged scrondrix 14',
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
					{name='meat-caged-scrondrix', remove_item = true},
					{name='guts-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'antitumor',
			name = 'Caged scrondrix 15',
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
			tech = 'antitumor',
			name = 'Caged scrondrix 16',
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
					{name='guts-caged-scrondrix', remove_item = true},
					{name='blood-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery',
			name = 'Caged scrondrix 17',
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
			tech = 'recombinant-ery',
			name = 'Caged scrondrix 18',
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
					{name='blood-caged-scrondrix', remove_item = true},
					{name='skin-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'reca',
			name = 'Caged scrondrix 19',
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
			tech = 'reca',
			name = 'Caged scrondrix 20',
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
					{name='skin-caged-scrondrix', remove_item = true},
					{name='fat-caged-scrondrix', 1},
				},
			crafting_speed = 90,
			tech = 'orexigenic',
			name = 'Caged scrondrix 21',
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
			tech = 'orexigenic',
			name = 'Caged scrondrix 22',
		},
	}
}
]]--
