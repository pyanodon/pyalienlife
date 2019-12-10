local farm_table = require('__pyalienlife__/scripts/farm-script')

local farm =
			{
				seed = 'ralesia-seeds', --the seed being planted
				crop = 'ralesia-flowers', --the 'ore' that is spawned
				recipes = --all the recipes that use these seeds to grow the crop
					{
						{
						recipe_name = 'ralesias17', -- recipe name
						crop_output = 1 -- crop yield
						},
						{
						recipe_name = 'ralesias18', -- recipe name
						crop_output = 2 -- crop yield
						},
						{
						recipe_name = 'ralesias19', -- recipe name
						crop_output = 3 -- crop yield
						},
						{
						recipe_name = 'ralesias20', -- recipe name
						crop_output = 4 -- crop yield
						},
						{
						recipe_name = 'ralesias21', -- recipe name
						crop_output = 5 -- crop yield
						},
						{
						recipe_name = 'ralesias22', -- recipe name
						crop_output = 6 -- crop yield
						},
						{
						recipe_name = 'ralesias23', -- recipe name
						crop_output = 7 -- crop yield
						},
						{
						recipe_name = 'ralesias24', -- recipe name
						crop_output = 8 -- crop yield
						},
						{
						recipe_name = 'ralesias25', -- recipe name
						crop_output = 9 -- crop yield
						},
						{
						recipe_name = 'ralesias26', -- recipe name
						crop_output = 10 -- crop yield
						},
						{
						recipe_name = 'ralesias27', -- recipe name
						crop_output = 11 -- crop yield
						},
						{
						recipe_name = 'ralesias28', -- recipe name
						crop_output = 12 -- crop yield
						},
						{
						recipe_name = 'ralesias29', -- recipe name
						crop_output = 13 -- crop yield
						},
						{
						recipe_name = 'ralesias30', -- recipe name
						crop_output = 14 -- crop yield
						}
					}
			}

farm_table.add(farm)