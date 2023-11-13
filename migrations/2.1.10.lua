local function exists_and_valid(v) return v and v.valid end

if not global.caravans then return end
local found = false
local new = {}
for _, caravan_data in pairs(global.caravans) do
	if caravan_data.is_aerial
	or not caravan_data.unit_number
	or not caravan_data.entity
	or not caravan_data.entity.valid then
		local inventory = caravan_data.inventory
		local fuel_inventory = caravan_data.fuel_inventory
		if exists_and_valid(inventory) then inventory.destroy() end
		if exists_and_valid(fuel_inventory) then fuel_inventory.destroy() end
		goto continue
	end
	new[caravan_data.unit_number] = caravan_data
	found = true
	::continue::
end
global.caravans = new
if found then
	global.caravan_queue = nil
end