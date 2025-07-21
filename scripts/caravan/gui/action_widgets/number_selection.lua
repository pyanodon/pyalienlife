local Utils = require "__pyalienlife__/scripts/caravan/utils"

local P = {}

local prefix = "py_caravan_action_number_selection"

local L = {}

function L.time_slider_maximum_value() return 120 end
function L.time_slider_default_value() return 5 end
function L.time_slider_value_step() return 1 end
function L.time_format_value(v) return v .. " s" end

function L.count_slider_maximum_value() return 50000 end
function L.count_slider_default_value() return 0 end
function L.count_slider_value_step() return 10 end
function L.count_format_value(v)
    local s = tostring(v)
    local len = string.len(s)

    local units = {"", "k", "M", "G"}

    local remainder = len % 3
    local nb_fractional_digits = remainder == 0 and 3 or remainder
    local res = s:sub(1, nb_fractional_digits)

    if len > 1 and nb_fractional_digits == 1 then
        local i = nb_fractional_digits + 1
        res = res .. "." .. s:sub(i, i) 
    end

    local nb_thousands = math.floor((len - 1) / 3)

    return res .. units[1 + nb_thousands]
end

local function destroy_slider_frame(event)
    local player = game.get_player(event.player_index)

    if player.gui.screen[prefix .. "_frame"] then 
        player.gui.screen[prefix .. "_frame"].destroy()
    end
end

local function build_slider(event)
    local tags = event.element.tags
    local player = game.get_player(event.player_index)

    destroy_slider_frame(event)

    local slider_frame = player.gui.screen.add {type = "frame", name = prefix .. "_frame", style = "number_input_frame", tags = tags}
    local flow = slider_frame.add {type = "flow", style = "player_input_horizontal_flow", tags = tags}
    flow.style.vertical_align = "center"

    local action = Utils.get_action_from_button(event.element)

    local max_value = L[tags.elem_type .. "_slider_maximum_value"]()
    local default_value = L[tags.elem_type .. "_slider_default_value"]()
    local value_step = L[tags.elem_type .. "_slider_value_step"]()
    local value = tags.elem_type == "time" and action.wait_time or action.item_count

    local slider = flow.add {type = "slider", name = prefix .. "_slider", minimum_value = 0, maximum_value = max_value, value = value or default_value, value_step = value_step, tags = tags}
    local textfield = flow.add {type = "textfield", name = prefix .. "_text_field", style = "slider_value_textfield", lose_focus_on_confirm = true, tags = tags}
    textfield.text = tostring(value or slider.slider_value)
    textfield.focus()
    local confirm_button = flow.add {type = "sprite-button", name = prefix .. "_confirm_button", style = "item_and_count_select_confirm", tags = tags}
    confirm_button.sprite = "utility/check_mark"

    slider_frame.location = event.cursor_display_location
end

local function update_slider_textfield(event)
    local slider = event.element
    local textfield = slider.parent[prefix .. "_text_field"]
    textfield.text = tostring(slider.slider_value)
end

local function update_slider(event)
    local textfield = event.element
    local slider = textfield.parent[prefix .. "_slider"]

    slider.slider_value = math.max(tonumber(textfield.text) or 0, 0)
end

local function update_action_value(event, button)
    local tags = event.element.tags
    local textfield = event.element.parent[prefix .. "_text_field"]
    local value = tonumber(textfield.text) or 0

    local action = Utils.get_action_from_button(event.element)

    if tags.elem_type == "time" then
        action.wait_time = value
    else
        value = math.min(2147483647, value)
        action.item_count = value
    end

    button.caption = L[tags.elem_type .. "_format_value"](value)
end

-- confirmation is handled in event-handlers/, as state gets changed
gui_events[defines.events.on_gui_click][prefix .. "_button"] = build_slider
gui_events[defines.events.on_gui_value_changed][prefix .. "_slider"] = update_slider_textfield
gui_events[defines.events.on_gui_text_changed][prefix .. "_text_field"] = update_slider

py.on_event(defines.events.on_gui_click, function (event)
    if not event.element.valid then return end
    -- do not destroy the frame right after creating it
    if event.element.name == prefix .. "_button" then return end

    local player = game.get_player(event.player_index)

    local slider_frame = player.gui.screen[prefix .. "_frame"] 
    if not slider_frame then return end

    if not Utils.is_child_of(event.element, slider_frame, 3) then
        slider_frame.destroy()
    end
end)

function P.get_slider_frame(player)
    return player.gui.screen[prefix .. "_frame"]
end

function P.build_time_selection_button(parent, action, tags)
    tags.elem_type = "time"
    local btn = parent.add {type = "button", name = prefix .. "_button", style = "train_schedule_condition_time_selection_button", tags = tags}
    btn.style.width = 60
    btn.caption = L.time_format_value(action.wait_time or 5)

    return btn
end

function P.build_count_selection_button(parent, action, tags)
    tags.elem_type = "count"
    local btn = parent.add {type = "button", name = prefix .. "_button", style = "train_schedule_condition_time_selection_button", tags = tags}
    btn.style.width = 60
    btn.caption = L[tags.elem_type .. "_format_value"](action.item_count or 0)

    return btn
end

return P
