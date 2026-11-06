local mod_data = py.mod_data --[[@as pyModData]]

---@namespace PyAlienLife

---@class (partial) Biofluid
---@field food table<string, uint>
---@field type Biofluid.type
---@field connectables table<string, Biofluid.type>
---@field biorobots table<string, BiorobotPrototype>
---@field biorobot_status Biofluid.biorobot_status
---@field bioport_status Biofluid.bioport_status
---@field bioport_status_locale table<Biofluid.bioport_status, LocalisedString>
---@field status_image table<Biofluid.bioport_status, string>
---@field status_icons table<Biofluid.bioport_status, string>
---@field diode_colors table<Biofluid.bioport_status, defines.entity_status_diode>
---@field equality_operators {[1]: "=", [2]: ">", [3]: "≥", [4]: "<", [5]: "≤", [6]: "≠"}
---@field tank_size 100000
---@field max_request_size 100000
---@field fuel_size uint
---@field module_size uint
---@field bioport_slot_indices table<string, uint>

Biofluid = Biofluid or {} --[[@as Biofluid]]

---@class Biofluid.type
Biofluid.type = {
    ---@class Biofluid.type.pipe
    pipe = 1,
    ---@class Biofluid.type.roboport
    roboport = 2,
    ---@class Biofluid.type.provider
    provider = 3,
    ---@class Biofluid.type.requester
    requester = 4
}

---@enum Biofluid.biorobot_status
Biofluid.biorobot_status = {
    ---@class Biofluid.biorobot_status.picking_up
    picking_up = 1,
    ---@class Biofluid.biorobot_status.dropping_off
    dropping_off = 2,
    ---@class Biofluid.biorobot_status.returning
    returning = 3
}

---@enum Biofluid.bioport_status
Biofluid.bioport_status = {
    ---@class Biofluid.bioport_status.no_food
    no_food = 1,
    ---@class Biofluid.bioport_status.no_creature
    no_creature = 2,
    ---@class Biofluid.bioport_status.no_biofluid_network
    no_biofluid_network = 3,
    ---@class Biofluid.bioport_status.full_output
    full_output = 4,
    ---@class Biofluid.bioport_status.working
    working = 5
}

Biofluid.bioport_status_locale = {
    [Biofluid.bioport_status.no_food] = {"entity-status.no-food"},
    [Biofluid.bioport_status.no_creature] = {"entity-status.no-creature"},
    [Biofluid.bioport_status.no_biofluid_network] = {"entity-status.no-biofluid-network"},
    [Biofluid.bioport_status.full_output] = {"entity-status.full-output"},
    [Biofluid.bioport_status.working] = {"entity-status.working"}
}

Biofluid.status_image = {
    [Biofluid.bioport_status.no_food] = "utility/status_not_working",
    [Biofluid.bioport_status.no_creature] = "utility/status_not_working",
    [Biofluid.bioport_status.no_biofluid_network] = "utility/status_yellow",
    [Biofluid.bioport_status.full_output] = "utility/status_yellow",
    [Biofluid.bioport_status.working] = "utility/status_working"
}

Biofluid.status_icons = {
    [Biofluid.bioport_status.no_food] = "utility.fuel_icon",
    [Biofluid.bioport_status.no_creature] = "no_module_animal",
    [Biofluid.bioport_status.no_biofluid_network] = "utility.too_far_from_roboport_icon",
    [Biofluid.bioport_status.full_output] = "utility.warning_icon"
}

Biofluid.diode_colors = {
    [Biofluid.bioport_status.no_food] = defines.entity_status_diode.red,
    [Biofluid.bioport_status.no_creature] = defines.entity_status_diode.red,
    [Biofluid.bioport_status.no_biofluid_network] = defines.entity_status_diode.yellow,
    [Biofluid.bioport_status.full_output] = defines.entity_status_diode.yellow,
    [Biofluid.bioport_status.working] = defines.entity_status_diode.green
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

py.assert(
    prototypes.recipe["bioport-hidden-recipe"],
    "ERROR: pY mod data [biofluid] [bioport-hidden-recipe] does not exist"
)

Biofluid.bioport_slot_indices = {}
local i = 1
for _, ingredient in pairs(prototypes.recipe["bioport-hidden-recipe"].ingredients) do
    if ingredient.type == "item" then
        Biofluid.bioport_slot_indices[ingredient.name] = i
    end
end
