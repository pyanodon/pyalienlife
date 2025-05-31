Biofluid.favorite_foods = {
    ["workers-food"] = 20,
    ["workers-food-02"] = 100,
    ["workers-food-03"] = 500
}

Biofluid.PIPE = 1
Biofluid.ROBOPORT = 2
Biofluid.PROVIDER = 3
Biofluid.REQUESTER = 4

Biofluid.connectable = {
    ["vessel"] = Biofluid.PIPE,
    ["vessel-to-ground"] = Biofluid.PIPE,
    ["bioport"] = Biofluid.ROBOPORT,
    ["provider-tank"] = Biofluid.PROVIDER,
    ["requester-tank"] = Biofluid.REQUESTER,
}

Biofluid.fuel_size = 0
for _, _ in pairs(Biofluid.favorite_foods) do Biofluid.fuel_size = Biofluid.fuel_size + 1 end

Biofluid.biorobots = {
    ["chorkok"] = true,
    ["huzu"] = true,
    ["gobachov"] = true,
}

Biofluid.module_size = 0
for _, _ in pairs(Biofluid.biorobots) do Biofluid.module_size = Biofluid.module_size + 1 end

Biofluid.failure_reasons = {
    ["entity-status.no-food"] = "utility/status_not_working",
    ["entity-status.no-creature"] = "utility/status_not_working",
    ["entity-status.no-biofluid-network"] = "utility/status_yellow",
    ["entity-status.full-output"] = "utility/status_yellow",
    ["entity-status.working"] = "utility/status_working",
}

Biofluid.diode_colors = {
    ["utility/status_not_working"] = defines.entity_status_diode.red,
    ["utility/status_yellow"] = defines.entity_status_diode.yellow,
    ["utility/status_working"] = defines.entity_status_diode.green,
}

Biofluid.status_icons = {
    ["entity-status.no-food"] = "utility.fuel_icon",
    ["entity-status.no-creature"] = "no_module_animal",
    ["entity-status.no-biofluid-network"] = "utility.too_far_from_roboport_icon",
    ["entity-status.full-output"] = "utility.warning_icon"
}

Biofluid.bioport_slot_indexes = {
    ["guano"] = 1,
    ["workers-food"] = 1,
    ["workers-food-02"] = 2,
    ["workers-food-03"] = 3,
    ["gobachov"] = 4,
    ["huzu"] = 5,
    ["chorkok"] = 6
}

Biofluid.tank_size = 100000
Biofluid.max_request_size = 100000

Biofluid.delivery_sizes = {
    ["chorkok"] = 20000,
    ["huzu"] = 15000,
    ["gobachov"] = 10000,
}

Biofluid.taco_bell = {
    ["chorkok"] = 1.3,
    ["huzu"] = 0.8,
    ["gobachov"] = 0.6,
}

Biofluid.equality_operators = {"=", ">", "≥", "<", "≤", "≠"}
