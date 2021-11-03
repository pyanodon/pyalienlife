-- luacheck: ignore
-- DEAR GOD WHY Kingarthur!
local overrides = {}

-- add item/fluid to recipe ingredients
-- ingredient contains name, amount, and type if its a fluid
function overrides.add_ingredient(recipe, ingredient)
    -- check that recipe exists before doing anything else
    if data.raw.recipe[recipe] ~= nil then
        -- check if ingredient is item or fluid and that it exists
        if data.raw.item[ingredient.name] ~= nil or data.raw.fluid[ingredient.name] ~= nil or
            data.raw.module[ingredient.name] ~= nil then
            -- check if type is set to fluid
            if ingredient.type == 'fluid' then
                table.insert(data.raw.recipe[recipe].ingredients,
                    {type = 'fluid', name = ingredient.name, amount = ingredient.amount})
            else
                table.insert(data.raw.recipe[recipe].ingredients,
                    {type = 'item', name = ingredient.name, amount = ingredient.amount})
            end
        end
    end
end

-- add item/fluid to recipe results
function overrides.add_result(recipe, result)
    --log(serpent.block(recipe))
    --log(serpent.block(result))
    -- check that recipe exists before doing anything else
    if data.raw.recipe[recipe] ~= nil then
        -- check if result is item or fluid and that it exists
        if data.raw.item[result.name] ~= nil or data.raw.fluid[result.name] ~= nil then
            -- check if type is set to fluid
            if result.type == 'fluid' then
                table.insert(data.raw.recipe[recipe].results,
                    {type = 'fluid', name = result.name, amount = result.amount})
            else
                table.insert(data.raw.recipe[recipe].results,
                    {type = 'item', name = result.name, amount = result.amount})
            end
        end
    end
end
--

-- recipe builder: can take a list of ingredients and a list results and attempt to build a recipe using the first avalible item/fluid
-- Example
--[[
Recipe{
	name="a",
	ingredients =
		{
		--each ingredient can have multiple entries to use if one isnt loaded
		{
			{name="test",amount=5},
			{name="other",amount=3},
			{name="item",amount=1},
		},
		{name="bleh",amount=2},
		{type="fluid",name="stuff", amount=40}
		}
	results =
		{
		{"things",2},
		}


]]
function overrides.Recipe(recipe)
    local name = recipe.name
    local ingredients
    local results = {}
    local icon

    local prep_ingredients = {}
    local prep_results = {}

    local newingredients = false

    if data.raw.recipe[recipe.name] == nil then
        -- if recipe doesnt exist create new one
        ingredients = recipe.ingredients
        results = recipe.results
        icon = recipe.icon

        newingredients = true
    elseif data.raw.recipe[recipe.name] ~= nil then
        -- if recipe exists load missing info from current recipe and add new info from function

        if recipe.ingredients ~= nil then
            ingredients = recipe.ingredients
            newingredients = true
        else
            --log(serpent.block(i))
            --log("final ingredients")
            --log(serpent.block(ingredients))
            ingredients = data.raw.recipe[name].ingredients
        end

        if recipe.results ~= nil then
            results = recipe.results
        else
            --log(serpent.block(recipe.name))
            --log(serpent.block(data.raw.recipe[name]))
            if data.raw.recipe[name].result ~= nil then
                --log(serpent.block(data.raw.recipe[name]))
                --log(serpent.block(r))
                table.insert(results, {
                    {
                        type = 'item',
                        name = data.raw.recipe[name].result,
                        amount = data.raw.recipe[name].result_count or 1
                    }
                })
            else
                --log(serpent.block(data.raw.recipe[name]))
                for _, r in pairs(data.raw.recipe[name].results) do
                    --log(serpent.block(r))
                    table.insert(results, {r})
                end
            end
        end

        if recipe.icon ~= nil then
            icon = recipe.icon
        else
            icon = data.raw.recipe[name].icon
        end

        --log(serpent.block(results))
    end
    --log(serpent.block(data.raw.recipe[name]))
    --log(serpent.block(name))
    --log(serpent.block(ingredients))
    --log(serpent.block(results))

    if results ~= nil then
        -- check results to make sure they exist
        for _, restable in pairs(results) do
            for _, r in pairs(restable) do
                local result = {}
                --log(serpent.block(r))
                if r.type ~= 'fluid' then
                    -- if its not set to fluid its an item. check the items list for the items existance and set the type to item

                    if data.raw.item[r.name] ~= nil then
                        result.type = 'item'

                        -- insert the name and amount if the item is found
                        result.name = r.name
                        if r.amount ~= nil then result.amount = r.amount end
                        if r.amount_min ~= nil then result.amount_min = r.amount_min end
                        if r.amount_max ~= nil then result.amount_max = r.amount_max end
                        if r.probability ~= nil then result.probability = r.probability end
                        -- insert the complete result into the recipe results table
                        table.insert(prep_results, result)

                        break
                    end
                elseif r.type == 'fluid' then
                    -- its a fluid check if it exists and set the type to fluid

                    if data.raw.fluid[r.name] ~= nil then
                        result.type = 'fluid'

                        -- insert the name and amount if the item is found
                        result.name = r.name
                        result.amount = r.amount

                        -- insert the complete result into the recipe results table
                        table.insert(prep_results, result)

                        break
                    end
                end
            end
        end
    end

    if ingredients ~= nil then
        -- check each recipes ingredients table to make sure it exists
        for i, ingtable in pairs(ingredients) do
            -- item and fluid can share name assume its an item unless fluid is setfenv

            if newingredients then
                for _, ing in pairs(ingtable) do
                    local ingredient = {}
                    --log(serpent.block(recipe))
                    --log(serpent.block(ing))
                    --log(serpent.block(ingredients))
                    if ing.type ~= 'fluid' then
                        -- if its not set to fluid its an item. check the items list for the items existance and set the type to item

                        if data.raw.item[ing.name] ~= nil then
                            ingredient.type = 'item'

                            -- insert the name and amount if the item is found
                            ingredient.name = ing.name

                            if tonumber(ing.amount) ~= nil then
                                ingredient.amount = ing.amount
                            else
                                local amount = 0

                                for _, r in pairs(prep_results) do
                                    amount = amount + r.amount
                                end

                                ingredient.amount = amount
                            end

                            -- insert the complete ingredient into the recipe ingredients table
                            table.insert(prep_ingredients, ingredient)

                            break
                        end
                    elseif ing.type == 'fluid' then
                        -- its a fluid check if it exists and set the type to fluid

                        if data.raw.fluid[ing.name] ~= nil then
                            ingredient.type = 'fluid'

                            -- insert the name and amount if the item is found
                            ingredient.name = ing.name
                            ingredient.amount = ing.amount

                            -- insert the complete ingredient into the recipe ingredients table
                            table.insert(prep_ingredients, ingredient)

                            break
                        end
                    end
                end
            else
                prep_ingredients = ingredients
            end
        end
    end

    if next(prep_ingredients) and next(prep_results) then
        -- create the recipe
        data:extend({
            {
                type = 'recipe',
                name = name,
                category = recipe.category or 'crafting',
                subgroup = recipe.subgroup or nil,
                enabled = recipe.enabled or false,
                allow_decomposition = recipe.allow_decomposition or false,
                energy_required = recipe.energy_required or 1,
                ingredients = prep_ingredients,
                results = prep_results,
                icon = icon,
                icon_size = recipe.icon_size or 32,
                order = recipe.order or nil
            }
        })
    end

    --log(serpent.block(data.raw.recipe[name]))
end

-- add or subtract from a recipe ingredients or results
-- is used to edit already existing recipe
function overrides.Patch(recipe)
    --log(serpent.block(recipe))
    --log(serpent.block(data.raw.recipe[name]))
    local name = recipe.name
    local newingredients = recipe.ingredients
    local newresults = recipe.results

    local currentingredients = data.raw.recipe[name].ingredients
    local currentresults = data.raw.recipe[name].results

    if data.raw.recipe[name] ~= nil then
        if newingredients ~= nil then
            for i1, ing1 in pairs(currentingredients) do
                for _, ing2 in pairs(newingredients) do
                    if ing1.name == ing2.name then
                        if string.find(ing2.amount, '[%+]') ~= nil then
                            ing1.amount = ing1.amount + string.sub(string.find(ing2.amount, '%d'))

                            data.raw.recipe[name].ingredients[i1].amount = ing1.amount
                        elseif string.find(ing2.amount, '[%-]') then
                            ing1.amount = ing1.amount - string.sub(string.find(ing2.amount, '%d'))

                            data.raw.recipe[name].ingredients[i1].amount = ing1.amount
                        end
                    end
                end
            end
        end

        if newresults ~= nil then
            for r1, res1 in pairs(currentresults) do
                for _, res2 in pairs(newresults) do
                    if res1.name == res2.name then
                        if string.find(res2.amount, '[%+]') ~= nil then
                            res1.amount = res1.amount + string.sub(string.find(res2.amount, '%d'))

                            data.raw.recipe[name].results[r1].amount = res1.amount
                        elseif string.find(res2.amount, '[%-]') then
                            res1.amount = res1.amount - string.sub(string.find(res2.amount, '%d'))

                            data.raw.recipe[name].results[r1].amount = res1.amount
                        end
                    end
                end
            end
        end
    end

    --log(serpent.block(data.raw.recipe[name]))
end

-- replace item/fluid in recipes ingredients
-- doesnt yet include a way to change ingredient amount will update when needed
function overrides.ingredient_replace(recipe, old, new, new_amount)
    if data.raw.item[old] ~= nil or data.raw.fluid[old] ~= nil then
        if data.raw.item[new] ~= nil or data.raw.fluid[new] ~= nil then
            --log(serpent.block(recipe))
            if data.raw.recipe[recipe] ~= nil then
                if type(recipe) == 'string' then
                    local R = data.raw.recipe[recipe]
                    recipe = R
                end
                local ningredients
                local eingredients
                if recipe.ingredients ~= nil then
                    -- TODO:need to check for ingredients that dont have name declared
                    local ingredients = recipe.ingredients
                    for i, ing in pairs(ingredients) do
                        --log("get past for loop into ingredients")
                        if ing.name ~= nil then
                            if ing.name == old then
                                --log("pasted check for if ingredients = old item")
                                --log(recipe.name)
                                --log(serpent.block(ing))
                                local T = 'item'
                                if data.raw.fluid[new] ~= nil then T = 'fluid' end
                                local A = new_amount or table.deepcopy(ing.amount)
                                data.raw.recipe[recipe.name].ingredients[i] = {type = T, name = new, amount = A}
                                --log(recipe.name)
                                --log(serpent.block(recipe.ingredients))
                                --log("hit count")
                            end
                        else
                            -- end
                            -- for j, v in pairs(ing) do
                            -- TODO:fix duplicated ingredients on some items
                            if ing[1] == old then
                                --log("pasted check for if ingredients = old item")
                                --log(recipe.name)
                                --log(serpent.block(ing))
                                -- local T = table.deepcopy(ing.type)
                                local A = new_amount or table.deepcopy(ing[2])
                                --log(new)
                                --log(A)
                                data.raw.recipe[recipe.name].ingredients[i] = {new, A}
                                --log(recipe.name)
                                --log(serpent.block(data.raw.recipe[recipe.name].ingredients))
                                --log("hit count")
                            end
                        end
                    end
                elseif recipe.normal or recipe.expensive then
                    --log(serpent.block(recipe))
                    if recipe.normal ~= nil then
                        --log("is check good")
                        ningredients = recipe.normal.ingredients
                    end
                    if recipe.expensive ~= nil then eingredients = recipe.expensive.ingredients end
                    if recipe.normal then
                        --log(serpent.block(recipe.normal))
                        --log(serpent.block(ningredients))
                        for i, ing in pairs(ningredients) do
                            --log("get past for loop into normal ingredients")
                            --log("ningredients")
                            --log(serpent.block(ningredients))
                            --log(serpent.block(ing))
                            --log("ing name")
                            --log(ing.name)
                            --log("old")
                            --log(old)
                            if ing.name ~= nil then
                                if ing.name == old then
                                    --log("pasted check for if ingredients = old item")
                                    --log(recipe.name)
                                    --log(serpent.block(ing))
                                    local T = 'item'
                                    if data.raw.fluid[new] ~= nil then T = 'fluid' end
                                    local A = new_amount or table.deepcopy(ing.amount)
                                    data.raw.recipe[recipe.name].normal.ingredients[i] =
                                        {type = T, name = new, amount = A}
                                    --log(recipe.name)
                                    --log(serpent.block(recipe.ingredients))
                                    --log("hit count")
                                    --log(serpent.block(data.raw.recipe[recipe.name]))
                                end
                            else
                                -- end
                                -- for j,v in pairs(ing) do
                                if ing[1] == old then
                                    local A = new_amount or table.deepcopy(ing[2])
                                    data.raw.recipe[recipe.name].normal.ingredients[i] = {new, A}
                                end
                            end
                        end
                    end
                    if recipe.expensive then
                        for i, ing in pairs(eingredients) do
                            --log("get past for loop into ingredients")
                            if ing.name ~= nil then
                                if ing.name == old then
                                    --log("pasted check for if ingredients = old item")
                                    --log(recipe.name)
                                    --log(serpent.block(ing))
                                    local T = 'item'
                                    if data.raw.fluid[new] ~= nil then T = 'fluid' end
                                    local A = new_amount or table.deepcopy(ing.amount)
                                    data.raw.recipe[recipe.name].expensive.ingredients[i] =
                                        {type = T, name = new, amount = A}
                                    --log(recipe.name)
                                    --log(serpent.block(recipe.ingredients))
                                    --log("hit count")
                                end
                            else
                                --log(serpent.block(recipe))
                                -- end
                                -- for j,v in pairs(ing) do
                                --log("check this still works")
                                --log(serpent.block(ing))
                                if ing[1] == old then
                                    local A = new_amount or table.deepcopy(ing[2])
                                    data.raw.recipe[recipe.name].expensive.ingredients[i] = {new, A}
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

-- replace item/fluid in recipes results
function overrides.results_replacer(recipe, old, new, new_amount)
    --log("triggered")
    --log(recipe)
    --log(old)
    --log(new)
    --log(serpent.block(data.raw.recipe[recipe]))
    --log(serpent.block(data.raw.item[old]))
    --log(serpent.block(data.raw.item[new]))
    if data.raw.item[old] ~= nil or data.raw.fluid[old] ~= nil then
        --log("triggered")
        if data.raw.item[new] ~= nil or data.raw.fluid[new] ~= nil then
            --log("triggered")
            --log(recipe)
            if type(recipe) == 'string' then
                local R = data.raw.recipe[recipe]
                recipe = R
            end
            --log(serpent.block(R))
            if recipe ~= nil then
                --log(recipe.name)
                --log(serpent.block(recipe))
                if recipe.result then
                    if recipe.result == old then
                        data.raw.recipe[recipe.name].result = new
                        if recipe.result_count ~= nil and new_amount ~= nil then
                            data.raw.recipe[recipe.name].result_count = new_amount
                        end
                    end
                end
                if recipe.results then
                    for r, result in pairs(recipe.results) do
                        if result.name == old then
                            data.raw.recipe[recipe.name].results[r].name = new
                            if new_amount ~= nil then
                                data.raw.recipe[recipe.name].results[r].amount = new_amount
                            end
                            if data.raw.fluid[new] == nil and data.raw.recipe[recipe.name].results[r].type ~= 'item' then
                                data.raw.recipe[recipe.name].results[r].type = 'item'
                            end
                        end
                    end
                end
                if recipe.main_product ~= nil then
                    --log("should replace main_product")
                    if recipe.main_product == old then
                        --log("getting here for iron plate 1?")
                        data.raw.recipe[recipe.name].main_product = new
                    end
                end
                if recipe.normal or recipe.expensive then
                    if recipe.normal then
                        if recipe.normal.result then
                            if recipe.normal.result == old then
                                data.raw.recipe[recipe.name].normal.result = new
                                if recipe.result_count ~= nil and new_amount ~= nil then
                                    data.raw.recipe[recipe.name].normal.result_count = new_amount
                                end
                            end
                        end
                        if recipe.normal.results then
                            for r, result in pairs(recipe.normal.results) do
                                if result.name == old then
                                    data.raw.recipe[recipe.name].normal.results[r].name = new
                                    if new_amount ~= nil then
                                        data.raw.recipe[recipe.name].normal.results[r].amount = new_amount
                                    end
                                    if data.raw.fluid[new] == nil and
                                        data.raw.recipe[recipe.name].normal.results[r].type ~= 'item' then
                                        data.raw.recipe[recipe.name].normal.results[r].type = 'item'
                                    end
                                end
                            end
                        end
                        if recipe.normal.main_product then
                            if recipe.normal.main_product == old then
                                data.raw.recipe[recipe.name].normal.main_product = new
                            end
                        end
                    end
                    if recipe.expensive then
                        if recipe.expensive.result then
                            if recipe.expensive.result == old then
                                data.raw.recipe[recipe.name].expensive.result = new
                                if recipe.result_count ~= nil and new_amount ~= nil then
                                    data.raw.recipe[recipe.name].result_count = new_amount
                                end
                            end
                        end
                        if recipe.expensive.results then
                            for r, result in pairs(recipe.expensive.results) do
                                if result.name == old then
                                    data.raw.recipe[recipe.name].expensive.results[r].name = new
                                    if new_amount ~= nil then
                                        data.raw.recipe[recipe.name].expensive.results[r].amount = new_amount
                                    end
                                    if data.raw.fluid[new] == nil and
                                        data.raw.recipe[recipe.name].expensive.results[r].type ~= 'item' then
                                        data.raw.recipe[recipe.name].expensive.results[r].type = 'item'
                                    end
                                end
                            end
                        end
                        if recipe.expensive.main_product then
                            if recipe.expensive.main_product == old then
                                data.raw.recipe[recipe.name].expensive.main_product = new
                            end
                        end
                    end
                end
            end
        end
    end
end

-- replace an item/fluid in every recipes ingredients/results
-- best used to merge items that are duplicated in mods that should be the same
function overrides.global_item_replacer(old, new, blackrecipe)
    if data.raw.item[old] ~= nil or data.raw.fluid[old] ~= nil then
        if data.raw.item[new] ~= nil or data.raw.fluid[old] ~= nil then
            local recipes = table.deepcopy(data.raw.recipe)
            if type(blackrecipe) ~= 'table' and blackrecipe ~= nil then blackrecipe = {blackrecipe} end
            local brecipeset = {}
            if blackrecipe ~= nil then for _, brecipe in pairs(blackrecipe) do brecipeset[brecipe] = true end end
            --log(serpent.block(brecipeset))
            for recipe in pairs(recipes) do
                -- for b, brecipe in pairs(blackrecipe) do
                if not brecipeset[recipe] then
                    --log(serpent.block(recipe))
                    --log(serpent.block(recipe.name))
                    --log(serpent.block(brecipeset))
                    overrides.ingredient_replace(recipe, old, new)
                    overrides.results_replacer(recipe, old, new)
                end
                -- end
            end
        end
    end
end

-- used to remove a whole category of recipes
-- use case wipe all recipes from a building
function overrides.recipe_category_remove(category)
    --log("function was used")

    local hiddenrecipes = {}

    for _, recipe in pairs(data.raw.recipe) do
        if recipe.category == category then
            --log(recipe.category)
            --log(category)
            data.raw.recipe[recipe.name].hidden = true

            table.insert(hiddenrecipes, recipe.name)
        end
    end
    --log(serpent.block(hiddenrecipes))
    overrides.remove_recipe_unlock(hiddenrecipes)
end

-- removes recipes from tech
-- main use is removing recipes hidden by recipe_category_remove function
function overrides.remove_recipe_unlock(recipe_list)
    local recipelist = {}

    --log(serpent.block(recipelist))

    if type(recipe_list) ~= 'table' and recipe_list ~= nil then
        recipelist[recipe_list] = true
    elseif recipe_list ~= nil then
        for _, recipe in pairs(recipe_list) do recipelist[recipe] = true end
    end

    --log(serpent.block(recipelist))

    for _, tech in pairs(data.raw.technology) do
        if tech.effects ~= nil then
            for u, unlock in pairs(tech.effects) do
                --log(serpent.block(unlock))
                --log(serpent.block(recipelist[unlock.recipe]))
                --log(serpent.block(tech))

                if recipelist[unlock.recipe] ~= nil then
                    --log(serpent.block(data.raw.technology[tech.name].effects[u]))
                    data.raw.technology[tech.name].effects[u] = nil

                    --log(serpent.block(data.raw.technology[tech.name].effects[u]))
                    --log(serpent.block(data.raw.technology[tech.name].effects))
                end
            end
        end
        --log(serpent.block(data.raw.technology[tech.name]))
        -- clean up tech effects table to not be full of nil values to avoid errors

        local cleanedtable = {}

        if data.raw.technology[tech.name].effects ~= nil then
            for _, rec in pairs(data.raw.technology[tech.name].effects) do
                if rec ~= nil then table.insert(cleanedtable, rec) end
            end
        end

        data.raw.technology[tech.name].effects = cleanedtable

        --log(serpent.block(data.raw.technology[tech.name]))
    end
end

local hab = {}

-- blacklist for hot air recipes script to avoid
function overrides.HAB(blist)
    if type(blist) ~= 'table' and blist ~= nil then blist = {blist} end
    if blist ~= nil then for _, bl in pairs(blist) do if data.raw.recipe[bl] ~= nil then hab[bl] = true end end end
end

-- add 50 hot-air ingredient, output +2
function overrides.hotairrecipes()
    -- gather recipes for the advanced-foundry
    local recipes = table.deepcopy(data.raw.recipe)
    local afrecipes = {}
    local afrecipesnames = {}
    local afrcount = 0
    local altrec = 0
    for _, recipe in pairs(recipes) do
        if recipe.category == 'advanced-foundry' then
            table.insert(afrecipes, recipe)
            table.insert(afrecipesnames, recipe.name)
        end
        if recipe.category == 'smelting' then
            table.insert(afrecipes, recipe)
            table.insert(afrecipesnames, recipe.name)
        end
    end
    -- cycle thru afrecipes to make changes
    for _, recipe in pairs(afrecipes) do
        if not hab[recipe.name] then
            afrcount = afrcount + 1
            -- add ingredient
            if recipe.normal == nil and recipe.expensive == nil then
                if recipe.ingredients[1] ~= nil then
                    if recipe.ingredients[1].name == nil then
                        local ing = recipe.ingredients
                        recipe.ingredients = {}
                        table.insert(recipe.ingredients, {type = 'item', name = ing[1][1], amount = ing[1][2]})
                        if data.raw.item['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    elseif recipe.ingredients[1].name then
                        if data.raw.item['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    end
                elseif recipe.ingredients[2] ~= nil then
                    if recipe.ingredients[2].name == nil then
                        local ing = recipe.ingredients
                        recipe.ingredients = {}
                        table.insert(recipe.ingredients, {type = 'item', name = ing[2][1], amount = ing[2][2]})
                        if data.raw.item['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    elseif recipe.ingredients[2].name then
                        if data.raw.item['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    end
                end
                if type(recipe.result) == 'string' then
                    local res = recipe.result
                    recipe.result = nil
                    recipe.results = {{type = 'item', name = res, amount = 3}}
                elseif recipe.results then
                    if recipe.results[1].name == nil then
                        local res = recipe.results
                        recipe.results = {}
                        table.insert(recipe.results, {type = 'item', name = res[1][1], amount = (res[1][2] + 2)})
                    elseif recipe.results[1].name then
                        --log(serpent.block(recipe.results))
                        if recipe.results[1].amount ~= nil then
                            local resnum = recipe.results[1].amount + 2
                            recipe.results[1].amount = resnum
                        elseif recipe.results[1].amount_max ~= nil then
                            local resnum = recipe.results[1].amount_max + 2
                            recipe.results[1].amount_max = resnum
                        end
                    end
                end
            end
            if recipe.normal or recipe.expensive then
                if recipe.normal then
                    --log(serpent.block(recipe.normal))
                    if recipe.normal.ingredients[1] ~= nil then
                        if recipe.normal.ingredients[1].name == nil then
                            local ing = recipe.normal.ingredients
                            recipe.normal.ingredients = {}
                            table.insert(recipe.normal.ingredients,
                                {type = 'item', name = ing[1][1], amount = ing[1][2]})
                            if data.raw.item['solid-hot-air'] ~= nil then
                                table.insert(recipe.normal.ingredients,
                                    {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.normal.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        else
                            if data.raw.item['solid-hot-air'] ~= nil then
                                table.insert(recipe.normal.ingredients,
                                    {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.normal.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        end
                    end
                    if type(recipe.normal.result) == 'string' then
                        local res = recipe.normal.result
                        recipe.normal.result = nil
                        local rtab = {type = 'item', name = res, amount = 3}
                        recipe.normal.results = {}
                        table.insert(recipe.normal.results, rtab)
                    end
                    if recipe.normal.results ~= nil then
                        local resamount = recipe.normal.results[1].amount
                        recipe.normal.results[1].amount = resamount + 2
                    end
                end
                if recipe.expensive then
                    if recipe.expensive.ingredients[1] ~= nil then
                        if recipe.expensive.ingredients[1].name == nil then
                            local ing = recipe.expensive.ingredients
                            recipe.expensive.ingredients = {}
                            table.insert(recipe.expensive.ingredients,
                                {type = 'item', name = ing[1][1], amount = ing[1][2]})
                            if data.raw.item['solid-hot-air'] ~= nil then
                                table.insert(recipe.expensive.ingredients,
                                    {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.expensive.ingredients,
                                    {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        else
                            if data.raw.item['solid-hot-air'] ~= nil then
                                table.insert(recipe.expensive.ingredients,
                                    {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.expensive.ingredients,
                                    {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        end
                    end
                    if type(recipe.expensive.result) == 'string' then
                        local res = recipe.expensive.result
                        recipe.expensive.result = nil
                        local rtab = {type = 'item', name = res, amount = 3}
                        recipe.expensive.results = {}
                        table.insert(recipe.expensive.results, rtab)
                        --log(serpent.block(rtab))
                        --log(serpent.block(recipe.expensive.results))
                    end
                    if recipe.expensive.results ~= nil then
                        local resamount = recipe.expensive.results[1].amount
                        recipe.expensive.results[1].amount = resamount + 2
                    end
                end
            end
            -- find tech unlock of og recipe
            local unlock
            for _, t in pairs(data.raw.technology) do
                --log(serpent.block(t))
                if t.effects ~= nil then
                    for _, u in pairs(t.effects) do
                        if u.recipe == recipe.name then
                            unlock = t.name
                            --log(unlock)
                        end
                    end
                end
            end
            --log(serpent.block(recipe))
            local hname = 'hotair-' .. recipe.name
            if recipe.results then
                RECIPE{
                    type = 'recipe',
                    name = hname,
                    category = 'hot-air-advanced-foundry',
                    enabled = false,
                    energy_required = recipe.energy_required,
                    ingredients = recipe.ingredients,
                    results = recipe.results,
                    icon = recipe.icon,
                    icons = recipe.icons,
                    icon_size = 32,
                    main_product = recipe.main_product or nil
                }
                -- :add_unlock(unlock)
                altrec = altrec + 1
                if recipe.enabled == false then
                    if unlock ~= nil then
                        table.insert(data.raw.technology[unlock].effects, {type = 'unlock-recipe', recipe = hname})
                    end
                elseif recipe.enabled == true then
                    data.raw.recipe[hname].enabled = true
                elseif recipe.enabled == nil then
                    --log(recipe.name)
                    --log(serpent.block(recipe))
                    data.raw.recipe[hname].enabled = true
                    --log(serpent.block(data.raw.recipe[hname]))
                end
            end
            if recipe.normal or recipe.expensive then
                RECIPE{
                    type = 'recipe',
                    name = hname,
                    category = 'hot-air-advanced-foundry',
                    normal = {
                        category = 'hot-air-advanced-foundry',
                        enabled = false,
                        energy_required = recipe.expensive.energy_required,
                        ingredients = recipe.normal.ingredients,
                        results = recipe.normal.results
                    },
                    expensive = {
                        category = 'hot-air-advanced-foundry',
                        enabled = false,
                        energy_required = recipe.expensive.energy_required,
                        ingredients = recipe.expensive.ingredients,
                        results = recipe.expensive.results
                    },
                    icon = recipe.icon,
                    icons = recipe.icons,
                    icon_size = 32,
                    main_product = recipe.main_product or nil
                }
                -- :add_unlock(unlock)
                altrec = altrec + 1
                if recipe.normal.enabled == false or recipe.expensive.enabled == false then
                    if unlock ~= nil then
                        table.insert(data.raw.technology[unlock].effects, {type = 'unlock-recipe', recipe = hname})
                    end
                elseif recipe.normal.enabled == true or recipe.expensive.enabled == true then
                    if recipe.normal.enabled == true then
                        data.raw.recipe[hname].normal.enabled = true
                    end
                    if recipe.expensive.enabled == true then
                        data.raw.recipe[hname].expensive.enabled = true
                    end
                end
            end
            --log(serpent.block(data.raw.recipe[hname]))
        end
    end
    --log(serpent.block(afrecipesnames))
    --log(afrcount)
    --log(altrec)
    --[[
for _, r in pairs(data.raw.recipe) do
	if r.name == "iron-plate" then
	--log(serpent.block(r))
	end
	if r.category == "hot-air-advanced-foundry" then
	--log(serpent.block(r))
	end
end
]]
    --
end

function overrides.Tech_create()
end

-- adds recipe to tech for unlock if tech and recipe exists
function overrides.tech_add_recipe(tech, recipe)
    if data.raw.technology[tech] ~= nil then
        if data.raw.recipe[recipe] ~= nil then
            table.insert(data.raw.technology[tech].effects, {type = 'unlock-recipe', recipe = recipe})
        end
    end
end

-- removes recipe from tech if tech exists and includes recipe in effects
function overrides.tech_remove_recipe()
end

function overrides.tech_add_prerequisites(tech, prereq)
    if data.raw.technology[tech] ~= nil then
        if data.raw.technology[prereq] ~= nil then table.insert(data.raw.technology[tech].prerequisites, prereq) end
    end
end

function modify_recipe_tables(item,items_table,previous_item_names, result_table)
    --process both result and ingredient tables
    --log(serpent.block(item))
    --log(serpent.block(items_table))
    --log(serpent.block(previous_item_names))

        local name
        if data.raw.item[item.name] ~= nil or data.raw.module[item.name] ~= nil or data.raw.fluid[item.name] then
            name = item.name
        elseif type(item.fallback) == "string" then
            --log('hit')
            name = item.fallback
            item.name = name
        elseif type(item.fallback) == "table" and item.fallback.name ~= nil then
            --log('hit')
            name = item.fallback.name
            item.name = name
            if item.fallback.amount ~= nil then
                item.amount = item.fallback.amount
            end
        end
        --log(name)

        --[[
        if item.remove_item ~= nil and item.remove_item == true then
            --log('hit')
            for i, it in pairs(items_table) do
                --it = nil
                items_table[i] = nil
            end
        ]]--
        if previous_item_names[name] ~= true then
            --log('hit')
            --log(serpent.block(name))
            --add new ingredient to table

            --setting ingredient type
            local item_type
            if data.raw.item[name] ~= nil or data.raw.module[name] ~= nil then
                --log('hit')
                item_type = 'item'
            elseif data.raw.fluid[name] ~= nil then
                --log('hit')
                item_type = 'fluid'
            end
            item.type = item_type

           if item.amount ~= nil and type(item.amount) == "number" then
                table.insert(items_table, item)
            elseif item.amount_min ~= nil and item.amount_max ~= nil then
                table.insert(items_table, item)
            end
            --log(serpent.block(items_table))
        elseif previous_item_names[name] == true then
            --alter existing ingredient
            if item.remove_item ~= nil and item.remove_item == true then
                for p, pre in pairs(items_table) do
                    if pre.name == name then
                        items_table[p] = nil
                        previous_item_names[name] = nil
                    end
                end
            elseif item.amount == nil then
                if item.add_amount ~= nil then
                    --adding ingredient amount
                    for p, pre in pairs(items_table) do
                        if pre.name == name then
                            if pre.amount ~= nil then
                            --log(serpent.block(pre))
                            pre.amount = item.add_amount + pre.amount
                            elseif pre.amount_min ~= nil and pre.amount_max ~= nil then
                                pre.amount_min = pre.amount_min + item.add_amount
                                pre.amount_max = pre.amount_max + item.add_amount
                            end
                        end
                    end
                    --replace amount_min and amount_max with new values
                elseif item.amount_min ~= nil and item.amount_max ~= nil then
                    for p,pre in pairs(items_table) do
                        if pre.name == name then
                            pre.amount_min = item.amount_min
                            pre.amount_max = item.amount_max
                        end
                    end
                elseif item.subtract_amount ~= nil then
                    --subtract ingredient amount
                    for p, pre in pairs(items_table) do
                        if pre.name == name then
                            pre.amount = pre.amount - item.subtract_amount
                        end
                    end
                end
            elseif item.amount ~= nil then
                for p, pre in pairs(items_table) do
                    if pre.name == name then
                        pre.amount = item.amount
                    end
                end
            end
        end

        --add return item to results if it exists
        local return_item
        if item.return_item ~= nil then
            local item_type
            local name = item.return_item.name
            local amount = item.return_item.amount or item.amount or item.add_amount
            if data.raw.item[name] ~= nil or data.raw.module[name] ~= nil then
                item_type = 'item'
            elseif data.raw.fluid[name] ~= nil then
                item_type = 'fluid'
            end
            return_item = {type = item_type, name = name, amount = amount}
            table.insert(result_table, return_item)
        end

        --add empty barrels to results
        local return_barrel
        if item.return_barrel ~= nil and item.return_barrel == true then
            local item_type = 'item'
            local name = 'empty-barrel'
            local amount = item.amount or item.add_amount
            return_barrel = {type = item_type, name = name, amount = amount}
            for r, result in pairs(result_table) do
                if result.name == name then
                    result.amount = result.amount + amount
                elseif result.name ~= name then
                    table.insert(result_table, return_barrel)
                end
            end
        end
end

--handles all adjustments for each ingredient and result changes in autorecipe
function recipe_item_builder(ingredients,results,previous_ingredients,previous_results)
    --log(serpent.block(ingredients))
    --log(serpent.block(previous_ingredients))
    --log(serpent.block(results))
    local ing_table = table.deepcopy(previous_ingredients)
    local result_table = table.deepcopy(previous_results)

    --add old ingredient names to table
    local previous_ingredient_names = {}
    for p, pre in pairs(previous_ingredients) do
        --log(pre.name)
        --log(serpent.block(previous_ingredient_names))
        if previous_ingredient_names[pre.name] ~= true then
            previous_ingredient_names[pre.name] = true
        end
    end

    --add old result names to table
    local previous_result_names = {}
    for p, pre in pairs(previous_results) do
        if previous_result_names[pre.name] ~= true then
            previous_result_names[pre.name] = true
        end
    end

    --add return items to results before saving them and adding to the recipe
    for i, ing in pairs(ingredients) do
       modify_recipe_tables(ing, ing_table, previous_ingredient_names, result_table)
    end

    for r, result in pairs(results) do
       modify_recipe_tables(result, result_table,previous_result_names)
    end
    --log(serpent.block(ing_table))

    return ing_table, result_table
end

function overrides.autorecipes(recipe)
    --log('hit')
    --main details for all recipes
    local name = recipe.name
    --log(name)
        --default name for recipes if recipe doesnt provide an override
    local numbered_name
    local category = recipe.category
    local module_limitation = recipe.module_limitations or nil
    local subgroup = recipe.subgroup
    local order = recipe.order
    local upgrades = {}
    if recipe.upgrades ~= nil then
        upgrades = recipe.upgrades
    end
    local mats = recipe.mats

    --variables for individual recipes
        --new ingredients
    local ingredients
        --old ingredients from last recipe carried over
    local previous_ingredients = {}
        --new results
    local results
        --old results from last recipe carried over
    local previous_results = {}

    --recipe building
    for r, rec in pairs(mats) do
        ingredients = rec.ingredients
        results = rec.results
        --variable to set if recipe is enabled
        local enabled
        --tech name
        local tech

        if rec.tech == nil then
            enabled = true
        else
            enabled = false
            tech = rec.tech
        end

        --log(serpent.block(ingredients))
        --log(serpent.block(results))
        --process ingredients and results get return version with changes
        local fixed_ingredients, fixed_results = recipe_item_builder(ingredients, results, previous_ingredients, previous_results)

        --log(serpent.block(fixed_ingredients))
        --log(serpent.block(fixed_results))

        --save ingredients and results for next recipe
        previous_ingredients = fixed_ingredients
        --log(serpent.block(previous_ingredients))
        previous_results = fixed_results

        local number
        for i = 1, 50 do
            number = i
            numbered_name = name .. '-' .. number
            if data.raw.recipe[numbered_name] == nil then
                break
            end
        end

        --build recipe with stdlib recipe builder
        RECIPE{
            type = 'recipe',
            name = numbered_name,
            category = category,
            enabled = enabled,
            energy_required = rec.crafting_speed,
            ingredients = fixed_ingredients,
            results = fixed_results,
            subgroup = subgroup,
            order = order,
            -- main_product = results[1].name,
            -- icon = mat.icon
            --localised_name = rec.name
        }

        if rec.tech ~= nil then
            RECIPE(numbered_name):add_unlock(rec.tech)
        end
        if rec.name ~= nil then
            data.raw.recipe[numbered_name].localised_name = rec.name
        end
        if rec.icon ~= nil then
            data.raw.recipe[numbered_name].icon = rec.icon
            if rec.icon_size ~= nil then
                data.raw.recipe[numbered_name].icon_size = rec.icon_size
            else
                data.raw.recipe[numbered_name].icon_size = 32
            end
        end
        if rec.main_product ~= nil then
            data.raw.recipe[numbered_name].main_product = rec.main_product
        elseif recipe.main_product ~= nil then
            RECIPE(numbered_name):set_fields{main_product = recipe.main_product}
        end
        if module_limitation ~= nil then
            for m, module in pairs(data.raw.module) do
                if string.match(module.category, module_limitation) ~= nil then
                    table.insert(module.limitation, numbered_name)
                end
            end
        end
        --log(serpent.block(data.raw.recipe[numbered_name]))
    end

end

function overrides.tech_upgrade(tech_upgrade)
    --log(serpent.block(tech_upgrade))
    for _, tab in pairs(tech_upgrade) do
        --log(serpent.block(tab))
        if tab.is_ht == nil or tab.is_ht == false or mods['pyhightech'] then
            TECHNOLOGY{
                type = 'technology',
                name = tab.master_tech.name,
                icon = tab.master_tech.icon,
                icon_size = tab.master_tech.icon_size,
                order = tab.master_tech.order,
                prerequisites = tab.master_tech.prerequisites,
                effects = {},
                unit = tab.master_tech.unit
            }
            for _, tech in pairs(tab.sub_techs) do
                --log(serpent.block(tech))
                --log(tech.technology.name)

                data:extend({
                    {
                        type = 'sprite',
                        name = tech.technology.name,
                        filename = tech.technology.icon,
                        -- priority = "extra-high-no-scale",
                        size = tech.technology.icon_size
                        -- width = 64,
                        -- height = 64,
                        -- flags = {"gui-icon"},
                        -- scale = 0.5
                    }
                })
                --log(serpent.block(tab.master_tech.name))
                local module_effects = {}
                if tech.upgrades ~= nil then
                    local speed
                    if type(tech.upgrades.speed) == 'table' then
                        speed = {bonus = tech.upgrades.speed.module_amount}
                    elseif type(tech.upgrades.speed) == 'number' then
                        speed = {bonus = tech.upgrades.speed}
                    end
                    module_effects = {
                        consumption = {bonus = tech.upgrades.consumption},
                        speed = speed,
                        productivity = {bonus = tech.upgrades.productivity},
                        pollution = {bonus = tech.upgrades.pollution * -1}
                    }
                end

                local categories
                local recipes = {}
                if tech.entities[1] ~= nil then
                    --log('hit')
                    if data.raw['assembling-machine'][tech.entities[1]] ~= nil then
                        categories = data.raw['assembling-machine'][tech.entities[1]].crafting_categories
                    elseif data.raw['furnace'][tech.entities[1]] ~= nil then
                        categories = data.raw['furnace'][tech.entities[1]].crafting_categories
                    end
                    for c, cat in pairs(categories) do
                        for r, recipe in pairs(data.raw.recipe) do
                            if recipe.category == cat then table.insert(recipes, recipe.name) end
                        end
                    end
                end

                --log(serpent.block(recipes))

                ITEM{
                    type = 'module',
                    name = tech.technology.name .. '-module',
                    icons =
                        {
                            {
                                icon = tech.technology.icon,
                                icon_size = 128,
                                scale = 0.5
                            }
                        },
                    category = tech.technology.name,
                    tier = 1,
                    flags = {},
                    subgroup = 'py-alienlife-modules',
                    order = 't-a',
                    stack_size = 300,
                    effect = module_effects,
                    limitation = recipes,
                    -- limitation_message_key = "dicks"
                    localised_name = {"",{tostring('technology-name.' .. tech.technology.name)}}
                }

                data:extend({{type = 'module-category', name = tech.technology.name}})
            end
        end
    end
end

return overrides
