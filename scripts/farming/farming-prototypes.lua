---@diagnostic disable: unnecessary-assert, undefined-field, assign-type-mismatch
---@type table<string,AlienlifeFarmPrototype>
local farm_buildings = py.mod_data.farm_buildings

farm_buildings = {
    ["antelope-enclosure"] = {default_module = "antelope", domain = "animal"},
    ["arqad-hive"] = {default_module = "arqad", domain = "animal"},
    ["arthurian-pen"] = {default_module = "arthurian", domain = "animal"},
    ["auog-paddock"] = {default_module = "auog", domain = "animal"},
    ["cridren-enclosure"] = {default_module = "cridren", domain = "plant"},
    ["dhilmos-pool"] = {default_module = "dhilmos", domain = "animal"},
    ["dingrits-pack"] = {default_module = "dingrits", domain = "animal"},
    ["fish-farm"] = {default_module = "fish", domain = "animal"},
    ["fish-farm-turd"] = {default_module = "fish", domain = "animal"},
    ["kmauts-enclosure"] = {default_module = "kmauts", domain = "animal"},
    ["mukmoux-pasture"] = {default_module = "mukmoux", domain = "animal"},
    ["phadai-enclosure"] = {default_module = "phadai", domain = "animal"},
    ["phagnot-corral"] = {default_module = "phagnot", domain = "animal"},
    ["prandium-lab"] = {default_module = "cottongut-mk01", domain = "animal"},
    ["ez-ranch"] = {default_module = "korlex", domain = "animal"},
    ["rc"] = {default_module = nil, domain = "animal"},
    ["scrondrix-pen"] = {default_module = "scrondrix", domain = "animal"},
    ["simik-den"] = {default_module = "simik", domain = "animal"},
    ["trits-reef"] = {default_module = "trits", domain = "animal"},
    ["ulric-corral"] = {default_module = "ulric", domain = "animal"},
    ["vonix-den"] = {default_module = "vonix", domain = "animal"},
    ["vrauks-paddock"] = {default_module = "vrauks", domain = "animal"},
    ["xenopen"] = {default_module = "xeno", domain = "animal"},
    ["xyhiphoe-pool"] = {default_module = "xyhiphoe", domain = "animal"},
    ["zipir-reef"] = {default_module = "zipir1", domain = "animal"},
    ["cadaveric-arum"] = {default_module = "cadaveric-arum", domain = "plant"},
    ["fwf"] = {default_module = "tree-mk01", domain = "plant"},
    ["grods-swamp"] = {default_module = "grod", domain = "plant"},
    ["guar-gum-plantation"] = {default_module = "guar", domain = "plant"},
    ["kicalk-plantation"] = {default_module = "kicalk", domain = "plant"},
    ["moondrop-greenhouse"] = {default_module = "moondrop", domain = "plant"},
    ["moss-farm"] = {default_module = "moss", domain = "plant"},
    ["ralesia-plantation"] = {default_module = "ralesia", domain = "plant"},
    ["rennea-plantation"] = {default_module = "rennea", domain = "plant"},
    ["sap-extractor"] = {default_module = "sap-tree", domain = "plant"},
    ["seaweed-crop"] = {default_module = "seaweed", domain = "plant"},
    ["sponge-culture"] = {default_module = "sea-sponge", domain = "plant"},
    ["wpu-turd"] = {default_module = "py-sawblade-module-mk01", domain = "plant"},
    ["tuuphra-plantation"] = {default_module = "tuuphra", domain = "plant"},
    ["yotoi-aloe-orchard"] = {default_module = "yotoi", domain = "plant"},
    ["bhoddos-culture"] = {default_module = "bhoddos", domain = "fungi"},
    ["fawogae-plantation"] = {default_module = "fawogae", domain = "fungi"},
    ["navens-culture"] = {default_module = "navens", domain = "fungi"},
    ["yaedols-culture"] = {default_module = "yaedols", domain = "fungi"},
}

local modules = prototypes.get_item_filtered {{filter = "type", type = "module"}}
---@as table<string, table<string, boolean>> two level table containing buildings indexed by their base (mk-less) name
local checked = {}
local crafting_machines = prototypes.get_entity_filtered {{filter = "crafting-machine"}}
-- This early search and sort lets us avoid o^n searching below
for building_name in pairs(crafting_machines) do
    -- TODO: Find a method that avoids two searches?
    local is_turd = not not building_name:find("%-turd")
    -- keep suffix if necessary while allowing other building suffixes
    local basename = building_name:gsub("%-mk..+", is_turd and "-turd" or "")
    if farm_buildings[basename] then
        checked[basename] = true
    end
end

local assert = function(value, error, param1, param2, param3, param4)
    _G.assert (value, error:format(param1, param2, param3, param4))
end

-- Assigns nil or errors depending on `throw`
for entity_name, farm_prototype in pairs(farm_buildings) do
    -- No buildings with this base name
    assert(
        checked[entity_name],
        "ERROR: pY mod data [farm-buildings] entity [%s] has no associated crafting machines",
        entity_name
    )
    if farm_prototype.default_module then
      assert(
          modules[farm_prototype.default_module],
          "ERROR: pY mod data [farm-buildings] entity [%s] has invalid default module [%s]",
          entity_name, farm_prototype.default_module
      )
    end
    -- Unspecified or invalid domain
    local domain = farm_prototype.domain
    assert (
        domain and (domain == "animal" or domain == "plant" or domain == "fungi"),
        "ERROR: pY mod data [farm-buildings] entity [%s] has invalid domain [%s]. Expected 'animal', 'plant', or 'fungi'",
        entity_name, domain or "nil"
    )
    -- Wow, so valid
    ::next_farm_prototype::
end

return farm_buildings