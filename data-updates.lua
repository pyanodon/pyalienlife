require 'prototypes/updates/autoplace-fish'
require 'prototypes/updates/base-updates'
local collision_mask_util = require '__core__/lualib/collision-mask-util'

if mods['pycoalprocessing'] then
    require 'prototypes/updates/pycoalprocessing-updates'
end

if mods['pyindustry'] then
    require('prototypes/updates/pyindustry-updates')
end

if mods['pyfusionenergy'] then
    require 'prototypes/updates/pyfusionenergy-updates'
end

if mods['pyrawores'] then
    require 'prototypes/updates/pyrawores-updates'
end

if mods['pyhightech'] then
    require 'prototypes/technologies/kicalk'
    require 'prototypes/technologies/schrodinger-antelope'
    require 'prototypes/buildings/antelope-enclosure-mk01'
    require 'prototypes/updates/pyhightech-updates'
end

if mods['pypetroleumhandling'] then
    require 'prototypes/updates/pypetroleumhandling-updates'
end

TECHNOLOGY('ralesia'):add_pack('py-science-pack-1')

----------------------------------------------------------------------------------------------------
-- digosaurus recipes
----------------------------------------------------------------------------------------------------

Digosaurus = Digosaurus or {}
require '__pyalienlife__/scripts/digosaurus/digosaurus-prototypes'
for food, value in pairs(Digosaurus.favorite_foods) do
    RECIPE {
        type = 'recipe',
        name = 'digosaurus-helmod-recipe-' .. food,
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = food, amount = 1}
        },
        results = {
            {type = "item", name = 'nexelit-ore', amount = value}
        },
        category = 'dino-dig-site',
        hide_from_player_crafting = true
    }
end

----------------------------------------------------------------------------------------------------
-- crafting_categories
----------------------------------------------------------------------------------------------------

data.raw.item.fawogae = nil

for _, player_type in pairs{'character', 'god-controller'} do
    for _, player in pairs(data.raw[player_type]) do
        player.crafting_categories = player.crafting_categories or {}
        table.insert(player.crafting_categories, 'wpu-handcrafting')
        table.insert(player.crafting_categories, 'research-handcrafting')
        player.crafting_categories = table.dedupe(player.crafting_categories)
    end
end

----------------------------------------------------------------------------------------------------
-- farm_building_order
----------------------------------------------------------------------------------------------------

local farm_building_order = {
	['antelope-enclosure'] = 'c[animal]',
	['arqad-hive'] = 'c[animal]',
	['arthurian-pen'] = 'c[animal]',
	['auog-paddock'] = 'c[animal]',
	['cridren-enclosure'] = 'c[animal]',
	['dhilmos-pool'] = 'd[aquatic]',
	['dingrits-pack'] = 'c[animal]',
	['fish-farm'] = 'd[aquatic]',
	['kmauts-enclosure'] = 'c[animal]',
	['mukmoux-pasture'] = 'c[animal]',
	['phadai-enclosure'] = 'c[animal]',
	['phagnot-corral'] = 'c[animal]',
	['prandium-lab'] = 'c[animal]',
	['ez-ranch'] = 'c[animal]-zz[other]',
	['scrondrix-pen'] = 'c[animal]',
	['simik-den'] = 'c[animal]',
	['trits-reef'] = 'd[aquatic]',
	['ulric-corral'] = 'c[animal]',
	['vonix-den'] = 'c[animal]',
	['vrauks-paddock'] = 'c[animal]',
	['xenopen'] = 'c[animal]',
	['xyhiphoe-pool'] = 'd[aquatic]',
	['zipir-reef'] = 'd[aquatic]',
	['cadaveric-arum'] = 'a[plant]',
	['fwf'] = 'a[plant]-ab[other]',
	['grods-swamp'] = 'a[plant]',
	['guar-gum-plantation'] = 'a[plant]-aa[other]',
	['kicalk-plantation'] = 'a[plant]',
	['moondrop-greenhouse'] = 'a[plant]',
	['moss-farm'] = 'd[aquatic]-zy[other]',
	['ralesia-plantation'] = 'a[plant]',
	['rennea-plantation'] = 'a[plant]',
	['sap-extractor'] = 'a[plant]',
	['seaweed-crop'] = 'd[aquatic]-zx[other]',
	['sponge-culture'] = 'd[aquatic]-zz[other]',
	['tuuphra-plantation'] = 'a[plant]',
	['yotoi-aloe-orchard'] = 'a[plant]',
	['bhoddos-culture'] = 'b[fungi]',
	['fawogae-plantation'] = 'b[fungi]',
	['navens-culture'] = 'b[fungi]',
	['yaedols-culture'] = 'b[fungi]',
    ['zungror-lair'] = 'c[animal]',
    ['numal-reef'] = 'd[aquatic]'
}

for building, order in pairs(farm_building_order) do
    for _, name in pairs{building, building .. '-mk01', building .. '-mk02', building .. '-mk03', building .. '-mk04'} do
        if data.raw.item[name] then
            data.raw.item[name].order = order .. '-b[' .. building .. ']'
        end
        if data.raw.recipe[name] then
            data.raw.recipe[name].order = nil
        end
    end
end

for i, mount in pairs{'crawdad', 'dingrido', 'spidertron', 'phadaisus'} do
    local item = data.raw['item-with-entity-data'][mount]
    item.subgroup = 'py-alienlife-farm-buildings-mk0' .. i
    item.order = 'c[animal]-c[mount]-[' .. i .. ']'
end

RECIPE('tar-quenching'):remove_unlock('separation'):add_unlock('tar-processing')
RECIPE('concrete'):remove_unlock('separation'):add_unlock('concrete')
RECIPE('hazard-concrete'):remove_unlock('separation'):add_unlock('concrete')
RECIPE('quenching-tower'):remove_unlock('machines-mk01'):remove_unlock('separation'):add_unlock('tar-processing'):remove_ingredient('electronic-circuit')
RECIPE('lime'):remove_unlock('separation'):add_unlock('concrete')
RECIPE('sand-brick'):remove_unlock('concrete'):add_unlock('tar-processing')
RECIPE('ball-mill-mk01'):remove_unlock('crusher'):add_unlock('crusher-2')

----------------------------------------------------------------------------------------------------
-- PYAE updates
----------------------------------------------------------------------------------------------------

if mods['pyalternativeenergy'] then
    require '__pyalternativeenergy__/prototypes/updates/base-updates'
    if mods['pycoalprocessing'] then require '__pyalternativeenergy__/prototypes/updates/pycoalprocessing-updates' end
    if mods['pyalienlife'] then require '__pyalternativeenergy__/prototypes/updates/pyalienlife-updates' end
    if mods['pyfusionenergy'] then require '__pyalternativeenergy__/prototypes/updates/pyfusionenergy-updates' end
    if mods['pyhightech'] then require '__pyalternativeenergy__/prototypes/updates/pyhightech-updates' end
    if mods['pyrawores'] then require '__pyalternativeenergy__/prototypes/updates/pyrawores-updates' end
    if mods['pypetroleumhandling'] then require '__pyalternativeenergy__/prototypes/updates/pypetroleumhandling-updates' end
end

if mods.pystellarexpedition then
    require '__pystellarexpedition__.prototypes.updates.base-updates'
    require '__pystellarexpedition__.prototypes.updates.pyalternativeenergy-updates'
    require '__pystellarexpedition__.prototypes.updates.pyhightech-updates'
    require '__pystellarexpedition__.prototypes.updates.pyalienlife-updates'
end

----------------------------------------------------------------------------------------------------
-- TURD
----------------------------------------------------------------------------------------------------

require 'prototypes/upgrades/tech-upgrades'

----------------------------------------------------------------------------------------------------
-- replace_ingredient
----------------------------------------------------------------------------------------------------

for _, recipe in pairs(data.raw.recipe) do
    recipe:replace_ingredient('py-fertilizer', 'fertilizer')
    recipe:replace_ingredient('organics', 'biomass')
    recipe:replace_result('organics', 'biomass')
    recipe:replace_ingredient('ralesia', 'ralesias')
    recipe:replace_ingredient('raw-fish', 'fish')
end

----------------------------------------------------------------------------------------------------
-- MODULE LIMITATION SETUP
----------------------------------------------------------------------------------------------------

local function get_allowed_module_categories(recipe)
    local allowed_module_categories = recipe.allowed_module_categories
    if not allowed_module_categories then
        local cat = data.raw['recipe-category'][recipe.category or 'crafting']
        if cat and cat.allowed_module_categories then
            allowed_module_categories = cat.allowed_module_categories
        end
    end
    return allowed_module_categories or {}
end

local module_categories = {}

for _, type in pairs{'recipe-category', 'recipe'} do
    for _, cat in pairs(data.raw[type]) do
        if cat.allowed_module_categories then
            for _, module_category in pairs(cat.allowed_module_categories) do
                module_categories[module_category] = true
            end
        end
    end
end

for _, module in pairs(data.raw.module) do
    if module_categories[module.category] and not module.limitation then
        module.limitation = {}
    end

    if module.limitation then
        module.dict_limitation = table.invert(module.limitation)
    end
end

for _, recipe in pairs(data.raw.recipe) do
    for _, module_category in pairs(get_allowed_module_categories(recipe)) do
        for _, module in pairs(data.raw.module) do
            if module.category == module_category then
                module.dict_limitation[recipe.name] = true
            end
        end
    end
end

for _, recipe in pairs(data.raw.recipe) do
    for _, module_category in pairs(get_allowed_module_categories(recipe)) do
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

for _, module in pairs(data.raw.module) do
    if module.dict_limitation then
        module.limitation = table.keys(module.dict_limitation)
        module.dict_limitation = nil
    end
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

--data.raw.module['sap-tree'].limitation_blacklist = sap1_limits
data.raw.module['sap-tree'].limitation = {'sap-01', 'nano-cellulose-sap'}

--data.raw.module['sap-tree-mk02'].limitation_blacklist = sap2_limits
data.raw.module['sap-tree-mk02'].limitation = {'sap-01', 'sap-mk02', 'nano-cellulose-sap'}

--data.raw.module['sap-tree-mk03'].limitation_blacklist = sap3_limits
data.raw.module['sap-tree-mk03'].limitation = {'sap-01', 'sap-mk02', 'sap-mk03', 'nano-cellulose-sap'}

--data.raw.module['sap-tree-mk04'].limitation_blacklist = sap4_limits
data.raw.module['sap-tree-mk04'].limitation = {'sap-01', 'sap-mk02', 'sap-mk03', 'sap-mk04', 'nano-cellulose-sap'}

--remove steel barrel based milk
data.raw.item['milk-barrel'] = nil
RECIPE("milk-barrel"):remove_unlock("fluid-handling")
data.raw.recipe['milk-barrel'] = nil

--RECIPES UPDATES

--Updating base milk barrel with icons. replacing base recipes with py copies to use the right barrel

RECIPE {
    type = 'recipe',
    name = 'fill-milk-barrel',
    category = 'py-barreling',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'empty-barrel-milk', amount = 1},
        {type = 'fluid', name = 'milk', amount = 50},
    },
    results = {
        {type = 'item', name = 'barrel-milk', amount = 1},
    },
}:remove_unlock('fluid-handling'):add_unlock('korlex')

RECIPE {
    type = 'recipe',
    name = 'empty-milk-barrel',
    category = 'py-unbarreling',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'barrel-milk', amount = 1},
    },
    results = {
        {type = 'item', name = 'empty-barrel-milk', amount = 1},
        {type = 'fluid', name = 'milk', amount = 50},
    },
    main_product = 'milk',
    icon = '__pyalienlifegraphics__/graphics/icons/empty-barrel-milk-recipe.png',
    icon_size = 64,
}:remove_unlock('fluid-handling'):add_unlock('korlex')

--copy`s of combustion recipes with biomass
for _,recipe in pairs(data.raw.recipe) do
    if recipe.category == 'combustion' and string.match(recipe.name, 'biomass') == nil then
        local recipe_copy = table.deepcopy(recipe)
        local name = recipe_copy.name
        if recipe_copy.ingredients ~= nil then
            for i, ing in pairs(recipe_copy.ingredients) do
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
                    for _, result in pairs(recipe.results) do
                        if result.name == 'combustion-mixture1' then
                            temp = result.temperature
                        end
                    end
                    RECIPE {
                        type = 'recipe',
                        name = name .. '-biomass',
                        category = 'combustion',
                        enabled = false,
                        energy_required = 3,
                        ingredients = recipe_copy.ingredients,
                        results = recipe_copy.results,
                        icon = recipe_copy.icon,
                        icon_size = recipe_copy.icon_size,
                        subgroup = recipe_copy.subgroup,
                        order = recipe_copy.order,
                        localised_name = {'recipe-name.biomass-combustion', {type .. '-name.' ..locale}, tostring(temp)}
                    }
                    for _, tech in pairs(data.raw.technology) do
                        if tech.effects ~= nil then
                            for _, effect in pairs(tech.effects) do
                                if effect.type == 'unlock-recipe' and effect.recipe == name then
                                    RECIPE(name .. '-biomass'):add_unlock(tech.name)
                                    break
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

if data.data_crawler then
	  data.script_enabled = {
		{type = 'entity', name = 'tar-patch'},
        {type = 'item', name = 'earth-generic-sample'}
	  }
  end

TECHNOLOGY('filtration-mk02'):remove_prereq('lithium-processing')

local walkable_types = {
    ['tree'] = true,
    ['simple-entity'] = true,
    ['pipe'] = true,
    ['pipe-to-ground'] = true,
    ['electric-pole'] = true,
    ['inserter'] = true
}

local vessel_placeable_entities = {
    ['pipe'] = true,
    ['pipe-to-ground'] = true,
    ['inserter'] = true
}

collision_mask_util.collect_prototypes_with_layer = function(layer)
    local prototype_list = {}
    for type, default_mask in pairs (default_masks) do
      for name, entity in pairs (data.raw[type] or {}) do
        local entity_mask = entity.collision_mask or default_mask
        if entity_mask.layers[layer] then
          table.insert(prototype_list, entity)
        end
      end
    end
    return prototype_list
  end

for _, tile in pairs(data.raw.tile) do
    tile.collision_mask = collision_mask_util.get_mask(tile)
    if tile.collision_mask.layers.water_tile then
        tile.collision_mask.layers[caravan_collision_mask] = true
        if not mods.pystellarexpedition then tile.collision_mask.layers[vessel_collision_mask] = true end
        tile.collision_mask.layers[dingrido_collision_mask] = true
    end
end

if register_cache_file ~= nil then
    register_cache_file({'pycoalprocessing','pyfusionenergy','pyindustry','pyrawores','pypetroleumhandling','pyalienlife'}, '__pyalienlife__/cached-configs/pyalienlife+pycoalprocessing+pyfusionenergy+pyindustry+pypetroleumhandling+pyrawores')
    register_cache_file({'pycoalprocessing','pyfusionenergy','pyindustry','pyrawores','pyhightech','pypetroleumhandling','pyalienlife'}, '__pyalienlife__/cached-configs/pyalienlife+pycoalprocessing+pyfusionenergy+pyhightech+pyindustry+pypetroleumhandling+pyrawores')
end

-- make players flammable
for _, character in pairs(data.raw.character) do
    if character.flags then
        local new_flags = {}
        for _, flag in pairs(character.flags) do
            if flag ~= 'not-flammable' then
                table.insert(new_flags, flag)
            end
        end
        character.flags = new_flags
    end
end

-- dingrido collision mask
local dingrido_nonwalkable_prototypes = {
    'unit-spawner',
    'tree',
    'simple-entity',
    'cliff',
    'unit',
}
for _, prototype in pairs(dingrido_nonwalkable_prototypes) do
    for _, entity in pairs(data.raw[prototype]) do
        entity.collision_mask = collision_mask_util.get_mask(entity)

        if entity.collision_mask.layers['player-layer'] and not entity.collision_mask.layers['floor-layer'] then
            collision_mask_util.add_layer(entity.collision_mask, dingrido_collision_mask)
        end
    end
end