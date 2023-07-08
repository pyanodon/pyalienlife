Biofluid.favorite_foods = {
	['gastrocapacitor'] = 400,
	['workers-food-02'] = 500,
	['workers-food-03'] = 1200,
}

Biofluid.PIPE = 1
Biofluid.ROBOPORT = 2
Biofluid.PROVIDER = 3
Biofluid.REQUESTER = 4

Biofluid.connectable = {
	['vessel'] = Biofluid.PIPE,
	['vessel-to-ground'] = Biofluid.PIPE,
	['bioport'] = Biofluid.ROBOPORT,
	['provider-tank'] = Biofluid.PROVIDER,
	['requester-tank'] = Biofluid.REQUESTER,
}

Biofluid.fuel_size = 0
for _, _ in pairs(Biofluid.favorite_foods) do Biofluid.fuel_size = Biofluid.fuel_size + 1 end

Biofluid.biorobots = {
	['gobachov'] = true,
	['huzu'] = true,
	['chorkok'] = true,
}

Biofluid.module_size = 0
for _, _ in pairs(Biofluid.biorobots) do Biofluid.module_size = Biofluid.module_size + 1 end

Biofluid.failure_reasons = {
	['entity-status.no-food'] = 'utility/status_not_working',
	['entity-status.no-creature'] = 'utility/status_not_working',
	['entity-status.no-biofluid-network'] = 'utility/status_yellow',
	['entity-status.working'] = 'utility/status_working',
}

Biofluid.bioport_slot_indexes = {
	['workers-food-02'] = 1,
	['workers-food-03'] = 2,
	['gastrocapacitor'] = 3,
	['gobachov'] = 4,
	['huzu'] = 5,
	['chorkok'] = 6,
}