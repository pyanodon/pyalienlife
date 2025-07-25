local caravan_prototypes = require "caravan-prototypes"

local CaravanGui = require "gui"
local Utils = require "utils"
local Impl = require "impl"

local function add_gui_row(caravan_data, key, table)
    local entity = caravan_data.entity
    local prototype = caravan_prototypes[entity.name]

    table = table.add {type = "frame", direction = "vertical", tags = {unit_number = key}}

    local button_flow = table.add {type = "flow", direction = "horizontal"}
    button_flow.style.vertical_align = "top"
    button_flow.style.height = 30

    local caption_flow = button_flow.add {type = "flow", direction = "horizontal"}

    local title = caption_flow.add {
        name = "title",
        type = "label",
        caption = Utils.get_name(caravan_data),
        style = "frame_title",
        ignored_by_interaction = true
    }
    title.style.maximal_width = 150

    local rename_button = caption_flow.add {
        type = "sprite-button",
        name = "py_rename_caravan_button",
        style = "mini_button_aligned_to_text_vertically_when_centered",
        sprite = "utility/rename_icon",
        tags = {unit_number = key, maximal_width = 150}
    }
    rename_button.style.top_margin = 6

    button_flow.add {type = "empty-widget"}.style.horizontally_stretchable = true

    local tooltip = Utils.get_summary_tooltip(caravan_data)
    local view_inventory_button = button_flow.add {
        type = "sprite-button",
        name = "py_view_inventory_button",
        style = "tool_button",
        sprite = "utility/center",
        tooltip = tooltip,
        tags = {unit_number = caravan_data.unit_number}
    }

    local open_caravan_button = button_flow.add {
        type = "sprite-button",
        name = "py_click_caravan",
        style = "tool_button",
        sprite = "utility/logistic_network_panel_black",
        hovered_sprite = "utility/logistic_network_panel_black",
        clicked_sprite = "utility/logistic_network_panel_black",
        tooltip = {"caravan-gui.open", entity.prototype.localised_name},
        tags = {unit_number = caravan_data.unit_number}
    }

    local open_map_button = button_flow.add {
        type = "sprite-button",
        name = "py_open_map_button",
        style = "tool_button",
        sprite = "utility/map",
        tooltip = {"caravan-gui.view-on-map"},
        tags = {unit_number = caravan_data.unit_number}
    }

    for _, button in pairs {open_caravan_button, view_inventory_button, open_map_button} do
        button.style.size = {30, 30}
        button.style.top_margin = -2
        button.style.bottom_margin = -4
    end

    local camera_frame = table.add {type = "frame", name = "camera_frame", style = "inside_shallow_frame"}
    local camera = camera_frame.add {type = "camera", name = "camera", style = "py_caravan_camera", position = entity.position, surface_index = entity.surface.index}
    camera.entity = entity
    camera.visible = true
    camera.style.height = 155
    camera.zoom = (prototype.camera_zoom or 1) / 2

    local status_flow = table.add {type = "flow", direction = "horizontal"}
    status_flow.style.height = 0
    status_flow.style.top_margin = -26
    status_flow.style.bottom_margin = 6
    status_flow.style.left_margin = 5
    local status_sprite = status_flow.add {type = "sprite"}
    status_sprite.resize_to_sprite = false
    status_sprite.style.size = {16, 16}
    local status_text = status_flow.add {type = "label"}
    local state, img = Impl.status_info(caravan_data)
    status_text.caption = {"", "[font=default-bold]", state, "[/font]"}
    status_sprite.sprite = img
    status_text.style.right_margin = 4
end

gui_events[defines.events.on_gui_click]["py_click_caravan"] = function(event)
    local player = game.get_player(event.player_index) ---@as LuaPlayer
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]

    CaravanGui.build(player, caravan_data)
end

gui_events[defines.events.on_gui_click]["py_view_inventory_button"] = function(event)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local tooltip = Utils.get_summary_tooltip(caravan_data)
    element.tooltip = tooltip
end

gui_events[defines.events.on_gui_click]["py_open_map_button"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local entity = caravan_data.entity
    local position = entity.position
    if entity then position = entity.position end

    player.opened = nil
    if entity then
        player.centered_on = entity
    end
end

local function title_edit_mode(caption_flow, caravan_data)
    local title = caption_flow.title
    local index = title.get_index_in_parent()
    title.destroy()

    local textfield = caption_flow.add {
        type = "textfield",
        name = "py_rename_caravan_textfield",
        text = Utils.get_name(caravan_data),
        tags = {index = caravan_data.entity.unit_number},
        index = index
    }
    textfield.focus()
    textfield.select_all()
    textfield.style.maximal_width = 150
    local button = caption_flow.py_rename_caravan_button
    ---@class SpriteButton.style
    ---@diagnostic disable-next-line: assign-type-mismatch
    button.style = "item_and_count_select_confirm"
    button.sprite = "utility/check_mark"
    button.hovered_sprite = "utility/check_mark"
    button.clicked_sprite = "utility/check_mark"
    button.style.size = {26, 26}
end

local function title_display_mode(caption_flow, caravan_data)
    local textfield = caption_flow.py_rename_caravan_textfield
    local index = textfield.get_index_in_parent()
    textfield.destroy()

    local title = caption_flow.add {
        type = "label",
        name = "title",
        caption = Utils.get_name(caravan_data),
        style = "train_stop_subheader",
        index = index
    }
    title.style.left_padding = 0
    local button = caption_flow.py_rename_caravan_button
    button.style = "mini_button_aligned_to_text_vertically_when_centered"
    button.sprite = "rename_icon_small_black"
    button.hovered_sprite = "rename_icon_small_black"
    button.clicked_sprite = "rename_icon_small_black"

    title.style.maximal_width = button.tags.maximal_width or error("No maximal width")
end

gui_events[defines.events.on_gui_click]["py_rename_caravan_button"] = function(event)
    local element = event.element
    local caravan_data = storage.caravans[element.tags.unit_number]
    local caption_flow = element.parent
    if caption_flow.title then
        title_edit_mode(caption_flow, caravan_data)
    else
        title_display_mode(caption_flow, caravan_data)
    end
end

gui_events[defines.events.on_gui_text_changed]["py_rename_caravan_textfield"] = function(event)
    local element = event.element
    local caravan_data = storage.caravans[element.tags.index]
    caravan_data.name = element.text
end

gui_events[defines.events.on_gui_confirmed]["py_rename_caravan_textfield"] = function(event)
    local element = event.element
    local caravan_data = storage.caravans[element.tags.index]
    title_display_mode(element.parent, caravan_data)
end

local function has_any_caravan_at_all()
    for _, caravan in pairs(storage.caravans) do
        if Impl.validity_check(caravan) then return true end
    end
    return false
end

local function create_gui(gui, player)
    local has_any = has_any_caravan_at_all()

    local table = gui.add {
        type = "table",
        name = "table",
        column_count = 4,
        style = "filter_group_table"
    }
    if has_any then
        for key, caravan_data in pairs(storage.caravans) do
            if Impl.validity_check(caravan_data) and caravan_data.entity.force_index == player.force_index then
                add_gui_row(caravan_data, key, table)
            end
        end
    else
        local gui = gui.add {type = "frame", style = "negative_subheader_frame", direction = "horizontal", name = "no_spacecrafts_frame", index = 1}
        gui.style.top_margin = -4
        gui.style.left_margin = -8
        gui.style.right_margin = -20
        gui = gui.add {type = "flow", direction = "horizontal", style = "centering_horizontal_flow"}
        gui.style.horizontally_stretchable = true
        local warning = gui.add {type = "label", caption = "[font=heading-1]⚠[/font]", style = "bold_label"}
        warning.style.top_margin = 4
        warning.style.bottom_margin = -4
        gui.add {type = "label", caption = {"caravan-gui.empty"}, style = "bold_label"}.style.single_line = false
        gui.add {type = "label", caption = {"caravan-gui.empty-2"}}.style.single_line = false
    end
    for i = 1, 4 do
        for i = 1, 2 do
            local ew = table.add {type = "empty-widget"}
            ew.style.vertically_stretchable = true
            ew.style.horizontally_stretchable = true
        end
    end
end

local function on_search(search_key, gui, player)
    search_key = search_key:lower()
    for _, child in pairs(gui.table.children) do
        if child.type == "frame" then
            local unit_number = child.tags.unit_number
            local caravan_data = storage.caravans[unit_number]
            if caravan_data then
                local visible = search_key == "" or Utils.get_name(caravan_data):lower():find(search_key, 1, true)
                child.visible = not not visible -- cast to boolean becuase factorio 2.0 is picky
            end
        end
    end
end

remote.add_interface("pywiki_caravan_manager", {
    create_gui = create_gui,
    on_search = on_search,
})
