local farm_table = require('__pyalienlife__/scripts/farm-script')

local farm =
			{
				seed = 'replicator-yotoi', --the seed being planted
				crop = 'yotoi-tree', --the 'ore' that is spawned
				recipes = --all the recipes that use these seeds to grow the crop
					{
						{
						recipe_name = 'yotoi-super-1', -- recipe name
						crop_output = 1 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-2', -- recipe name
						crop_output = 2 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-3', -- recipe name
						crop_output = 3 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-4', -- recipe name
						crop_output = 4 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-5', -- recipe name
						crop_output = 5 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-6', -- recipe name
						crop_output = 6 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-7', -- recipe name
						crop_output = 7 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-8', -- recipe name
						crop_output = 8 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-9', -- recipe name
						crop_output = 9 -- crop yield
                        },
						{
						recipe_name = 'yotoi-super-10', -- recipe name
						crop_output = 10 -- crop yield
                        },
					}
			}

farm_table.add(farm)