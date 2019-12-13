local farm_table = require('__pyalienlife__/scripts/farm-script')

local farm =
			{
				seed = 'replicator-ralesia', --the seed being planted
				crop = 'ralesia-flowers', --the 'ore' that is spawned
				recipes = --all the recipes that use these seeds to grow the crop
					{
						{
						recipe_name = 'ralesia-super-1', -- recipe name
						crop_output = 2 -- crop yield
						},
					}
			}

farm_table.add(farm)