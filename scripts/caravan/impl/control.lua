local caravan_prototypes = require("__pyalienlife__/scripts/caravan/caravan-prototypes")
local Utils = require("__pyalienlife__/scripts/caravan/utils")

local P = {}

---Pathfinds a caravan to follow another entity
---@param caravan_data Caravan
---@param entity LuaEntity
function P.goto_entity(caravan_data, entity)
    local caravan = caravan_data.entity
    caravan.commandable.set_command({
        type = defines.command.go_to_location,
        destination_entity = entity,
        distraction = defines.distraction.none,
        pathfind_flags = caravan_prototypes[caravan.name].pathfinder_flags
    })
    caravan_data.arrival_tick = nil
end

---Pathfinds a caravan to a position
---@param caravan_data Caravan
---@param position MapPosition
function P.goto_position(caravan_data, position)
    local caravan = caravan_data.entity
    caravan.commandable.set_command({
        type = defines.command.go_to_location,
        destination = position,
        distraction = defines.distraction.none,
        pathfind_flags = caravan_prototypes[caravan.name].pathfinder_flags
    })
    caravan_data.arrival_tick = nil
end

---Sets the caravan to walk aimlessly in a radius.
---@param caravan_data Caravan
function P.wander(caravan_data)
    caravan_data.entity.commandable.set_command({
        type = defines.command.wander,
        distraction = defines.distraction.none,
        radius = 10
    })
end

---Stops all actions of the caravan and cancels the current pathfinder request.
---This is used for example when it runs out of food or the GUI is interacted with.
---@param caravan_data Caravan
function P.stop_actions(caravan_data)
    caravan_data.schedule_id = -1
    caravan_data.action_id = -1
    caravan_data.stored_energy = nil
    caravan_data.arrival_tick = nil
    P.wander(caravan_data)
end

---Reduces the fuel bar of the caravan by 1. If the fuel bar is empty, it will also attempt to refill it using fuel from the fuel inventory.
---If this function returns false, the caravan is starved and all actions stop.
---@param caravan_data Caravan
---@return boolean
function P.eat(caravan_data)
    local entity = caravan_data.entity
    if caravan_data.fuel_bar == 0 then
        local fuel = caravan_data.fuel_inventory
        for _, item in pairs(fuel.get_contents()) do
            item = item.name
            fuel.remove({ name = item, count = 1 })
            caravan_data.fuel_bar = caravan_prototypes[entity.name].favorite_foods[item]
            caravan_data.last_eaten_fuel_value = caravan_data.fuel_bar
            entity.force.get_item_production_statistics(entity.surface_index).on_flow(item, -1)
            caravan_data.fuel_bar = caravan_data.fuel_bar - 1
            return true
        end
        return false
    end
    caravan_data.fuel_bar = caravan_data.fuel_bar - 1
    return true
end

---@param v table
---@return boolean
local function exists_and_valid(v) return v and v.valid end

---Checks if the caravan entity is valid, the caravan inventory is valid, and the fuel inventory is valid.
---If not, all lua objects are destroyed and the caravan is removed from the global table.
---If this caravan is itemized, then we return false however lua objects are not destroyed.
---@param caravan_data Caravan
---@return boolean
function P.validity_check(caravan_data)
    if not caravan_data or caravan_data.itemised then return false end
    local inventory, fuel_inventory = caravan_data.inventory, caravan_data.fuel_inventory
    if
        not caravan_data.entity.valid or
        (inventory and not inventory.valid) or
        (fuel_inventory and not fuel_inventory.valid)
    then
        if caravan_data.entity.valid then caravan_data.entity.destroy() end
        if exists_and_valid(inventory) then inventory.destroy() end
        if exists_and_valid(fuel_inventory) then fuel_inventory.destroy() end
        storage.caravans[caravan_data.unit_number] = nil
        return false
    end
    return true
end

function P.instantiate_caravan(entity)
    local existing = storage.caravans[entity.unit_number]
    if existing then return existing end

    local prototype = caravan_prototypes[entity.name]
    local caravan_data = {
        unit_number = entity.unit_number,
        entity = entity,
        schedule = {},
        interrupts = {},
        schedule_id = -1,
        action_id = -1
    }

    if prototype.favorite_foods and prototype.fuel_size then
        caravan_data.fuel_inventory = game.create_inventory(prototype.fuel_size)
        caravan_data.fuel_bar = 0
        caravan_data.last_eaten_fuel_value = 1
    end

    if prototype.inventory_size then
        caravan_data.inventory = game.create_inventory(prototype.inventory_size, { "caravan-gui.caravan-inventory" })
    end

    storage.caravans[entity.unit_number] = caravan_data
    return caravan_data
end

-- Closes the gui, gives player the carrot-on-stick item and sets storage.last_opened to the provided value
---@param player LuaPlayer
---@param last_opened table
---@param camera_position MapPosition?
function P.select_destination(player, last_opened, camera_position)
    local stack = player.cursor_stack
    if not stack then return end
    if stack.valid_for_read then
        if player.insert(stack) == 0 then
            player.surface.spill_item_stack({ position = player.position, stack = stack, enable_looted = true, force = player.force })
        end
        stack.clear()
    end
    stack.set_stack({ name = "caravan-control" })

    -- store the location so the window reappears where it was last left
    if player.gui.screen.caravan_gui then
        Utils.store_gui_location(player.gui.screen.caravan_gui)
    end
    if player.gui.screen.edit_interrupt_gui then
        -- destroy the edit interrupt GUI before triggering on_gui_closed, to keep the storage.edited_interrupt alive
        player.gui.screen.edit_interrupt_gui.destroy()
    end

    player.opened = nil
    last_opened.controller_type = player.controller_type
    last_opened.camera_position = player.position
    if camera_position then
        local zoom = player.zoom
        player.set_controller({
            type = defines.controllers.remote,
            position = camera_position,
        })
        player.zoom = zoom
    end
    storage.last_opened[player.index] = last_opened
end

return P
