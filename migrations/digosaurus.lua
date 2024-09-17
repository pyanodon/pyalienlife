storage.dig_sites = storage.dig_sites or {}
for _, dig_data in pairs(storage.dig_sites) do
	if dig_data.powersource then
		dig_data.powersource = nil
		for item, count in pairs(dig_data.digosaur_inventory.get_contents()) do
			dig_data.entity.get_module_inventory().insert{name = item, count = count}
		end
		dig_data.digosaur_inventory.destroy()
		dig_data.digosaur_inventory = dig_data.entity.get_module_inventory()
	end
end