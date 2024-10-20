local lib = {}

---@param force_index integer
---@return boolean
local function has_picked_bhoddos_path_1(force_index)
    local bonuses = storage.turd_bonuses[force_index]
    return bonuses and bonuses["bhoddos-upgrade"] == "extra-drones"
end

---@return table<int, int>
lib.forces_with_bhoddos_path_1 = function()
    forces = {}
    for _, force in pairs(game.forces) do
        local force_index = force.index
        if has_picked_bhoddos_path_1(force_index) then
            table.insert(forces, force_index, force_index)
        end
    end
    return forces
end

---@param entity LuaEntity
---@param action string
lib.update_culture_table = function(entity, action)
    local force = entity.force_index
    if action == "add" then
        if not storage.turd_bhoddos[force] then storage.turd_bhoddos[force] = {} end
        storage.turd_bhoddos[force][entity.unit_number] = entity
    elseif action == "remove" then
        storage.turd_bhoddos[force][entity.unit_number] = nil
    end
end

lib.cultures = {
    ["bhoddos-culture-mk01"] = "bhoddos-culture-mk01",
    ["bhoddos-culture-mk02"] = "bhoddos-culture-mk02",
    ["bhoddos-culture-mk03"] = "bhoddos-culture-mk03",
    ["bhoddos-culture-mk04"] = "bhoddos-culture-mk04",
}

return lib
