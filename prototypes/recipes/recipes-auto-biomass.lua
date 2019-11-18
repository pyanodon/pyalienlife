
local biomasslist =
	{
	'log'
	}

for _, bio in pairs(biomasslist) do

	RECIPE {
		type = 'recipe',
		name = 'auto-biomass' .. bio,
		category = 'creature-chamber',
		enabled = false,
		energy_required = 5,
		ingredients = {
			{type = 'item', name = bio, amount = 1},
		},
		results = {
			{type = 'item', name = 'biomass', amount = 1},
		},
	}:add_unlock("arthurian")

end