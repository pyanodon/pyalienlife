local P = {}

local no_fuel_map_tag = {
    type = "virtual",
    name = "no-fuel"
}

---Is this caravan currently doing anything?
---@param caravan_data Caravan
---@return boolean
local function is_automated(caravan_data)
    return caravan_data.schedule_id and caravan_data.schedule_id >= 0
end

---Function to render a red alert similar to the locomotive out of fuel alert.
---This renders on the player GUI in the same slot as the locomotive alert or 'entities damaged' alert.
---@param entity LuaEntity
function P.add_alert(entity, alert)
    local target_force = entity.force_index
    for _, player in pairs(game.connected_players) do
        if player.valid and player.force_index == target_force then
            -- You could use train alerts which have the wrong notification string but *do* stack
            -- player.add_alert(entity, defines.alert_type.train_out_of_fuel)
            player.add_custom_alert(
                entity,
                alert.signal,
                alert.message,
                true
            )
        end
    end
end

---Function to remove the alert from the player GUI.
---@param entity LuaEntity
function P.remove_alert(entity)
    if not entity.valid then
        -- it'll disappear after a few seconds anyway
        return
    end

    local target_force = entity.force_index
    for _, player in pairs(game.connected_players) do
        if player.valid and player.force_index == target_force then
            -- You could use train alerts which have the wrong notification string but *do* stack
            -- player.remove_alert({prototype = prototype, type = defines.alert_type.train_out_of_fuel})
            -- If we specify more than one criteria here, it'll only pay attention to one for some reason
            player.remove_alert({
                entity = entity
            })
        end
    end
end

function P.status_info(caravan_data)
    local entity = caravan_data.entity
    if caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty() then
        return { "entity-status.starved" }, "utility/status_not_working"
    elseif entity.health ~= entity.max_health then
        return { "entity-status.wounded" }, "utility/status_yellow"
    elseif not is_automated(caravan_data) then
        return { "entity-status.idle" }, "utility/status_yellow"
    else
        return { "entity-status.healthy" }, "utility/status_working"
    end
end

return P
