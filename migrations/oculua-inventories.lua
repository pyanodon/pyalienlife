for _, oculua_data in pairs(storage.oculuas or {}) do
    oculua_data.inventory = game.create_inventory(Oculua.inventory_size)
    if oculua_data.count > 0 then
        oculua_data.inventory.insert{name = oculua_data.item, count = oculua_data.count}
    end
    oculua_data.count = nil
end