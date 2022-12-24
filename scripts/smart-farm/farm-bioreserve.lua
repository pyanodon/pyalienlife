local farm =
			{
				seed = 'replicator-bioreserve', --the seed being planted
				crop = 'ore-bioreserve', --the 'ore' that is spawned
				recipes = --all the recipes that use these seeds to grow the crop
					{
						{
						recipe_name = 'bioreserve-super-1', -- recipe name
						crop_output = 20 -- crop yield
                        },
						{
						recipe_name = 'bioreserve-super-2', -- recipe name
						crop_output = 40 -- crop yield
                        },
						{
						recipe_name = 'bioreserve-super-3', -- recipe name
						crop_output = 60 -- crop yield
                        },
						{
						recipe_name = 'bioreserve-super-4', -- recipe name
						crop_output = 80 -- crop yield
                        },
						{
						recipe_name = 'bioreserve-super-5', -- recipe name
						crop_output = 100 -- crop yield
                        },
						{
						recipe_name = 'bioreserve-super-6', -- recipe name
						crop_output = 120 -- crop yield
                        },
						{
						recipe_name = 'bioreserve-super-7', -- recipe name
						crop_output = 140 -- crop yield
                        },
					}
			}

return farm
