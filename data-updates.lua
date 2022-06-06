require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local table = require('__stdlib__/stdlib/utils/table')
--require("__pycoalprocessing__/prototypes/functions/functions")
local fun = require("prototypes/functions/functions")

require("prototypes/updates/autoplace-fish")
require("prototypes/updates/base-updates")

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
    ITEM("automation-science-pack", "tool"):set("icon", "__pyalienlifegraphics3__/graphics/icons/automation-science-pack.png")
end

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

if mods["pyhightech"] then
    require("prototypes/technologies/kicalk")
    require("prototypes/technologies/schrodinger-antelope")
    require("prototypes/buildings/antelope-enclosure-mk01")
    require("prototypes/updates/pyhightech-updates")
    -- table.insert(data.raw['assembling-machine']['crash-site-assembling-machine-1-repaired'].crafting_categories, 'vrauk-rendering')
end

if mods["pypetroleumhandling"] then
    require("prototypes/updates/pypetroleumhandling-updates")
end

TECHNOLOGY("logistic-science-pack"):add_prereq("biotech-mk01")

TECHNOLOGY("ralesia"):add_pack("py-science-pack-1")

--ADAPTATIONS

data.raw.boiler.boiler.energy_source.fuel_categories = {"chemical", "biomass"}

data.raw.item.fawogae = nil

-- table.insert(data.raw.character.character.mining_categories, "ore-bioreserve")

table.insert(data.raw.character.character.crafting_categories, "wpu-handcrafting")
table.insert(data.raw.character.character.crafting_categories, "research-handcrafting")

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient('py-fertilizer', 'fertilizer')
    r:replace_ingredient('organics', 'biomass')
    fun.results_replacer(r.name, 'organics', 'biomass')
    r:replace_ingredient('ralesia', 'ralesias')
    r:replace_ingredient('raw-fish', 'fish')
    r:replace_ingredient('xyhiphoe-blood', 'arthropod-blood')
end

----------------------------------------------------------------------------------------------------
-- MODULE LIMITATION SETUP
----------------------------------------------------------------------------------------------------
local module_categories = {}

for _, cat in pairs(data.raw['recipe-category']) do
    if cat.allowed_module_categories then
        for _, module_category in pairs(cat.allowed_module_categories) do
            module_categories[module_category] = true
        end
    end
end

for _, module in pairs(data.raw.module) do
    if module_categories[module.category] and not module.limitation then
        module.limitation = {}
    end

    if module.limitation then
        module.dict_limitation = table.array_to_dictionary(module.limitation, true)
    end
end

for _, recipe in pairs(data.raw.recipe) do
    local cat = data.raw['recipe-category'][recipe.category or 'crafting']

    -- log('Recipe: ' .. recipe.name .. ', category: ' .. (recipe.category or ''))
    if cat.allowed_module_categories then
        for _, module_category in pairs(cat.allowed_module_categories) do
            for _, module in pairs(data.raw.module) do
                if module.category == module_category then
                    module.dict_limitation[recipe.name] = true
                end
            end
        end
    end
end

for _, recipe in pairs(data.raw.recipe) do
    local cat = data.raw['recipe-category'][recipe.category or 'crafting']

    --log('Recipe: ' .. recipe.name .. ', category: ' .. (recipe.category or ''))
    if cat.allowed_module_categories then
        for _, module_category in pairs(cat.allowed_module_categories) do
            for _, module in pairs(data.raw.module) do
                if module.category ~= module_category then
                    if not module.dict_limitation or table.is_empty(module.dict_limitation) then
                        if module.limitation_blacklist == nil then
                            module.limitation_blacklist = {}
                        end
                        table.insert(module.limitation_blacklist, recipe.name)
                    else
                        module.dict_limitation[recipe.name] = nil
                    end
                end
            end
        end
    end
end

for _, module in pairs(data.raw.module) do
    if module.dict_limitation then
        module.limitation = table.keys(module.dict_limitation)
        module.dict_limitation = nil
    end
end
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

--remove steel barrel based milk
data.raw.item['milk-barrel'] = nil
--data.raw.recipe['fill-milk-barrel'] = nil
--data.raw.recipe['empty-milk-barrel'] = nil

--fun.global_item_replacer('fawogae', 'fawogae-mk01')

--RECIPES UPDATES

--Updating base milk barrel with icons. replacing base recipes with py copies to use the right barrel

RECIPE {
    type = 'recipe',
    name = 'fill-milk-barrel',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'empty-barrel-milk', amount = 1},
        {type = 'fluid', name = 'milk', amount = 50},
    },
    results = {
        {type = 'item', name = 'barrel-milk', amount = 1},
    },
}:remove_unlock("fluid-handling"):add_unlock("korlex")

RECIPE {
    type = 'recipe',
    name = 'empty-milk-barrel',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'barrel-milk', amount = 1},
    },
    results = {
        {type = 'item', name = 'empty-barrel-milk', amount = 1},
        {type = 'fluid', name = 'milk', amount = 50},
    },
    main_product = "milk",
    icon = '__pyalienlifegraphics__/graphics/icons/empty-barrel-milk-recipe.png',
    icon_size = 64,
}:remove_unlock("fluid-handling"):add_unlock("korlex")

--copy`s of combustion recipes with biomass
for _,recipe in pairs(data.raw.recipe) do
    --log('hit')
    if recipe.category == 'combustion' and string.match(recipe.name, 'biomass') == nil then
        --log('hit')
        local recipe_copy = table.deepcopy(recipe)
        local name = recipe_copy.name
        if recipe_copy.ingredients ~= nil then
            for i, ing in pairs(recipe_copy.ingredients) do
                --log('hit')
                if ing.name == 'coke' then
                    ing.name = 'biomass'
                    local locale
                    local type
                    local temp
                    for _, ingred in pairs(recipe.ingredients) do
                        if ingred.name ~= 'water' and ingred.name ~= 'coke' then
                            locale = ingred.name
                            type = ingred.type
                        end
                    end
                    --log(serpent.block(recipe.ingredients))
                    --log(locale)
                    for _, result in pairs(recipe.results) do
                        if result.name == "combustion-mixture1" then
                            temp = result.temperature
                        end
                    end
                    RECIPE {
                        type = "recipe",
                        name = name .. '-biomass',
                        category = "combustion",
                        enabled = false,
                        energy_required = 3,
                        ingredients = recipe_copy.ingredients,
                        results = recipe_copy.results,
                        icon = recipe_copy.icon,
                        icon_size = recipe_copy.icon_size,
                        --main_product = "combustion-mixture1",
                        subgroup = recipe_copy.subgroup,
                        order = recipe_copy.order,
                        localised_name = {"recipe-name.biomass-combustion", {type .. "-name." ..locale}, temp}
                    }
                    -- log(serpent.block(data.raw.recipe[name .. "-biomass"]))
                    --log('hit')
                    for _, tech in pairs(data.raw.technology) do
                        --log('hit')
                        --log(serpent.block(tech))
                        if tech.effects ~= nil then
                            for _, effect in pairs(tech.effects) do
                                --log('hit')
                                --log(serpent.block(effect))
                                --log(serpent.block(effect.type))
                                --log(serpent.block(effect.recipe))
                                --log(serpent.block(name))
                                if effect.type == 'unlock-recipe' and effect.recipe == name then
                                    --log('hit')
                                    RECIPE(name .. '-biomass'):add_unlock(tech.name)
                                    --log(serpent.block(data.raw.technology[tech.name]))
                                    break
                                end
                            end
                        end
                    end
                end
            end
        end
        --log(serpent.block(data.raw.recipe[name .. '-biomass']))
    end
end

--Tech upgrade stuff--
require('prototypes/upgrades/hidden-beacon')
require('prototypes/upgrades/tech-upgrades')

if data.data_crawler then
	  data.script_enabled = {
		-- {type = "entity", name = "crash-site-assembling-machine-1-repaired"},
		-- {type = "entity", name = "crash-site-lab-repaired"},
		{type = "entity", name = "tar-patch"},
        {type = "item", name = "earth-generic-sample"}
	  }
  end

  TECHNOLOGY('filtration-mk02'):remove_prereq('lithium-processing')

-- Override crashed building resistances since we won't have the means to repair them immediately
-- data.raw['assembling-machine']['crash-site-assembling-machine-1-repaired'].resistances = {{type = 'fire', percent = 100}}
-- data.raw['assembling-machine']['crash-site-lab-repaired'].resistances = {{type = 'fire', percent = 100}}

--RECIPES UPDATES

-- Add our next upgrades
local searchtypes = {
    'turret',
    'fluid-turret',
    'electric-turret',
    'ammo-turret',
    'accumulator',
    'burner-generator',
    'electric-energy-interface',
    'artillery-turret',
    'generator',
    'lab',
    'solar-panel',
    'pump',
    'lamp',
    'heat-interface',
    'gate',
    'boiler',
    'power-switch',
    'pipe-to-ground',
    'reactor',
    'storage-tank',
    'assembling-machine',
    'rocket-silo',
    'furnace',
    'simple-entity-with-owner',
    'linked-container',
    'wall',
    'simple-entity-with-force',
    'simple-entity',
    'inserter',
    'constant-combinator',
    'mining-drill',
    'train-stop',
    'underground-belt',
    'splitter',
    'loader',
    'loader-1x1',
    'linked-belt',
    'transport-belt',
    'decider-combinator',
    'arithmetic-combinator',
    'radar',
    'pipe',
    'container',
    'logistic-container',
    'infinity-container',
    'electric-pole',
    'roboport',
    'beacon',
    'offshore-pump',
    'heat-pipe'
}
local function next_tier(prototype_name, prototype_category)
    local tier_num = prototype_name:match("%-mk(%d%d)$")
    if tier_num then
        tier_num = tonumber(tier_num)
        if tier_num then
            tier_num = tier_num + 1
            tier_num = string.format("%02d", tier_num)
            return (prototype_category[prototype_name:gsub("%d%d$", tier_num)] or {}).name
        end
    end
end
for _, category in pairs(searchtypes) do
    local raw_cat = data.raw[category]
    if raw_cat then
        for name, prototype in pairs(raw_cat) do
            if not prototype.next_upgrade and prototype.minable then
                prototype.next_upgrade = next_tier(name, raw_cat)
                if prototype.next_upgrade then
                    --log(name .. ' -> ' .. prototype.next_upgrade)
                    if serpent.block(prototype.collision_box) ~= serpent.block(raw_cat[prototype.next_upgrade].collision_box) then
                        --log('Cancelled upgrade: ' .. name .. ' -> ' .. prototype.next_upgrade)
                        prototype.next_upgrade = nil
                    else
                        local next_proto = raw_cat[prototype.next_upgrade]
                        if not prototype.fast_replaceable_group or prototype.fast_replaceable_group ~= next_proto.fast_replaceable_group then
                            prototype.fast_replaceable_group = prototype.name:gsub("%-mk%d%d$", "")
                            next_proto.fast_replaceable_group = prototype.fast_replaceable_group
                        end
                    end
                end
            end
        end
    else
        --log('Category ' .. category .. ' is empty!')
    end
end
