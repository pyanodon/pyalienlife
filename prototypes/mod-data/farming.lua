---@diagnostic disable-next-line: assign-type-mismatch
---@type pyModData
local mod_data = data.raw["mod-data"].pyanodons.data

-- note, farm building does not need to include -mk0x or -turd, they are filtered out manually (may change in the future)

---@class (partial) pyModData
---@field farm_buildings table<string,AlienlifeFarmPrototype>

---@class AlienlifeFarmPrototype
---@field default_module? data.ModuleName
---@field domain "plant"|"animal"|"fungi"

mod_data.farm_buildings = {
    ["arqad-hive"] = {default_module = "arqad", domain = "animal"},
    ["arthurian-pen"] = {default_module = "arthurian", domain = "animal"},
    ["auog-paddock"] = {default_module = "auog", domain = "animal"},
    ["cridren-enclosure"] = {default_module = "cridren", domain = "plant"},
    ["dhilmos-pool"] = {default_module = "dhilmos", domain = "animal"},
    ["dingrits-pack"] = {default_module = "dingrits", domain = "animal"},
    ["fish-farm"] = {default_module = "fish", domain = "animal"},
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
    ["fwf"] = {default_module = "tree-mk01", domain = "plant"},
    ["grods-swamp"] = {default_module = "grod", domain = "plant"},
    ["guar-gum-plantation"] = {default_module = "guar", domain = "plant"},
    ["moss-farm"] = {default_module = "moss", domain = "plant"},
    ["ralesia-plantation"] = {default_module = "ralesia", domain = "plant"},
    ["rennea-plantation"] = {default_module = "rennea", domain = "plant"},
    ["sap-extractor"] = {default_module = "sap-tree", domain = "plant"},
    ["seaweed-crop"] = {default_module = "seaweed", domain = "plant"},
    ["sponge-culture"] = {default_module = "sea-sponge", domain = "plant"},
    ["tuuphra-plantation"] = {default_module = "tuuphra", domain = "plant"},
    ["yotoi-aloe-orchard"] = {default_module = "yotoi", domain = "plant"},
    ["bhoddos-culture"] = {default_module = "bhoddos", domain = "fungi"},
    ["fawogae-plantation"] = {default_module = "fawogae", domain = "fungi"},
    ["navens-culture"] = {default_module = "navens", domain = "fungi"},
    ["yaedols-culture"] = {default_module = "yaedols", domain = "fungi"},
}

if helpers.stage == "prototype" then
    py.yafc_integrations.pyalienlife_farming = function()
        py.log.debug("Fix animal module dependencies")
        -- Needed to make the milestones work properly and lock normal production after the bootstrapping recipe

        local mod_buildings = {
            -- {required_module, locked_building}
            {"antelope",       "antelope-enclosure-mk01"},
            {"arqad",          "arqad-hive-mk01"},
            {"auog",           "auog-paddock-mk01"},
            {"cridren",        "cridren-enclosure-mk01"},
            {"arthurian",      "arthurian-pen-mk01"},
            {"bhoddos",        "bhoddos-culture-mk01"},
            {"cadaveric-arum", "cadaveric-arum-mk01"},
            {"cottongut-mk01", "prandium-lab-mk01"},
            {"dingrits",       "dingrits-pack-mk01"},
            {"dhilmos",        "dhilmos-pool-mk01"},
            {"fish",           "fish-farm-mk01"},
            {"grod",           "grods-swamp-mk01"},
            {"guar",           "guar-gum-plantation"},
            {"kicalk",         "kicalk-plantation-mk01"},
            {"kmauts",         "kmauts-enclosure-mk01"},
            {"korlex",         "ez-ranch-mk01"},
            {"fawogae",        "fawogae-plantation-mk01"},
            {"moondrop",       "moondrop-greenhouse-mk01"},
            {"moss",           "moss-farm-mk01"},
            {"mukmoux",        "mukmoux-pasture-mk01"},
            {"sap-tree",       "sap-extractor-mk01"},
            {"navens",         "navens-culture-mk01"},
            {"phagnot",        "phagnot-corral-mk01"},
            {"phadai",         "phadai-enclosure-mk01"},
            {"ralesia",        "ralesia-plantation-mk01"},
            {"rennea",         "rennea-plantation-mk01"},
            {"seaweed",        "seaweed-crop-mk01"},
            {"sea-sponge",     "sponge-culture-mk01"},
            {"scrondrix",      "scrondrix-pen-mk01"},
            {"tuuphra",        "tuuphra-plantation-mk01"},
            {"tree-mk01",      "fwf-mk01"},
            {"trits",          "trits-reef-mk01"},
            {"ulric",          "ulric-corral-mk01"},
            {"vonix",          "vonix-den-mk01"},
            {"vrauks",         "vrauks-paddock-mk01"},
            {"xyhiphoe",       "xyhiphoe-pool-mk01"},
            {"xeno",           "xenopen-mk01"},
            {"simik",          "simik-den-mk01"},
            {"yotoi",          "yotoi-aloe-orchard-mk01"},
            {"yaedols",        "yaedols-culture-mk01"},
            {"zipir1",         "zipir-reef-mk01"}
        }

        if mods["pyalternativeenergy"] then
            mod_buildings[#mod_buildings + 1] = {"zungror", "zungror-lair-mk01"}
            mod_buildings[#mod_buildings + 1] = {"numal", "numal-reef-mk01"}
        end

        if mods["pystellarexpedition"] then
            mod_buildings[#mod_buildings + 1] = {"kakkalakki-m", "kakkalakki-habitat-mk01"}
        end

        for _, x in ipairs(mod_buildings) do
            table.insert(RECIPE(x[2]).ingredients, {type = "item", name = x[1], amount = 1})
        end
    end
end
