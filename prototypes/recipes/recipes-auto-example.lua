local fun = require("prototypes/functions/functions")

		--((dual recipe example))--

fun.autorecipes { -- is a function call can be many per file is the same as RECIPE{} that is used in the rest of pymods
	name = 'dual-example', -- recipe name if in single recipe mode *@*
	baseitem = 'item', -- an item that exists to make the other modified items from *#*
    category = 'recipe-category', -- used in input recipe and output if outcategory not provided to set category
	outcategory = 'recipe-category', -- used for the second recipe to set category *
	singlerecipe = false, --=true: its a single recipe done 1 machine. takes ingredients and outputs the results. --=false: creates 2 recipes. 1 with the ingredients as inputs and outputs an item. 2nd recipe takes the item in and outputs the results.
	module_limitations = "ulric", --adds the recipes to a modules allowed recipes table *
	subgroup = 'subgroup', -- sets the recipes subgroups for menu organizion
    order = 'order', -- sets order for menu organizion
    mats = -- stuff needed for each recipe. 
	{
		{
			ingredients = -- duh, first time can not be empty or youll get an empty ingredients table
				{
					{name = 'name',amount = 'amount'*('*!*'), return_item={name='item',amount='amount'*}*('*&*')},-- a single ingredient
                    {'ingredient'}, -- see above for details
                    {'ingredient'}, -- see above. no limits to the number of ingredients beyond what the machine is set to
				},
			results = -- double duh, same as ingredients first time cant be empty or you get nothing
				{
					{name='bones',amount = 'amount'*('*!*'),probability = 'probability'**, amount_min = 'amount_min'**'***', amount_max = 'amount_max'**'***'},
					{'result'}, -- see above for details
					{'result'}, -- again not limited by this code to number of results
				},
				icon = 'icon', --image used as part of a subicon for the item and output recipe* if not provided it will use the baseitems icon as the icon
				crafting_speed = 130, -- sets crafting speed of input recipe for both single mode and dual mode.
				out_crafting_speed = 30, -- if provided sets speed of output recipe *
				tech = 'tech', -- tech that unlocks this recipe*
				newitem = false, --generates the same name in all recipes (in this case "ulric"), so we cant pick the recipe in the ulric corral because its appears as the same as the one bellow
				newitemname = 'name' --is used to give the item a name ingame. is only used when newitem is true
				-- first newitem is always set to true in the code
				name = 'name' --gives the correct name in rendering, loved it.
		},
		{
			ingredients = -- same as above but can be empty to reuse the same ingredients as the recipe before this one
				{
					
				},
			results = -- same as above but can be empty to reuse the same results as the recipe before this one
				{
					
				},
				
		},
	},
}

		--((single mode example))--

fun.autorecipes { -- is a function call can be many per file is the same as RECIPE{} that is used in the rest of pymods
    name = 'single-example', -- recipe name if in single recipe mode *@*
    category = 'recipe-category', -- used in input recipe and output if outcategory not provided to set category
	singlerecipe = false, --=true: its a single recipe done 1 machine. takes ingredients and outputs the results. --=false: creates 2 recipes. 1 with the ingredients as inputs and outputs an item. 2nd recipe takes the item in and outputs the results.
	module_limitations = "ulric", --adds the recipes to a modules allowed recipes table *
	subgroup = 'subgroup', -- sets the recipes subgroups for menu organizion
    order = 'order', -- sets order for menu organizion
    mats = -- stuff needed for each recipe. 
	{
		{
			ingredients = -- duh, first time can not be empty or youll get an empty ingredients table
				{
					{name = 'name',amount = 'amount'*('*!*'), return_item={name='item',amount='amount'*}*('*&*')},-- a single ingredient
                    {'ingredient'}, -- see above for details
                    {'ingredient'}, -- see above. no limits to the number of ingredients beyond what the machine is set to
				},
			results = -- double duh, same as ingredients first time cant be empty or you get nothing
				{
					{name='bones',amount = 'amount'*('*!*'),probability = 'probability'**, amount_min = 'amount_min'**'***', amount_max = 'amount_max'**'***'},
					{'result'}, -- see above for details
					{'result'}, -- again not limited by this code to number of results
				},
			icon = 'icon', --image used as part of a subicon for the item and output recipe* if not provided it will use the baseitems icon as the icon
			crafting_speed = 130, -- sets crafting speed of input recipe for both single mode and dual mode.
			tech = 'tech', -- tech that unlocks this recipe*
		},
		{
			ingredients = -- same as above but can be empty to reuse the same ingredients as the recipe before this one
				{
					
				},
			results = -- same as above but can be empty to reuse the same results as the recipe before this one
				{
					
				},
				
		},
	},
}


-- *: means this is not required for a recipe to work
-- *@*: is only used in single recipe mode as is (i.e. singlerecipe = true) dualmode adds a number
-- *#*: is only used in dual recipe mode (i.e. singlerecipe = false)
-- **: its all or nothing with these 3. if you use probability you have to use min and max
-- ***: amount min and max are optional as by default it is set to 1:1 which will give you perecent chance
-- *&*: return item allows you to set an item to be a result in the input recipe. amount is not need as it defaults to useing the same value as the item its a part of
--[[ 
*!*: inggredients and results carry over from the top recipe down. amount can have a few possible entries. 
+,-,*,/,R, and numbers. 
 +,-,*,/: if an item with the same name exist in the mats above this recipe it will preform the set math operation on that amount useing the new value (i.e. old amount + new amount). if this is a new item being added it will perform the math operation on the default value of the item from the items table. 
R: will clear this entry from the ingredients/results table it is in
numbers: sets amount to this value no matter what it was before
]]--
