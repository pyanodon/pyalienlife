local CaravanImpl = require "__pyalienlife__/scripts/caravan/impl"
local CaravanGui = require "__pyalienlife__/scripts/caravan/gui"
local CaravanGuiComponents = require "__pyalienlife__/scripts/caravan/gui/components"
local CaravanUtils = require "__pyalienlife__/scripts/caravan/utils"

gui_events[defines.events.on_gui_click]["py_caravan_destination_add_button"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local last_opened = {}

    local unit_number = CaravanGui.get_gui(player).tags.unit_number
    assert(unit_number)
    last_opened.caravan = unit_number
    -- edge case: when having the edit_interrupt GUI open, clicking on the Add destination button in the caravan GUI
    -- should close the edit_interrupt GUI. But the on_gui_click event handler responsible for that is called AFTER
    -- the event handler for 'Add destination'. The latter closes both GUIs, and reopens them afterwards.
    -- This results in the destination being added to the interrupt, not the regular schedule.
    -- As this is the only button that behaves like that, I think it's fine to have an ad-hoc check here.
    --
    -- If it comes up again, we can add a flag in last_opened instead
    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
        storage.edited_interrupt = nil
    end
    CaravanImpl.select_destination(player, last_opened)
end

gui_events[defines.events.on_gui_click]["py_caravan_destination_move_up_button"] = function(event)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.schedule_id

    if i == 1 then return end

    caravan_data.schedule[i - 1], caravan_data.schedule[i] = caravan_data.schedule[i], caravan_data.schedule[i - 1]

    if caravan_data.schedule_id == -1 then
        CaravanImpl.stop_actions(caravan_data)
    elseif caravan_data.schedule_id == i then
        caravan_data.schedule_id = i - 1
    elseif caravan_data.schedule_id == i - 1 then
        caravan_data.schedule_id = i
    end

    local player = game.get_player(event.player_index)
    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_destination_move_down_button"] = function(event)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.schedule_id

    if i == #caravan_data.schedule then return end

    caravan_data.schedule[i + 1], caravan_data.schedule[i] = caravan_data.schedule[i], caravan_data.schedule[i + 1]

    if caravan_data.schedule_id == -1 then
        CaravanImpl.stop_actions(caravan_data)
    elseif caravan_data.schedule_id == i then
        caravan_data.schedule_id = i + 1
    elseif caravan_data.schedule_id == i + 1 then
        caravan_data.schedule_id = i
    end

    local player = game.get_player(event.player_index)
    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_destination_delete_button"] = function(event)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    table.remove(caravan_data.schedule, event.element.tags.schedule_id)

    CaravanImpl.stop_actions(caravan_data)
    local player = game.get_player(event.player_index)
    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_destination_play_stop_button"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local schedule = caravan_data.schedule[tags.schedule_id]

    if caravan_data.schedule_id == tags.schedule_id then
        if caravan_data.action_id == tags.action_id then
            CaravanImpl.stop_actions(caravan_data)
        else
            local position
            if schedule.entity and schedule.entity.valid then position = schedule.entity.position else position = schedule.position end
            if py.distance_squared(position, caravan_data.entity.position) < 1000 then
                CaravanImpl.begin_action(caravan_data, tags.action_id)
            end
        end
    else
        CaravanImpl.begin_schedule(caravan_data, tags.schedule_id)
    end

    CaravanGui.update_gui(player)
end

gui_events[defines.events.on_gui_selection_state_changed]["py_caravan_destination_action_drop_down"] = function(event)
    local player = game.get_player(event.player_index)
    local action_id = event.element.selected_index
    local schedule_id = event.element.tags.schedule_id
    local element = event.element

    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    local schedule = caravan_data.schedule[schedule_id]
    local actions = schedule.actions

    local valid_actions = table.invert(CaravanUtils.get_valid_actions_for_entity(caravan_data.entity.name, caravan_data.schedule[schedule_id].entity))

    -- off-by-one index is used to show "+ Add action" text
    if element.selected_index == 0 or element.selected_index > #valid_actions then return end

    local type = element.get_item(element.selected_index)[2]
    local localised_name = element.get_item(element.selected_index)
    if type == "at-outpost" then
        localised_name = {"caravan-actions.at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "not-at-outpost" then
        localised_name = {"caravan-actions.not-at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "outpost-item-count" then
        localised_name = {"caravan-actions.outpost-item-count2", {"caravan-gui.not-specified"}}
    end
    table.insert(caravan_data.schedule[schedule_id].actions, {type = type, localised_name = localised_name})

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_outpost_name"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = CaravanGui.get_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]
    local element = event.element
    local tags = element.tags
    local schedule = CaravanUtils.get_schedule(element)[tags.schedule_id]
    local camera = gui.entity_frame.camera_frame.camera

    local refocus = gui.entity_frame.subheader_frame.contents_flow.py_refocus

    if schedule.entity then
        if schedule.entity.valid then
            camera.entity = schedule.entity
        else
            local last_opened = {}
            last_opened.caravan = caravan_data.unit_number
            last_opened.schedule_id = element.tags.schedule_id
            CaravanImpl.select_destination(player, last_opened, schedule.position)
            return
        end
    else
        camera.entity = nil
        camera.position = schedule.position
        camera.surface_index = caravan_data.entity.surface_index
    end
    refocus.visible = true
    camera.zoom = 0.5
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_target_name"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = CaravanGui.get_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]
    local element = event.element
    local tags = element.tags
    local schedule = storage.edited_interrupt.schedule[tags.schedule_id]

    if schedule.entity and not schedule.entity.valid then
        local last_opened = {}
        last_opened.caravan = caravan_data.unit_number
        last_opened.schedule_id = element.tags.schedule_id
        CaravanImpl.select_destination(player, last_opened, schedule.position)
        return
    end
end
