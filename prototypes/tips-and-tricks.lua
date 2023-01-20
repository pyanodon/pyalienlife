data:extend(
{
	{
		type = "tips-and-tricks-item",
		name = "pyalienlife",
		category = "wiki-py",
		indent = 1,
		order = "g",
		is_title = true,
	},
	{
		type = "tips-and-tricks-item",
		name = "farming",
		category = "wiki-py",
		indent = 2,
		order = "ga",
        tag = '[item=sap-tree]',
        trigger =
        {
			type = "or",
			triggers = {
				{
                    type = "unlock-recipe",
                    recipe = "sap-extractor-mk01"
				},
				{
                    type = "unlock-recipe",
                    recipe = "seaweed-crop-mk01"
				},
				{
                    type = "unlock-recipe",
                    recipe = "moss-farm-mk01"
				},
				{
                    type = "unlock-recipe",
                    recipe = "fwf-mk01"
				},
				{
                    type = "unlock-recipe",
                    recipe = "vrauks-paddock-mk01"
				},
			},
        },
	},
	{
		type = "tips-and-tricks-item",
		name = "caravans",
		category = "wiki-py",
		indent = 2,
		order = "gb",
        tag = '[item=caravan]',
        trigger =
        {
            type = "unlock-recipe",
            recipe = "caravan"
        },
	},
	{
		type = "tips-and-tricks-item",
		name = "digosaurus",
		category = "wiki-py",
		indent = 2,
		order = "gc",
        tag = '[item=digosaurus]',
        trigger =
        {
            type = "unlock-recipe",
            recipe = "digosaurus"
        },
	},
	{
		type = "tips-and-tricks-item",
		name = "mega-farm",
		category = "wiki-py",
		indent = 2,
		order = "gd",
        tag = '[item=mega-farm]',
        trigger =
        {
            type = "unlock-recipe",
            recipe = "mega-farm"
        },
	},
	{
		type = "tips-and-tricks-item",
		name = "pydrive",
		category = "wiki-py",
		indent = 2,
		order = "ge",
        tag = '[item=pydrive]',
        trigger =
        {
            type = "unlock-recipe",
            recipe = "pydrive"
        },
	},
})

if mods["pyhightech"] then
	table.insert(data.raw["tips-and-tricks-item"]["farming"].trigger.triggers, 
    {
        type = "unlock-recipe",
        recipe = "moondrop-greenhouse-mk01"
    })
end
