Farming = {}
Farming.events = {}

---@as table<string, string>
---Contains key-value pairs of `{farm_name = farm_domain}`
-- See `scripts/farming/farm-build-list.lua` for an example
local farm_buildings = require 'farm-building-list'

---register_type registers a farm for module restrictions
---@param farm_name string name of farm building without -mkxx suffix
---@param kingdom_name 'animal' | 'plant' | 'fungi'
function Farming.register_type(farm_name, kingdom_name)
	log('remote registered farm \'' .. farm_name .. '\' (' .. kingdom_name .. ')')
	storage.farm_prototypes = storage.farm_prototypes or farm_buildings
	storage.farm_prototypes[farm_name] = kingdom_name
end

---unregister_type unregisters a farm for module restrictions
---@param farm_name string name of farm building without -mkxx suffix
function Farming.unregister_type(farm_name)
	log('remote unregistered farm \'' .. farm_name .. '\'')
	storage.farm_prototypes[farm_name] = nil
end

remote.remove_interface('pyfarm')
remote.add_interface('pyfarm', {
	register = Farming.register_type,
	unregister = Farming.unregister_type
})

-- animal, plant, or fungi?
function Farming.get_kingdom(entity)
	local name = entity.name:gsub('%-mk..+', '')
	return storage.farm_prototypes[name]
end

function Farming.disable_machine(entity)
    local kingdom = Farming.get_kingdom(entity)
	if not kingdom then return end
    entity.active = false
	storage.disabled_farm_buildings[entity.unit_number] = entity
	script.register_on_object_destroyed(entity)
	if entity.is_crafting() then
		entity.crafting_progress = 0.0001
		entity.bonus_progress = 0
	end
	py.draw_error_sprite(entity, 'no_module_' .. kingdom, 30)
end

Farming.events.on_init = function()
	storage.disabled_farm_buildings = storage.disabled_farm_buildings or {}
	storage.enabled_farm_buildings = storage.enabled_farm_buildings or {}
	storage.farm_prototypes = farm_buildings
	storage.next_farm_index = storage.next_farm_index or 1
end
Farming.events.on_configuration_changed = Farming.events.on_init

Farming.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if entity.type == 'assembling-machine' then Farming.disable_machine(entity) end
end

Farming.events.on_object_destroyed = function(event)
	local unit_number = event.useful_id
	if not unit_number then return end
	storage.disabled_farm_buildings[unit_number] = nil
end

-- render warning icons
Farming.events[59] = function(event)
	for unit_number, farm in pairs(storage.disabled_farm_buildings) do
		if not farm.valid then
			storage.disabled_farm_buildings[unit_number] = nil
		elseif farm.get_module_inventory().is_empty() then
			py.draw_error_sprite(farm, 'no_module_' .. Farming.get_kingdom(farm), 30)
		else
			storage.disabled_farm_buildings[unit_number] = nil
			farm.active = true
			storage.enabled_farm_buildings[#storage.enabled_farm_buildings + 1] = farm
		end
	end
end

-- every 2 seconds, check up to 60 farm buildings for empty module inventory
Farming.events[121] = function()
	if #storage.enabled_farm_buildings == 0 then return end
	local first_index_checked_this_tick = storage.next_farm_index
	for i = 1, 60 do
		local farm = storage.enabled_farm_buildings[storage.next_farm_index]

		if not farm or not farm.valid then
			table.remove(storage.enabled_farm_buildings, storage.next_farm_index)
		elseif farm.get_module_inventory().is_empty() then
			Farming.disable_machine(farm)
			table.remove(storage.enabled_farm_buildings, storage.next_farm_index)
		else
			storage.next_farm_index = storage.next_farm_index + 1
		end

		if storage.next_farm_index > #storage.enabled_farm_buildings then storage.next_farm_index = 1 end
		if storage.next_farm_index == first_index_checked_this_tick then return end
	end
end