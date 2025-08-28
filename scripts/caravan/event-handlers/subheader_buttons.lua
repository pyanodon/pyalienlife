local CaravanGui = require "__pyalienlife__/scripts/caravan/gui"
local CaravanGuiComponents = require "__pyalienlife__/scripts/caravan/gui/components"
local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"

gui_events[defines.events.on_gui_click]["py_caravan_rename_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    local textfield = event.element.parent.py_caravan_rename_textfield
    local label = event.element.parent.name_label

    textfield.visible, label.visible = label.visible, textfield.visible
    if textfield.visible then
        textfield.focus()
        textfield.text = label.caption
    else
        -- clicking on the rename button acts as a confirm
        label.caption = textfield.text 
        caravan_data.name = textfield.text
    end
end

gui_events[defines.events.on_gui_confirmed]["py_caravan_rename_textfield"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    local textfield = event.element.parent.py_caravan_rename_textfield
    local label = event.element.parent.name_label

    textfield.visible = false
    label.visible = true
    label.caption = textfield.text 
    caravan_data.name = textfield.text
end

gui_events[defines.events.on_gui_click]["py_refocus"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local gui = CaravanGui.get_gui(player)
    local camera = gui.entity_frame.camera_frame.camera
    local refocus = gui.entity_frame.subheader_frame.contents_flow.py_refocus

    camera.entity = caravan_data.entity
    refocus.visible = false
    camera.zoom = caravan_prototypes[caravan_data.entity.name].camera_zoom or 0.5
end
