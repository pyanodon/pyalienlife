require "prototypes/items/biomass-composting"
require "prototypes/updates/autoplace-fish"
require "prototypes/updates/base-updates"
local collision_mask_util = require "__core__/lualib/collision-mask-util"

if mods["pycoalprocessing"] then
    require "prototypes/updates/pycoalprocessing-updates"
end

if mods["pyindustry"] then
    require("prototypes/updates/pyindustry-updates")
end

if mods["pyfusionenergy"] then
    require "prototypes/updates/pyfusionenergy-updates"
end

if mods["pyrawores"] then
    require "prototypes/updates/pyrawores-updates"
end

if mods["pyhightech"] then
    require "prototypes/technologies/kicalk"
    require "prototypes/technologies/schrodinger-antelope"
    require "prototypes/buildings/antelope-enclosure-mk01"
    require "prototypes/updates/pyhightech-updates"
end

if mods["pypetroleumhandling"] then
    require "prototypes/updates/pypetroleumhandling-updates"
end

TECHNOLOGY("ralesia"):add_pack("py-science-pack-1")

----------------------------------------------------------------------------------------------------
-- digosaurus recipes
----------------------------------------------------------------------------------------------------

Digosaurus = Digosaurus or {}
require "__pyalienlife__/scripts/digosaurus/digosaurus-prototypes"
for food, value in pairs(Digosaurus.favorite_foods) do
    RECIPE {
        type = "recipe",
        name = "digosaurus-helmod-recipe-" .. food,
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = food, amount = 1}
        },
        results = {
            {type = "item", name = "nexelit-ore", amount = value}
        },
        category = "dino-dig-site",
        hide_from_player_crafting = true
    }
end

----------------------------------------------------------------------------------------------------
-- crafting_categories
----------------------------------------------------------------------------------------------------

data.raw.item.fawogae = nil

for _, player_type in pairs {"character", "god-controller"} do
    for _, player in pairs(data.raw[player_type]) do
        player.crafting_categories = player.crafting_categories or {}
        table.insert(player.crafting_categories, "wpu-handcrafting")
        table.insert(player.crafting_categories, "research-handcrafting")
        player.crafting_categories = table.dedupe(player.crafting_categories)
    end
end

----------------------------------------------------------------------------------------------------
-- farm_building_order
----------------------------------------------------------------------------------------------------

local farm_building_order = {
    ["antelope-enclosure"] = "c[animal]",
    ["arqad-hive"] = "c[animal]",
    ["arthurian-pen"] = "c[animal]",
    ["auog-paddock"] = "c[animal]",
    ["cridren-enclosure"] = "c[animal]",
    ["dhilmos-pool"] = "d[aquatic]",
    ["dingrits-pack"] = "c[animal]",
    ["fish-farm"] = "d[aquatic]",
    ["kmauts-enclosure"] = "c[animal]",
    ["mukmoux-pasture"] = "c[animal]",
    ["phadai-enclosure"] = "c[animal]",
    ["phagnot-corral"] = "c[animal]",
    ["prandium-lab"] = "c[animal]",
    ["ez-ranch"] = "c[animal]-zz[other]",
    ["scrondrix-pen"] = "c[animal]",
    ["simik-den"] = "c[animal]",
    ["trits-reef"] = "d[aquatic]",
    ["ulric-corral"] = "c[animal]",
    ["vonix-den"] = "c[animal]",
    ["vrauks-paddock"] = "c[animal]",
    ["xenopen"] = "c[animal]",
    ["xyhiphoe-pool"] = "d[aquatic]",
    ["zipir-reef"] = "d[aquatic]",
    ["cadaveric-arum"] = "a[plant]",
    ["fwf"] = "a[plant]-ab[other]",
    ["grods-swamp"] = "a[plant]",
    ["guar-gum-plantation"] = "a[plant]-aa[other]",
    ["kicalk-plantation"] = "a[plant]",
    ["moondrop-greenhouse"] = "a[plant]",
    ["moss-farm"] = "d[aquatic]-zy[other]",
    ["ralesia-plantation"] = "a[plant]",
    ["rennea-plantation"] = "a[plant]",
    ["sap-extractor"] = "a[plant]",
    ["seaweed-crop"] = "d[aquatic]-zx[other]",
    ["sponge-culture"] = "d[aquatic]-zz[other]",
    ["tuuphra-plantation"] = "a[plant]",
    ["yotoi-aloe-orchard"] = "a[plant]",
    ["bhoddos-culture"] = "b[fungi]",
    ["fawogae-plantation"] = "b[fungi]",
    ["navens-culture"] = "b[fungi]",
    ["yaedols-culture"] = "b[fungi]",
    ["zungror-lair"] = "c[animal]",
    ["numal-reef"] = "d[aquatic]"
}

for building, order in pairs(farm_building_order) do
    for _, name in pairs {building, building .. "-mk01", building .. "-mk02", building .. "-mk03", building .. "-mk04"} do
        if data.raw.item[name] then
            data.raw.item[name].order = order .. "-b[" .. building .. "]"
        end
        if data.raw.recipe[name] then
            data.raw.recipe[name].order = nil
        end
    end
end

for i, mount in pairs {"crawdad", "dingrido", "spidertron", "phadaisus"} do
    local item = data.raw["item-with-entity-data"][mount]
    item.subgroup = "py-alienlife-farm-buildings-mk0" .. i
    item.order = "c[animal]-c[mount]-[" .. i .. "]"
end

RECIPE("tar-quenching"):remove_unlock("separation"):add_unlock("tar-processing")
RECIPE("concrete"):remove_unlock("separation"):add_unlock("concrete")
RECIPE("hazard-concrete"):remove_unlock("separation"):add_unlock("concrete")
RECIPE("quenching-tower"):remove_unlock("machines-mk01"):remove_unlock("separation"):add_unlock("tar-processing"):remove_ingredient("electronic-circuit")
RECIPE("lime"):remove_unlock("separation"):add_unlock("concrete")
RECIPE("sand-brick"):remove_unlock("concrete"):add_unlock("tar-processing")
RECIPE("ball-mill-mk01"):remove_unlock("crusher"):add_unlock("crusher-2")

----------------------------------------------------------------------------------------------------
-- PYAE updates
----------------------------------------------------------------------------------------------------

if mods["pyalternativeenergy"] then
    require "__pyalternativeenergy__/prototypes/updates/base-updates"
    if mods["pycoalprocessing"] then require "__pyalternativeenergy__/prototypes/updates/pycoalprocessing-updates" end
    if mods["pyalienlife"] then require "__pyalternativeenergy__/prototypes/updates/pyalienlife-updates" end
    if mods["pyfusionenergy"] then require "__pyalternativeenergy__/prototypes/updates/pyfusionenergy-updates" end
    if mods["pyhightech"] then require "__pyalternativeenergy__/prototypes/updates/pyhightech-updates" end
    if mods["pyrawores"] then require "__pyalternativeenergy__/prototypes/updates/pyrawores-updates" end
    if mods["pypetroleumhandling"] then require "__pyalternativeenergy__/prototypes/updates/pypetroleumhandling-updates" end
end

if mods.pystellarexpedition then
    require "__pystellarexpedition__.prototypes.updates.base-updates"
    require "__pystellarexpedition__.prototypes.updates.space-age-updates"
    require "__pystellarexpedition__.prototypes.updates.maraxsis-updates"
    require "__pystellarexpedition__.prototypes.updates.pycoalprocessing-updates"
    require "__pystellarexpedition__.prototypes.updates.pyrawores-updates"
    require "__pystellarexpedition__.prototypes.updates.pypetroleumhandling-updates"
    require "__pystellarexpedition__.prototypes.updates.pyalternativeenergy-updates"
    require "__pystellarexpedition__.prototypes.updates.pyhightech-updates"
    require "__pystellarexpedition__.prototypes.updates.pyalienlife-updates"
end

----------------------------------------------------------------------------------------------------
-- TURD
----------------------------------------------------------------------------------------------------

require "prototypes/turd"
require "prototypes/buildings/hidden-beacon"

----------------------------------------------------------------------------------------------------
-- replace_ingredient
----------------------------------------------------------------------------------------------------

for _, recipe in pairs(data.raw.recipe) do
    recipe:replace_ingredient("organics", "biomass")
    recipe:replace_result("organics", "biomass")
    recipe:replace_ingredient("raw-fish", "fish")
end
data.raw.item["organics"] = nil

----------------------------------------------------------------------------------------------------
-- MODULE LIMITATION SETUP
----------------------------------------------------------------------------------------------------

require "prototypes.module-restrictions"

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

--Fix up the milk barrel recipes with new ingredients and icons
RECIPE("milk-barrel"):remove_unlock("fluid-handling"):add_unlock("korlex"):replace_ingredient("barrel", "empty-barrel-milk"):set_fields {results = {{type = "item", name = "barrel-milk", amount = 1}}}
RECIPE("milk-barrel").icons = {{icon = "__pyalienlifegraphics__/graphics/icons/barrel-milk.png", icon_size = 64}}
RECIPE("empty-milk-barrel"):remove_unlock("fluid-handling"):add_unlock("korlex"):replace_ingredient("milk-barrel", "barrel-milk"):set_fields {results = {{type = "item", name = "empty-barrel-milk", amount = 1}, {type = "fluid", name = "milk", amount = 50}}}
RECIPE("empty-milk-barrel").icons = {{icon = "__pyalienlifegraphics__/graphics/icons/empty-barrel-milk-recipe.png", icon_size = 64}}


--copy`s of combustion recipes with biomass
for _, recipe in pairs(data.raw.recipe) do
    if recipe.category == "combustion" and string.match(recipe.name, "biomass") == nil then
        local recipe_copy = table.deepcopy(recipe)
        local name = recipe_copy.name
        if recipe_copy.ingredients ~= nil then
            for i, ing in pairs(recipe_copy.ingredients) do
                if ing.name == "coke" then
                    ing.name = "biomass"
                    local locale
                    local type
                    local temp
                    for _, ingred in pairs(recipe.ingredients) do
                        if ingred.name ~= "water" and ingred.name ~= "coke" then
                            locale = ingred.name
                            type = ingred.type
                        end
                    end
                    for _, result in pairs(recipe.results) do
                        if result.name == "combustion-mixture1" then
                            temp = result.temperature
                        end
                    end
                    RECIPE {
                        type = "recipe",
                        name = name .. "-biomass",
                        category = "combustion",
                        enabled = false,
                        energy_required = 3,
                        ingredients = recipe_copy.ingredients,
                        results = recipe_copy.results,
                        icon = recipe_copy.icon,
                        icon_size = recipe_copy.icon_size,
                        subgroup = recipe_copy.subgroup,
                        order = recipe_copy.order,
                        localised_name = {"recipe-name.biomass-combustion", {type .. "-name." .. locale}, tostring(temp)}
                    }
                    for _, tech in pairs(data.raw.technology) do
                        if tech.effects ~= nil then
                            for _, effect in pairs(tech.effects) do
                                if effect.type == "unlock-recipe" and effect.recipe == name then
                                    RECIPE(name .. "-biomass"):add_unlock(tech.name)
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
    data.script_enabled = data.script_enabled or {}
    table.insert(data.script_enabled, {type = "entity", name = "tar-patch"})
    table.insert(data.script_enabled, {type = "entity", name = "earth-generic-sample"})
end

TECHNOLOGY("filtration-mk02"):remove_prereq("lithium-processing")

local caravan_walkable_types = {
    ["tree"] = true,
    ["simple-entity"] = true,
    ["pipe"] = true,
    ["pipe-to-ground"] = true,
    ["electric-pole"] = true,
    ["inserter"] = true
}

for _, prototype in pairs(collision_mask_util.collect_prototypes_with_layer("object")) do
    local mask = collision_mask_util.get_mask(prototype)
    if mask.layers["water_tile"] then
        if not caravan_walkable_types[prototype.type] then
            if not mask.layers["floor"] and mask.layers["player"] then
                mask.layers["caravan_collision_mask"] = true
            end
        end
    end
    prototype.collision_mask = mask
end

for _, tile in pairs(data.raw.tile) do
    tile.collision_mask = collision_mask_util.get_mask(tile)
    if tile.collision_mask.layers.water_tile then
        tile.collision_mask.layers.caravan_collision_mask = true
        tile.collision_mask.layers.dingrido_collision_mask = true
    end
end

-- make players flammable
for _, character in pairs(data.raw.character) do
    if character.flags then
        local new_flags = {}
        for _, flag in pairs(character.flags) do
            if flag ~= "not-flammable" then
                table.insert(new_flags, flag)
            end
        end
        character.flags = new_flags
    end
end

-- dingrido collision mask
local dingrido_nonwalkable_prototypes = {
    "unit-spawner",
    "tree",
    "simple-entity",
    "cliff",
    "unit",
    "turret", -- this exists in order to allow killing worms
}
for _, prototype in pairs(dingrido_nonwalkable_prototypes) do
    for _, entity in pairs(data.raw[prototype]) do
        entity.collision_mask = collision_mask_util.get_mask(entity)

        if entity.collision_mask.layers.player and not entity.collision_mask.layers.floor then
            entity.collision_mask.layers.dingrido_collision_mask = true
        end
    end
end

if register_cache_file ~= nil then
    register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pyrawores", "pypetroleumhandling", "pyalienlife"}, "__pyalienlife__/cached-configs/pyalienlife+pycoalprocessing+pyfusionenergy+pyindustry+pypetroleumhandling+pyrawores")
    register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pyrawores", "pyhightech", "pypetroleumhandling", "pyalienlife"}, "__pyalienlife__/cached-configs/pyalienlife+pycoalprocessing+pyfusionenergy+pyhightech+pyindustry+pypetroleumhandling+pyrawores")
end

if mods["dependency-graph-lib"] then
    data.raw.item["iron-chest"].autotech_startup = true
end
