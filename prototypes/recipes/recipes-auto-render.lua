
local items = {}

--table.itemkey = {ingredient, default ingredient amount, result, default result amount}

items.a = {"iron-ore", 2, "iron-plate", 3}
items.b = {"copper-ore", 3, "stone", 10}
items.c = {"iron-gear-wheel", 5, "water", 25}
items.d = {"wood", 4, "electronic-circuit", 3}
items.e = {"solid-fuel", 2, "assembling-machine-1", 3}

--log(serpent.block(data.raw.item["iron-gear-wheel"]))
log(data.raw.item["iron-gear-wheel"])
log(data.raw.item["wood"])
log(data.raw.item["solid-fuel"])

function autorecipes(recipe)

local baseitem = recipe.baseitem
local category = recipe.category
local ingredients = {}
local results = {}

log(serpent.block(recipe))

	for i, item in pairs(recipe.ingredients) do
	
		local ing = items[string.sub(item, 1, 1)]
		local sign = string.sub(item, 2, 2)
		local mod = string.sub(item, 3, 3)
		
		local type1
		local type2
		log(ing[1])
		if data.raw.item[ing[1]] ~= nil then
			type1 = "item"
		else
			type1 = "fluid"
		end
		log(ing[3])
		--log(data.raw.item[ing[3]].name)
		if data.raw.item[ing[3]] ~= nil then
			type2 = "item"
		else
			type2 = "fluid"
		end
		--log(item)
		--log(sign)
		--log(mod)
		
		--ingredients
		table.insert(ingredients, {type = type1, name = ing[1],amount = ing[2]})
		
		if sign == "+" then
			--results
			table.insert(results, {type = type2, name = ing[3],amount = ing[4]+mod})
		elseif sign == "-" then
			--results
			table.insert(results, {type = type2, name = ing[3],amount = ing[4]-mod})
		elseif sign == "*" then
			--results
			table.insert(results, {type = type2, name = ing[3],amount = ing[4]*mod})
		elseif sign == "/" then
			--results
			table.insert(results, {type = type2, name = ing[3],amount = ing[4]/mod})
		end
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
	subgroup = "py-alienlife-recipes",
    order = 'a'
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
    category = "slaughterhouse",
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
	ingredients = {'a+1','b-3','c*5'}
	}

autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'b-1','a/3','e+5'}
	}
	
autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'e-1','d-2','a+5'}
	}
	
autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'c*1','e*3','d/5'}
	}
	
autorecipes
	{
	baseitem = "zipir",
	category = "zipir",
	ingredients = {'d+1','c/3','b/5'}
	}