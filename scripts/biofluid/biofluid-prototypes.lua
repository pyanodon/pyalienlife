local mod_data = py.mod_data --[[@as pyModData]]

---@namespace PyAlienLife

---@class (partial) Biofluid
---@field food table<string, uint>
---@field type BiofluidType
---@field connectables table<string, BiofluidType>
---@field biorobots table<string, BiorobotPrototype>
---@field status BiofluidStatus
---@field status_icons BiofluidStatusIcons
---@field diode_colors BiofluidDiodeColors
---@field equality_operators {[1]: "=", [2]: ">", [3]: "≥", [4]: "<", [5]: "≤", [6]: "≠"}
---@field tank_size 100000
---@field max_request_size 100000
---@field fuel_size uint
---@field module_size uint

Biofluid = Biofluid or {} --[[@as Biofluid]]

---@enum BiofluidType
Biofluid.type = {
    pipe = 1,
    roboport = 2,
    provider = 3,
    requester = 4
}

---@enum BiofluidStatus
Biofluid.status = {
    ["entity-status.no-food"] = "utility/status_not_working",
    ["entity-status.no-creature"] = "utility/status_not_working",
    ["entity-status.no-biofluid-network"] = "utility/status_yellow",
    ["entity-status.full-output"] = "utility/status_yellow",
    ["entity-status.working"] = "utility/status_working"
}

---@enum BiofluidStatusIcons
Biofluid.status_icons = {
    ["entity-status.no-food"] = "utility.fuel_icon",
    ["entity-status.no-creature"] = "no_module_animal",
    ["entity-status.no-biofluid-network"] = "utility.too_far_from_roboport_icon",
    ["entity-status.full-output"] = "utility.warning_icon"
}

---@enum BiofluidDiodeColors
Biofluid.diode_colors = {
    ["utility/status_not_working"] = defines.entity_status_diode.red,
    ["utility/status_yellow"] = defines.entity_status_diode.yellow,
    ["utility/status_working"] = defines.entity_status_diode.green
}

Biofluid.equality_operators = {"=", ">", "≥", "<", "≤", "≠"}

Biofluid.tank_size = 100000
Biofluid.max_request_size = 100000

py.assert_type (
    mod_data.biofluid,
    "table",
    "ERROR: pY mod data [biofluid] is invalid"
)

py.assert_type(
    mod_data.biofluid.food,
    "table",
    "ERROR: pY mod data [biofluid] has invalid food"
)

Biofluid.fuel_size = 0
for food_name, poop_factor in pairs(mod_data.biofluid.food) do
    py.assert_type(
        food_name,
        "string",
        "ERROR: pY mod data [biofluid] has invalid food instance"
    )

    py.assert(
        prototypes.item[food_name],
        "ERROR: pY mod data [biofluid] food [%s] does not exist.",
        food_name
    )

    py.assert_type(
        poop_factor,
        {"number", "gtzero"},
        "ERROR: pY mod data [biofluid] food [%s] has invalid poop factor",
        food_name
    )

    Biofluid.fuel_size = Biofluid.fuel_size + 1
end

Biofluid.food = mod_data.biofluid.food

py.assert_type(
    mod_data.biofluid.connectables,
    "table",
    "ERROR: pY mod data [biofluid] has invalid connectables"
)

for entity_name, biofluid_type in pairs(mod_data.biofluid.connectables) do
    py.assert_type(
        entity_name,
        "string",
        "ERROR: pY mod data [biofluid] has invalid connectable instance"
    )

    py.assert(
        prototypes.entity[entity_name],
        "ERROR: pY mod data [biofluid] connectable [%s] does not exist.",
        entity_name
    )

    py.assert_type(
        biofluid_type,
        {"int", "gtzero"},
        "ERROR: pY mod data [biofluid] connectable [%s] has invalid biofluid type",
        entity_name
    )

    py.assert(
        biofluid_type <= 4,
        "ERROR: pY mod data [biofluid] connectable [%s] has invalid biofluid type. Expected Biofluid.type, found %s",
        entity_name, biofluid_type
    )
end

Biofluid.connectables = mod_data.biofluid.connectables

py.assert_type(
    mod_data.biofluid.biorobots,
    "table",
    "ERROR: pY mod data [biofluid] has invalid biorobots"
)

Biofluid.module_size = 0
for entity_name, biorobot_data in pairs(mod_data.biofluid.biorobots) do
    py.assert_type(
        entity_name,
        "string",
        "ERROR: pY mod data [biofluid] has invalid biorobot instance"
    )

    py.assert(
        prototypes.entity[entity_name],
        "ERROR: pY mod data [biofluid] biorobot [%s] does not exist.",
        entity_name
    )

    py.assert_type(
        biorobot_data,
        "table",
        "ERROR: pY mod data [biofluid] biorobot [%s] is invalid",
        entity_name
    )

    py.assert_type(
        biorobot_data.delivery_volume,
        {"number", "gtzero"},
        "ERROR: pY mod data [biofluid] biorobot [%s] has invalid delivery volume",
        entity_name
    )

    py.assert_type(
        biorobot_data.poop_factor,
        {"number", "gtzero"},
        "ERROR: pY mod data [biofluid] biorobot [%s] has invalid poop factor",
        entity_name
    )

    Biofluid.module_size = Biofluid.module_size + 1
end

Biofluid.biorobots = mod_data.biofluid.biorobots

Biofluid.bioport_slot_indexes = {
    ["guano"] = 1,
    ["workers-food"] = 1,
    ["workers-food-02"] = 2,
    ["workers-food-03"] = 3,
    ["gobachov"] = 4,
    ["huzu"] = 5,
    ["chorkok"] = 6
}
