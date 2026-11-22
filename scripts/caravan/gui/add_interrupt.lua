local Utils = require "__pyalienlife__/scripts/caravan/utils"

local P = {}

local clicked_list_buttons = {}

function P.build_main_frame(parent, fallback_location)
    local frame =  parent.add {type = "frame", name = "add_interrupt_gui", direction = "vertical"}
    -- values copied from vanilla add_interrupt frame
    frame.style.natural_height = 288
    frame.style.maximal_height = 1290
    frame.style.width = 392
    Utils.restore_gui_location(frame, fallback_location)

    return frame
end

function P.build_title_bar_flow(parent, tags)
    local flow = parent.add {type = "flow", name = "title_bar_flow", direction = "horizontal", style = "frame_header_flow"}

    flow.add {type = "label", caption = {"caravan-gui.add-interrupt-frame-title"}, style = "frame_title"}

    local drag_handler = flow.add {type = "empty-widget", style = "draggable_space_header"}
    drag_handler.style.horizontally_stretchable = true
    drag_handler.style.height = 24
    drag_handler.style.right_margin = 4
    drag_handler.drag_target = parent

    flow.add {type = "textfield", name = "py_caravan_add_interrupt_search_textfield", style = "search_popup_textfield", visible = false, tags = tags}
    local search_button = flow.add {type = "sprite-button", name = "py_caravan_add_interrupt_search_button", style = "frame_action_button", sprite = "utility/search", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_add_interrupt_close_button", style = "close_button", sprite = "utility/close", tags = tags}

    storage.gui_elements_by_name[search_button.name] = search_button
    return flow
end

function P.build_text_input(parent, tags)
    local frame = parent.add {type = "frame", name = "subheader_frame", style = "subheader_frame", direction = "horizontal"}
    local textfield = frame.add {type = "textfield", name = "py_caravan_add_interrupt_input_textfield", icon_selector = true, style = "stretchable_textfield", tags = tags}
    textfield.focus()

    frame.add {type = "sprite-button", name = "py_caravan_add_interrupt_confirm_button", style = "item_and_count_select_confirm", sprite = "utility/enter", tags = tags}
    return frame
end

function P.build_no_interrupts_frame(parent)
    local frame = parent.add {type = "frame", style = "negative_subheader_frame"}
    local flow = frame.add {type = "flow"}
    flow.style.horizontally_stretchable = true
    flow.style.horizontal_align = "center"
    flow.add {type = "label", caption = {"caravan-gui.no-interrupts-found"}, style = "bold_label"}

    return frame
end

function P.build_interrupt_list(parent, caravan_data, interrupts, tags)
    local flow = parent.add {type = "flow", name = "contents_flow", direction = "vertical", style = "packed_vertical_flow"}

    local enabled, disabled = Utils.partition(interrupts, function (e) return table.invert(caravan_data.interrupts)[e.name] == nil end)
    if #enabled + #disabled == 0 then
        P.build_no_interrupts_frame(flow)
    else
        local sort_fn = function (a, b) return a.name < b.name end
        table.sort(enabled, sort_fn)
        table.sort(disabled, sort_fn)

        -- can't use list box, c.f. https://forums.factorio.com/viewtopic.php?t=127947

        for i = 1, #enabled do
            local btn = flow.add {type = "button", name = "py_caravan_add_interrupt_list_button_" .. i, style = "list_box_item", tags = tags}
            btn.caption = enabled[i].name
            btn.style.horizontally_stretchable = true
        end
        for i = 1, #disabled do
            local btn = flow.add {type = "button", style = "list_box_item", tags = tags}
            btn.caption = disabled[i].name
            btn.enabled = false
            btn.tooltip = {"caravan-gui.interrupt-already-present"}
            btn.style.horizontally_stretchable = true
        end
    end
    flow.add {type = "empty-widget"}.style.vertically_stretchable = true
end

---@param parent LuaGuiElement
---@param caravan_data table
---@param cursor_location GuiLocation?
---@return LuaGuiElement
function P.build(parent, caravan_data, cursor_location)
    local tags = {unit_number = caravan_data.unit_number}

    local main_frame = P.build_main_frame(parent, cursor_location)

    P.build_title_bar_flow(main_frame, tags)

    local contents_frame = main_frame.add {type = "frame", name = "contents_frame", style = "inside_deep_frame", direction = "vertical", tags = tags}
    P.build_text_input(contents_frame, tags)

    local scroll_pane = contents_frame.add {type = "scroll-pane", name = "scroll_pane", style = "list_box_scroll_pane", tags = tags}
    scroll_pane.vertical_scroll_policy = "auto"
    scroll_pane.style.horizontally_stretchable = true

    P.build_interrupt_list(scroll_pane, caravan_data, storage.interrupts, tags)

    return main_frame
end

function P.update_interrupt_list(player)
    local gui = player.gui.screen.add_interrupt_gui
    if not gui then return end

    local textfield = gui.title_bar_flow.py_caravan_add_interrupt_search_textfield
    local tags = textfield.tags
    local caravan_data = storage.caravans[tags.unit_number]

    local scroll_pane = textfield.parent.parent.contents_frame.scroll_pane
    scroll_pane.contents_flow.destroy()

    local interrupts = Utils.filter(storage.interrupts, function (e) return string.find(e.name, textfield.text) end)

    P.build_interrupt_list(scroll_pane, caravan_data, interrupts, tags)
end

function P.toggle_search_button(player)
    local gui = player.gui.screen.add_interrupt_gui
    if not gui then return end

    local btn = gui.title_bar_flow.py_caravan_add_interrupt_search_button
    local search_field = gui.title_bar_flow.py_caravan_add_interrupt_search_textfield

    btn.toggled = not btn.toggled
    search_field.visible = not search_field.visible

    if search_field.visible then
        search_field.focus()
    else
        search_field.text = ""
        P.update_interrupt_list(player)
    end
end

gui_events[defines.events.on_gui_click]["py_caravan_add_interrupt_search_button"] = function(event)
    local player = game.get_player(event.player_index)
    P.toggle_search_button(player)
end

gui_events[defines.events.on_gui_text_changed]["py_caravan_add_interrupt_search_textfield"] = function(event)
    local player = game.get_player(event.player_index)
    P.update_interrupt_list(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_add_interrupt_list_button_."] = function(event)
    local button = event.element

    local last_clicked_button = clicked_list_buttons[event.player_index]
    if last_clicked_button and last_clicked_button.valid then
        last_clicked_button.toggled = false
    end
    button.toggled = true
    clicked_list_buttons[event.player_index] = button

    local input_textfield = button.parent.parent.parent.subheader_frame.py_caravan_add_interrupt_input_textfield

    input_textfield.text = button.caption
end

py.on_event(defines.events.on_gui_click, function (event)
    if not event.element.valid then return end
    -- do not destroy the frame right after creating it
    if event.element.name == "py_caravan_interrupt_add_button" then return end

    local player = game.get_player(event.player_index)

    local gui = player.gui.screen.add_interrupt_gui
    if not gui then return end

    if not Utils.is_child_of(event.element, gui, 5) then
        gui.destroy()
    end
end)

-- store window location when moved
gui_events[defines.events.on_gui_location_changed]["add_interrupt_gui"] = function(event) Utils.store_gui_location(event.element) end

return P
