local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"
local Utils = require "__pyalienlife__/scripts/caravan/utils"
local CaravanImpl = require "__pyalienlife__/scripts/caravan/impl"

local P = {}
 
local function status_info(caravan_data)
    local entity = caravan_data.entity
    if caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty() then
        return {"entity-status.starved"}, "utility/status_not_working"
    elseif entity.health ~= entity.max_health then
        return {"entity-status.wounded"}, "utility/status_yellow"
    elseif not CaravanImpl.is_automated(caravan_data) then
        return {"entity-status.idle"}, "utility/status_yellow"
    else
        return {"entity-status.healthy"}, "utility/status_working"
    end
end

function P.build_title_bar_flow(parent, caravan_data)
    local tags = {unit_number = caravan_data.unit_number}

    local flow = parent.add {type = "flow", name = "title_bar_flow", direction = "horizontal", style = "frame_header_flow"}
    flow.style.vertical_align = "center"
    flow.style.vertically_stretchable = false

    local caravan_name = Utils.get_name(caravan_data)
    flow.add {type = "label", name = "name_label", style = "frame_title", caption = caravan_name}
    flow.add {type = "textfield", name = "py_caravan_rename_textfield", icon_selector = true, visible = false, tags = tags}

    flow.add {type = "sprite-button", name = "py_caravan_rename_button", style = "mini_button_aligned_to_text_vertically_when_centered", sprite = "utility/rename_icon", tags = tags}

    local drag_handler = flow.add {type = "empty-widget", style = "draggable_space_header"}
    drag_handler.style.horizontally_stretchable = true
    drag_handler.style.height = 24
    drag_handler.style.right_margin = 4
    drag_handler.drag_target = parent
    flow.add {type = "sprite-button", name = "py_caravan_close_button", style = "close_button", sprite = "utility/close"}
end

function P.build_main_frame(parent, name, caravan_data)
    local main_frame = parent.add {type = "frame", direction = "vertical", name = name, tags = {unit_number = caravan_data.unit_number}}
    main_frame.style.vertically_stretchable = true

    P.build_title_bar_flow(main_frame, caravan_data)

    -- TODO move that in main build function? need to unroll some functions there
    main_frame.add {type = "frame", direction = "vertical", name = "entity_frame", style = "entity_frame"}

    return main_frame
end

-- TODO put back once groups are implemented
function P.build_subheader_frame(parent)
    local subheader_frame = parent.add {type = "frame", style = "subheader_frame", direction = "horizontal"}
    -- counteract the entity frame padding. We want it for every elemnt, but the subheader frame
    subheader_frame.style.top_margin = -8
    subheader_frame.style.left_margin = -12
    subheader_frame.style.right_margin = -12
    local flow = subheader_frame.add {type = "flow", ignored_by_interaction = true}
    flow.style.vertical_align = "center"

    flow.add {type = "label", style = "train_stop_subheader", caption = "[No group assigned]"}
    flow.add {type = "sprite-button", style = "mini_button_aligned_to_text_vertically_when_centered", sprite = "utility/rename_icon"}
    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true
    flow.add {type = "sprite-button", style = "tool_button", sprite = "utility/map"}
    return subheader_frame
end

function P.build_status_flow(parent, caravan_data)
    local status_flow = parent.add {type = "flow", name = "status_flow", direction = "horizontal"}
    status_flow.style.vertical_align = "center"
    local caption, sprite = status_info(caravan_data)
    status_flow.add {type = "sprite", name = "status_sprite", sprite = sprite, style = "status_image"}.style.stretch_image_to_widget_size = true
    status_flow.add {type = "label", name = "label", caption = caption}
end

function P.build_camera_frame(parent, caravan_data)
    local camera_frame = parent.add {type = "frame", name = "camera_frame", style = "deep_frame_in_shallow_frame"}
    local camera = camera_frame.add {type = "camera", name = "camera", position = caravan_data.entity.position, surface_index = caravan_data.entity.surface.index}
    camera.style.height = 155
    camera.style.horizontally_stretchable = true
    camera.entity = caravan_data.entity
    camera.visible = true
    local prototype = caravan_prototypes[caravan_data.entity.name]
    camera.zoom = (prototype.camera_zoom or 0.75) / 2
end

function P.build_tabbed_pane_frame(parent)
    local frame = parent.add {type = "frame", name = "tabbed_pane_frame", style = "tab_deep_frame_in_entity_frame"}
    local tabbed_pane = frame.add {type = "tabbed-pane", name = "tabbed_pane"}

    return frame
end

function P.update_status_flow(player)
    local gui = player.gui.screen.caravan_new_gui
    if not gui then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    local caption, sprite = status_info(caravan_data)

    local status_flow = gui.entity_frame.status_flow
    status_flow.status_sprite.sprite = sprite
    status_flow.label.caption = caption
end

gui_events[defines.events.on_gui_click]["py_caravan_close_button"] = function(event)
    local player = game.get_player(event.player_index)
    player.opened = nil
end

return P
