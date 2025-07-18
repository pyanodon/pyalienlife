local CaravanImpl = require "__pyalienlife__/scripts/caravan/impl"
local CaravanGui = require "__pyalienlife__/scripts/caravan/gui"
local EditInterruptGui = require "__pyalienlife__/scripts/caravan/gui/edit_interrupt"
local Utils = require "__pyalienlife__/scripts/caravan/utils"

local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    local prototype = caravan_prototypes[entity.name]
    if not prototype then return end
    if prototype.destructible == false then entity.destructible = false end

    local inventory = event.consumed_items
    local tags = event.tags or (inventory and not inventory.is_empty() and inventory[1].valid_for_read and inventory[1].is_item_with_tags and inventory[1].tags) or nil

    if tags and tags.unit_number and storage.caravans[tags.unit_number] then
        local caravan_data = storage.caravans[tags.unit_number]
        caravan_data.itemised = nil
        caravan_data.unit_number = entity.unit_number
        caravan_data.entity = entity
        CaravanImpl.stop_actions(caravan_data)
        storage.caravans[entity.unit_number] = caravan_data
        storage.caravans[tags.unit_number] = nil
    else
        CaravanImpl.instantiate_caravan(entity)
    end
    script.register_on_object_destroyed(entity)
    storage.caravan_queue = nil
end)

-- TODO add back get_inventory_tooltip that are currently in gui-shared.lua
py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    local prototype = caravan_prototypes[entity.name]
    if not prototype then return end

    CaravanImpl.remove_fuel_alert(event.entity)

    local buffer = event.buffer
    if buffer then
        buffer[1].tags = {unit_number = entity.unit_number}
        local caravan_data = storage.caravans[entity.unit_number]
        if caravan_data then
            buffer[1].custom_description = {
                "",
                {"caravan-gui.hello-my-name-is", Utils.get_name(caravan_data)},
                CaravanImpl.get_inventory_tooltip(caravan_data),
                "\n",
                entity.prototype.localised_description
            }
        end
    end
    storage.caravan_queue = nil
end)

py.on_event(defines.events.on_object_destroyed, function(event)
    local unit_number = event.useful_id
    local caravan_data = storage.caravans[unit_number]

    if not caravan_data then return end

    storage.caravans[unit_number].itemised = true
    for _, player in pairs(game.connected_players) do
        local gui = CaravanGui.get_gui(player)
        if gui and gui.tags.unit_number == unit_number then
            gui.destroy(); player.opened = nil
        end
    end

    local map_tag = caravan_data.map_tag
    if map_tag and map_tag.valid then map_tag.destroy() end
end)

py.on_event(defines.events.on_entity_settings_pasted, function(event)
    local source, destination = event.source, event.destination
    local source_data, destination_data = storage.caravans[source.unit_number], storage.caravans[destination.unit_number]
    if not source_data or not destination_data then return end

    for _, prototype in pairs(source.prototype.additional_pastable_entities) do
        if prototype.name == destination.name then goto continue end
    end
    do return end
    ::continue::

    CaravanImpl.stop_actions(destination_data)
    destination_data.schedule = table.deepcopy(source_data.schedule)
    destination_data.interrupts = table.deepcopy(source_data.interrupts)
    for _, player in pairs(game.connected_players) do
        local gui = CaravanGui.get_gui(player)
        if gui and gui.tags.unit_number == destination.unit_number then CaravanGui.update_schedule_pane(player) end
    end
end)

--- Called whenever the player uses the carrot-on-stick capsule item.
py.on_event(py.events.on_entity_clicked(), function(event)
    local player = game.get_player(event.player_index)
    local cursor_stack = player.cursor_stack
    local cursor_ghost = player.cursor_ghost

    if not (cursor_ghost and cursor_ghost.name.name == "caravan-control") then
        if not cursor_stack or not cursor_stack.valid_for_read or cursor_stack.name ~= "caravan-control" then
            return
        end
    end
    cursor_stack.clear()

    local schedule, prototype, only_outpost
    local caravan_data = storage.caravans[storage.last_opened_caravan[player.index]]
    -- FIXME handle multiplayer
    local interrupt_data = storage.edited_interrupt
    if caravan_data then
        if not CaravanImpl.validity_check(caravan_data) then return end
        schedule = caravan_data.schedule
        prototype = caravan_prototypes[caravan_data.entity.name]
        only_outpost = prototype.only_allow_outpost_as_destination
    end
    if interrupt_data then
        schedule = interrupt_data.schedule
    end

    local entity = player.selected or player.surface.find_entities_filtered {
        position = event.cursor_position,
        limit = 1,
        collision_mask = {object = true, player = true, train = true, resource = true, floor = true, transport_belt = true, ghost = true}
    }[1]

    if storage.last_opened_action[player.index] then
        if interrupt_data and entity then
            if entity.operable then storage.make_operable_next_tick[#storage.make_operable_next_tick + 1] = entity end
            entity.operable = false -- Prevents the player from opening the gui of the clicked entity
            if entity.name == "outpost" or entity.name == "fluid-outpost" or entity.name == "outpost-aerial" then
                local action_id = storage.last_opened_action[player.index].action_id
                interrupt_data.conditions[action_id].entity = entity
                interrupt_data.conditions[action_id].localised_name = ""
            end
        end
    elseif entity then
        if entity.operable then storage.make_operable_next_tick[#storage.make_operable_next_tick + 1] = entity end
        entity.operable = false -- Prevents the player from opening the gui of the clicked entity
        if only_outpost and entity.name ~= prototype.outpost then return end
        if caravan_data and (entity == caravan_data.entity or entity.surface ~= caravan_data.entity.surface) then return end
        schedule[#schedule + 1] = {
            localised_name = {"caravan-gui.entity-position", entity.prototype.localised_name, math.floor(entity.position.x), math.floor(entity.position.y)},
            entity = entity,
            position = entity.position,
            actions = {}
        }
    elseif not only_outpost then
        local position = event.cursor_position
        if player.surface ~= caravan_data.entity.surface then return end
        schedule[#schedule + 1] = {
            localised_name = {"caravan-gui.map-position", math.floor(position.x), math.floor(position.y)},
            position = position,
            actions = {}
        }
    else
        return
    end

    if caravan_data then
        CaravanGui.build(player, caravan_data)
        if interrupt_data then
            EditInterruptGui.build(player.gui.screen, interrupt_data)
        end
    end
end)

py.on_event(defines.events.on_ai_command_completed, function(event)
    local unit_number = event.unit_number
    local caravan_data = storage.caravans[unit_number]
    if not caravan_data or not CaravanImpl.validity_check(caravan_data) then return end
    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    local status = event.result
    if not schedule then
        CaravanImpl.stop_actions(caravan_data); goto update_gui
    end

    if status == defines.behavior_result.in_progress then return end
    if status == defines.behavior_result.fail or status == defines.behavior_result.deleted then
        caravan_data.retry_pathfinder = 10
        caravan_data.action_id = -1
        return
    end

    if #schedule.actions == 0 then
        local schedule_num = #caravan_data.schedule
        if schedule_num == 1 and not caravan_data.schedule[1].temporary then
            caravan_data.retry_pathfinder = 3
            return
        else
            CaravanImpl.advance_caravan_schedule_by_1(caravan_data)
        end
    else
        local entity = caravan_data.entity
        CaravanImpl.begin_action(caravan_data, 1)
        entity.commandable.set_command {
            type = defines.command.stop,
            distraction = defines.distraction.none,
            pathfind_flags = {}
        }
        local prototype = caravan_prototypes[entity.name]
        if prototype.requeue_required then
            storage.caravan_queue = nil
            caravan_data.arrival_tick = game.tick
        end
    end

    ::update_gui::
    for _, player in pairs(game.connected_players) do
        local gui = CaravanGui.get_gui(player)
        if gui and gui.tags.unit_number == unit_number then
            CaravanGui.update_gui(player); return
        end
    end
end)

py.register_on_nth_tick(60, "update-caravans", "pyal", function()
    local guis_to_update = {}

    if not storage.caravan_queue then
        local queue = {}
        for _, caravan_data in pairs(storage.caravans) do
            if CaravanImpl.validity_check(caravan_data) then
                queue[#queue + 1] = caravan_data
            end
        end

        local sort_fn = function (a, b) return (a.arrival_tick or 0) < (b.arrival_tick or 0) end
        table.sort(queue, sort_fn)
        storage.caravan_queue = queue
    end

    for _, caravan_data in pairs(storage.caravan_queue) do
        if not CaravanImpl.validity_check(caravan_data) then goto continue end
        local entity = caravan_data.entity
        local needs_fuel = caravan_data.fuel_inventory and caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty()

        if needs_fuel then
            -- 300 ticks/5 seconds is how long these alerts last
            if game.tick % 300 == 0 then
                CaravanImpl.add_fuel_alert(entity)
            end
            py.draw_error_sprite(entity, "utility.fuel_icon", 30)
            goto continue
        end

        if caravan_data.retry_pathfinder then
            caravan_data.retry_pathfinder = caravan_data.retry_pathfinder - 1
            if caravan_data.retry_pathfinder == 0 then
                CaravanImpl.begin_schedule(caravan_data, caravan_data.schedule_id, true)
            end
            if caravan_data.retry_pathfinder == 0 then
                caravan_data.retry_pathfinder = nil
            end
            goto continue
        end

        if caravan_data.action_id == -1 then goto continue end
        local schedule = caravan_data.schedule[caravan_data.schedule_id]
        if not schedule then goto continue end
        local action = schedule.actions[caravan_data.action_id]
        if not action then goto continue end
        local target_entity = schedule.entity

        local result
        if Utils.get_valid_actions_for_entity(caravan_data.entity.name, target_entity)[action.type] then
            result = Caravan.actions[action.type](caravan_data, schedule, action)
        else
            result = true -- Skip invalid action
        end
        if result == "nuke" then
            goto continue
        elseif result == "error" then
            CaravanImpl.stop_actions(caravan_data)
            guis_to_update[caravan_data.unit_number] = true
            -- Advance the schedule
        elseif result then
            if #schedule.actions == caravan_data.action_id then
                CaravanImpl.advance_caravan_schedule_by_1(caravan_data)
            else
                CaravanImpl.begin_action(caravan_data, caravan_data.action_id + 1)
            end
            guis_to_update[caravan_data.unit_number] = true
        else
            if schedule.entity and schedule.entity.valid then
                if py.distance_squared(schedule.entity.position, entity.position) > 1000 then
                    CaravanImpl.goto_entity(caravan_data, schedule.entity)
                end
            else
                if py.distance_squared(schedule.position, entity.position) > 1000 then
                    CaravanImpl.goto_position(caravan_data, schedule.position)
                end
            end
        end

        ::continue::
    end

    for _, player in pairs(game.connected_players) do
        local gui = CaravanGui.get_gui(player)
        if gui then
            if next(guis_to_update) and guis_to_update[gui.tags.unit_number] then
                CaravanGui.update_gui(player)
            else
                local caravan_data = storage.caravans[gui.tags.unit_number]
                if player.can_reach_entity(caravan_data.entity) ~= CaravanGui.cargo_tab_enabled(player) then
                    CaravanGui.update_gui(player)
                end
            end
        end
    end
    if next(storage.make_operable_next_tick) then
        for _, entity in pairs(storage.make_operable_next_tick) do
            if entity.valid then entity.operable = true end
        end
        storage.make_operable_next_tick = {}
    end
end)

py.on_event(py.events.on_entity_clicked(), function(event)
    local player = game.get_player(event.player_index)
    -- If the player has a temporary item in their cursor, we don't let them open the GUI
    -- This includes the caravan controller, blueprint tool, etc
    local stack = player.cursor_stack
    if stack and stack.valid_for_read and stack.prototype.has_flag("only-in-cursor") then
        return
    end
    local entity = player.selected
    if not entity or not caravan_prototypes[entity.name] or not player.can_reach_entity(entity) then return end
    local caravan_data = CaravanImpl.instantiate_caravan(entity)
    local existing = CaravanGui.get_gui(player)
    if existing then
        if existing.tags.unit_number == caravan_data.unit_number then
            return
        else
            player.opened = nil
        end
    end

    -- TODO later
    --player.set_controller { type = defines.controllers.remote }
    CaravanGui.build(player, caravan_data)
end)
