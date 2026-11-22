for unit_number, caravan_data in pairs(storage.caravans or {}) do
    caravan_data.interrupts = caravan_data.interrupts or {}

    -- Increase fuel inventory sizes
    local old_inventory = caravan_data.fuel_inventory
    local new_inventory = game.create_inventory(#old_inventory * 2)
    for i = 1, #old_inventory do
        new_inventory[i].set_stack(old_inventory[i])
    end
    caravan_data.fuel_inventory = new_inventory
    old_inventory.destroy()

    -- Set a name for old caravan inventories
    local old_inventory = caravan_data.inventory
    local new_inventory = game.create_inventory(#old_inventory, {"caravan-gui.caravan-inventory"})
    for i = 1, #old_inventory do
        new_inventory[i].set_stack(old_inventory[i])
    end
    caravan_data.inventory = new_inventory
    old_inventory.destroy()

    -- Replaces one actions with two new counterparts. This clutters the schedule ui a bit, but behaves identically to the old actions
    for i, schedule in pairs(caravan_data.schedule or {}) do
        for j, action in pairs(schedule.actions or {}) do
            local replacements = {}
            if action.type == "item-count" then
                replacements[1] = "load-caravan"
                replacements[2] = "unload-caravan"
            end
            if action.type == "inverse-item-count" then
                replacements[1] = "load-target"
                replacements[2] = "unload-target"
            end
            if #replacements > 0 then
                action.type = replacements[1]
                action.localised_name = {"caravan-actions."..replacements[1]}
                local new_action = table.deepcopy(action)
                new_action.type = replacements[2]
                new_action.localised_name = {"caravan-actions."..replacements[2]}
                table.insert(schedule.actions, j + 1, new_action)
                if caravan_data.action_id > j then caravan_data.action_id = caravan_data.action_id + 1 end
            end
            if action.type == "store-food" then
                action.async = true   -- Old store food behaved as if async was true
            end
        end
    end
end