---@diagnostic disable: unnecessary-assert, undefined-field, assign-type-mismatch
---@type table<string,AlienlifeFarmPrototype>
local farm_buildings = py.mod_data.farm_buildings

local assert = function(value, str, param1, param2, param3, param4)
    if value then return end
    error (str:format(param1, param2, param3, param4), 0)
end

local type_assert = function(value, vtype, error, param1, param2, param3, param4)
    assert (value and type(value) == vtype, (error .. " Expected " .. vtype .. ", found " .. type(value) .. "."):format(param1, param2, param3, param4))
end

type_assert (
    farm_buildings,
    "table",
    "ERROR: pY mod data [farm_buildings] not found."
)

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

-- Assigns nil or errors depending on `throw`
for entity_name, farm_prototype in pairs(farm_buildings) do
    -- No buildings with this base name
    assert (
        checked[entity_name],
        "ERROR: pY mod data [farm-buildings] entity [%s] has no associated crafting machines",
        entity_name
    )
    if farm_prototype.default_module then
      assert (
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

Farming.farm_prototypes = farm_buildings