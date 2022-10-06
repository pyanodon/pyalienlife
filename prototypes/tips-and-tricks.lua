data:extend(
{
	{
		type = "tips-and-tricks-item-category",
		name = "pyanodon-wiki",
		order = "a"
	},
	{
		type = "tips-and-tricks-item",
		name = "farming",
		category = "pyanodon-farms",
		order = "a",
		--starting_status = "locked",
		trigger =
		{
			type = "or",
			triggers = {
				{
					type = "build-entity",
					entity = "fwf-mk01"
				},
				{
					type = "build-entity",
					entity = "seaweed-crop-mk01"
				},
				{
					type = "build-entity",
					entity = "sap-extractor-mk01"
				},
				{
					type = "build-entity",
					entity = "moss-farm-mk01"
				},
				{
					type = "build-entity",
					entity = "moondrop-greenhouse-mk01"
				},
				{
					type = "build-entity",
					entity = "vrauks-paddock-mk01"
				},
			},
		},
		--dependencies = {'introduction'},
		is_title = true,
	},
	{
		type = "tips-and-tricks-item",
		name = "farming-vrauks",
		category = "pyanodon-farms",
		indent = 1,
		order = "vrauks",
		--starting_status = "locked",
		trigger =
		{
			type = "set-recipe",
			recipe = "vrauks-1"
		},
		dependencies = {"farming"}
		--is_title = true,
	},
	--[[
	{
		type = "tips-and-tricks-item",
		name = "caravan-howto",
		category = "pyanodon-wiki",
		order = "a",
		--starting_status = "suggested",
		trigger =
		{
			type = "unlock-recipe",
			recipe = "caravan"
		},
	}
	]]--
})
