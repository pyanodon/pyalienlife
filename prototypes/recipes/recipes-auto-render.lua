
local items = {}

--table.itemkey = {ingredient, default ingredient amount, result, default result amount}

items.a = {"iron-ore", 2, "iron-plate", 3}
items.b = {"copper-ore", 3, "stone", 1}
items.c = {"iron-gear-wheel", 5, "gravel", 25}
items.d = {"wood", 4, "electronic-circuit", 3}
items.e = {"solid-fuel", 2, "assembling-machine-1", 3}


function autorecipes(recipe)

local baseitem = recipe.baseitem
local category = recipe.category
local ingredients = {}
local results = {}

log(serpent.block(recipe))

	for i, item in pairs(recipe.ingredients) do
	
		local ing = items[string.sub(item, 1, 1)]
		
		
		--ingredients
		table.insert(ingredients, {type = "item", name = ing[1],amount = ing[2]})
		
		--results
		table.insert(results, {type = "item", name = ing[3],amount = ing[4]})
		
	end

log(serpent.block(ingredients))
log(serpent.block(results))

local number = 1

for i = 1, 25 do

	if data.raw.recipe[baseitem..number] ~= nil then
	
		number = i
		
	else
	
		break
		
	end
	
end

RECIPE {
    type = 'recipe',
    name = baseitem..number,
    category = category,
    enabled = true,
    energy_required = 300,
    ingredients = ingredients,
    results = {{type = "item", name = baseitem..number,amount = 1}},
}

ITEM {
    type = "item",
    name = baseitem..number,
    icon = data.raw.item[baseitem].icon,
	icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-plants",
    order = "a",
    stack_size = 500
}

RECIPE {
    type = 'recipe',
    name = "render-"..baseitem.."-"..number,
    category = category,
    enabled = true,
    energy_required = 300,
    ingredients = {{type = "item", name = baseitem..number, amount = 1}},
    results = results,
	icon = data.raw.item[baseitem].icon,
	icon_size = 32,
	main_product = results[1].name
}

log(serpent.block(data.raw.recipe[baseitem..number]))
log(serpent.block(data.raw.recipe["render-"..baseitem.."-"..number]))

end

autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'a1','b3','e5'}
	}

autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'b1','a3','c5'}
	}
	
autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'e1','d7','a5'}
	}
	
autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'a1','c3','b5'}
	}
	
autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'e1','b3','d5'}
	}