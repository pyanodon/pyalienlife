local ActionGui = require "actions"
local Utils = require "__pyalienlife__/scripts/caravan/utils"
local AddInterruptGui = require "add_interrupt"
local EditInterruptGui = require "edit_interrupt"
local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"

local P = {}

local function play_stop_button_info(caravan_data, schedule_id)
    if caravan_data.schedule_id == schedule_id then
        return "utility/stop", "py_clicked_train_schedule_action_button"
    else
        return "utility/play", "train_schedule_action_button"
    end
end

function P.build_schedule_destination_frame(parent, schedule_id, caravan_data)
    local tags = {schedule_id = schedule_id, unit_number = caravan_data.unit_number}

    local frame = parent.add {type = "frame", style = "train_schedule_station_frame"}
    frame.style.horizontally_stretchable = true

    local flow = frame.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"
    -- TODO handle interrupts

    sprite, style = play_stop_button_info(caravan_data, schedule_id)
    flow.add {type = "sprite-button", name = "py_caravan_destination_play_stop_button", style = style, sprite = sprite, tags = tags}

    local destination_label = flow.add {type = "label", caption = caravan_data.schedule[schedule_id].localised_name}
    destination_label.style.left_padding = 5
    destination_label.style.horizontally_squashable = true

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true

    flow.add {type = "sprite-button", name = "py_caravan_destination_move_up_button", style = "train_schedule_delete_button", sprite = "up-black", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_destination_move_down_button", style = "train_schedule_delete_button", sprite = "down-black", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_destination_delete_button", style = "train_schedule_delete_button", sprite = "utility/close_black", tags = tags}
    return frame
end

function P.build_action_list(parent, schedule_id, caravan_data)
    local caravan_actions = caravan_data.schedule[schedule_id].actions

    for i = 1, #caravan_actions do
        local tags = {schedule_id = schedule_id, action_id = i, unit_number = caravan_data.entity.unit_number, action_list_type = Caravan.action_list_types.standard_schedule}
        ActionGui.build_action(parent, caravan_data, caravan_actions[i], tags)
    end

    local valid_actions = Utils.get_valid_actions_for_entity(caravan_data.entity.name, caravan_data.schedule[schedule_id].entity)
    local actions = table.map(table.invert(valid_actions), function(v) return {"caravan-actions." .. v, v} end)

    table.insert(actions, "+ Add action")

    local drop_down = parent.add {type = "drop-down", name = "py_caravan_destination_action_drop_down", items = actions, style = "dropdown", selected_index = #actions, tags = {schedule_id = schedule_id, unit_number = caravan_data.entity.unit_number}}
    -- copied from train_schedule_add_wait_condition_button style
    drop_down.style.height = 36
    drop_down.style.horizontally_stretchable = true
    drop_down.style.left_margin = 32
end

function P.build_schedule_list(parent, caravan_data)
    for i = 1, #caravan_data.schedule do
        local flow = parent.add {type = "flow", direction = "vertical"}
        flow.style.horizontal_align = "right"

        P.build_schedule_destination_frame(flow, i, caravan_data)
        P.build_action_list(flow, i, caravan_data)
    end

    parent.add {type = "button", name = "py_caravan_destination_add_button", style = "train_schedule_add_station_button", caption = "+ Add outpost", tags = {unit_number = caravan_data.unit_number}}
end

function P.build_add_interrupt_frame(parent, caravan_data)
    local frame = parent.add {type = "frame", name = "add_interrupt_frame", direction = "vertical"}

    local header_flow = frame.add {type = "flow", direction = "horizontal", style = "frame_header_flow"}
    header_flow.add {type = "label", caption = "Add interrupt", style = "frame_title"}
    local empty = header_flow.add {type = "empty-widget"}
    empty.style.horizontally_stretchable = true

    local close_button = header_flow.add {type = "sprite-button", name = "py_caravan_add_interrupt_close_button", sprite = "utility/close", style = "frame_action_button"}

    local subheader_frame = frame.add {type = "frame", direction = "horizontal", style = "subheader_frame"}
    subheader_frame.style.horizontally_stretchable = true
    local subheader_flow = subheader_frame.add {type = "flow", direction = "horizontal"}
    local textfield = subheader_flow.add {type = "textfield", name = "py_caravan_add_interrupt_textfield", style = "stretchable_textfield", icon_selector = true}
    subheader_flow.add {type = "sprite-button", name = "py_caravan_add_interrupt_confirm_button", style = "item_and_count_select_confirm", sprite = "utility/enter"}
    textfield.focus()

    local existing_interrupts = {}
    
    for _, name in pairs(caravan_data.interrupts) do
        existing_interrupts[name] = true
    end
    local items = {}
    for _, name in pairs(storage.interrupts) do
        if not existing_interrupts[name] then table.insert(items, name) end
    end
    -- TODO disable clicking on already present interrupts? Or just hide them like it's done now
    local list_box = frame.add {type = "list-box", name = "py_caravan_add_interrupt_list_box", items = items}
    list_box.style.horizontally_stretchable = true
    list_box.style.minimal_height = 200
    return frame
end

function P.build_interrupt_frame(parent, caravan_interrupt_index, caravan_data)
    local tags = {caravan_interrupt_index = caravan_interrupt_index, unit_number = caravan_data.unit_number}

    local frame = parent.add {type = "frame", style = "train_schedule_station_frame"}
    local flow = frame.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_play_button", style = "train_schedule_action_button", sprite = "utility/play", tags = tags}

    local destination_label = flow.add {type = "label", style = "semibold_label", caption = caravan_data.interrupts[caravan_interrupt_index]}
    destination_label.style.left_padding = 5
    destination_label.style.horizontally_squashable = true

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true

    flow.add {type = "sprite-button", name = "py_caravan_interrupt_edit_button", style = "train_schedule_action_button", sprite = "utility/rename_icon", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_move_up_button", style = "train_schedule_delete_button", sprite = "up-black", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_move_down_button", style = "train_schedule_delete_button", sprite = "down-black", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_delete_button", style = "train_schedule_delete_button", sprite = "utility/close_black", tags = tags}
end

function P.build_interrupt_list(parent, caravan_data)
    local frame = parent.add {type = "frame", direction = "horizontal", style = "train_schedule_station_frame"}
    frame.style.horizontally_stretchable = true

    frame.add {type = "label", style = "subheader_semibold_label", caption = "Interrupts", tooltip = "Interrupts are conditions that can be added to schedules. Their configuration is shared globally between all caravans."}
    for i = 1, #caravan_data.interrupts do
        local flow = parent.add {type = "flow", direction = "vertical"}

        P.build_interrupt_frame(flow, i, caravan_data)
    end
    parent.add {type = "button", name = "py_caravan_interrupt_add_button", style = "train_schedule_add_station_button", caption = "+ Add interrupt", tags = {unit_number = caravan_data.unit_number}}
end

function P.build_schedule_flow(parent, caravan_data)
    local flow = parent.add {type = "flow", name = "schedule_flow", direction = "vertical"}
    P.build_schedule_list(flow, caravan_data) 
    P.build_interrupt_list(flow, caravan_data)

    -- without this empty widget, clicks on the empty space at the bottom won't raise on_gui_click
    flow.add {type = "empty-widget"}.style.vertically_stretchable = true
    return flow
end

function P.build_schedule_pane(parent, caravan_data)
    local pane = parent.add {type = "scroll-pane", name = "schedule_pane", style = "train_schedule_scroll_pane"}
    pane.vertical_scroll_policy = "auto"

    P.build_schedule_flow(pane, caravan_data)
    return pane
end

function P.build_schedule_tab(parent, caravan_data)
    local schedule_tab = parent.add {type = "tab", name = "schedule_tab", caption = "Schedule"}
    local schedule_pane = P.build_schedule_pane(parent, caravan_data)
    parent.add_tab(schedule_tab, schedule_pane)
    return schedule_tab
end

function P.update_schedule_pane(player)
    local gui = player.gui.screen.caravan_new_gui
    if not gui then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    local schedule_pane = gui.entity_frame.tabbed_pane_frame.tabbed_pane.schedule_pane 

    schedule_pane.schedule_flow.destroy()
    P.build_schedule_flow(schedule_pane, caravan_data)
end

-- TODO rename to py_caravan_schedule_add_interrupt_button
gui_events[defines.events.on_gui_click]["py_caravan_interrupt_add_button"] = function(event)
    local player = game.get_player(event.player_index)

    local caravan_data = storage.caravans[event.element.tags.unit_number]
    
    if player.gui.screen.add_interrupt_gui then
        player.gui.screen.add_interrupt_gui.destroy()
    end
    local add_interrupt_frame = AddInterruptGui.build(player.gui.screen, caravan_data)
    add_interrupt_frame.location = event.cursor_display_location
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_edit_button"] = function(event)
    local player = game.get_player(event.player_index)

    local caravan_data = storage.caravans[event.element.tags.unit_number]
    
    -- TODO not sure about that
    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
    local edit_interrupt_frame = EditInterruptGui.build(player.gui.screen, storage.interrupts[caravan_data.interrupts[event.element.tags.caravan_interrupt_index]])
    edit_interrupt_frame.location = event.cursor_display_location
end

-- gui_events[defines.events.on_gui_click]["py_caravan_interrupt_add_button"] = function(event)
--     local player = game.get_player(event.player_index)
--     local caravan_gui = player.gui.screen.caravan_new_gui
--     if not caravan_gui then return end
-- 
--     local schedule_pane = caravan_gui.tabbed_pane_frame.tabbed_pane.schedule_pane 
-- 
--     if not schedule_pane then return end
--     if schedule_pane.add_interrupt_frame then return end
--     local add_interrupt_frame = P.build_add_interrupt_frame(schedule_pane)
--     schedule_pane.scroll_to_element(add_interrupt_frame)
-- end
-- 
-- local function trim_trailing_spaces(str)
--     return string.gsub(str, '^%s*(.-)%s*$', '%1')
-- end
-- 
-- gui_events[defines.events.on_gui_confirmed]["py_caravan_add_interrupt_textfield"] = function(event)
--     local trimmed_name = trim_trailing_spaces(event.element.text)
--     if trimmed_name == "" then return end
-- 
--     table.insert(storage.caravan_interrupts, {name = trimmed_name})
-- 
--     local player = game.get_player(event.player_index)
--     P.update_schedule_pane(player)
-- end
-- 
-- gui_events[defines.events.on_gui_click]["py_caravan_add_interrupt_confirm_button"] = function(event)
--     local trimmed_name = trim_trailing_spaces(event.element.parent.py_caravan_add_interrupt_textfield.text)
--     if trimmed_name == "" then return end
-- 
--     table.insert(storage.caravan_interrupts, {name = trimmed_name})
--     local player = game.get_player(event.player_index)
--     P.update_schedule_pane(player)
-- end
-- 
-- gui_events[defines.events.on_gui_click]["py_caravan_add_interrupt_close_button"] = function(event)
--     local player = game.get_player(event.player_index)
-- 
--     local caravan_gui = player.gui.screen.caravan_new_gui
--     if not caravan_gui then return end
-- 
--     local frame = caravan_gui.tabbed_pane_frame.tabbed_pane.schedule_pane.add_interrupt_frame
--     if frame then frame.destroy() end
-- end
-- 
-- gui_events[defines.events.on_gui_click]["py_caravan_interrupt_move_up_button"] = function(event)
--     local i = event.element.tags.caravan_interrupt_index
--     if i == 1 then return end
-- 
--     storage.caravan_interrupts[i - 1], storage.caravan_interrupts[i] = storage.caravan_interrupts[i], storage.caravan_interrupts[i - 1]
-- 
--     local player = game.get_player(event.player_index)
--     P.update_schedule_pane(player)
-- end
-- 
-- gui_events[defines.events.on_gui_click]["py_caravan_interrupt_move_down_button"] = function(event)
--     local i = event.element.tags.caravan_interrupt_index
--     if i == #storage.caravan_interrupts then return end
-- 
--     storage.caravan_interrupts[i + 1], storage.caravan_interrupts[i] = storage.caravan_interrupts[i], storage.caravan_interrupts[i + 1]
-- 
--     local player = game.get_player(event.player_index)
--     P.update_schedule_pane(player)
-- end
-- 
-- gui_events[defines.events.on_gui_click]["py_caravan_interrupt_edit_button"] = function(event)
--     -- TODO new pop-up 
-- end
-- 
-- gui_events[defines.events.on_gui_click]["py_caravan_interrupt_delete_button"] = function(event)
--     table.remove(storage.caravan_interrupts, event.element.tags.caravan_interrupt_index)
-- 
--     local player = game.get_player(event.player_index)
--     P.update_schedule_pane(player)
-- end

return P
