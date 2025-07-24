local caravan_prototypes = require("caravan-prototypes")
require "gui/components"

local AddInterruptGui = require "gui/add_interrupt"

local P = {}
CaravanGui = P

local function can_view_cargo_tab(player, caravan_data)
    if player.controller_type == defines.controllers.character then
        return player.can_reach_entity(caravan_data.entity)
    end
    return false
end

local function disabled_cargo_tab_tooltip(player)
    if player.controller_type == defines.controllers.character then
        return "Caravan is out of reach."
    elseif player.controller_type == defines.controllers.remote then
        return "Cannot interact with cargo in remote view."
    end
    return "Cannot interact with cargo in " .. tostring(player.controller_type) .. " mode."
end

function P.get_gui(player)
    local gui = player.gui.screen.caravan_gui
    if gui then return gui end
end

function P.build(player, caravan_data)
    local main_frame = CaravanGuiComponents.build_main_frame(player.gui.screen, "caravan_gui", caravan_data)
    if storage.caravan_gui_last_location then
        main_frame.location = storage.caravan_gui_last_location
        storage.caravan_gui_last_location = nil
    else
        main_frame.auto_center = true
    end
    player.opened = main_frame
    CaravanGuiComponents.build_subheader_frame(main_frame.entity_frame, caravan_data)
    CaravanGuiComponents.build_status_flow(main_frame.entity_frame, caravan_data)
    CaravanGuiComponents.build_camera_frame(main_frame.entity_frame, caravan_data)

    local tab_frame = CaravanGuiComponents.build_tabbed_pane_frame(main_frame.entity_frame)
    local tabbed_pane = tab_frame.tabbed_pane

    local schedule_tab = CaravanGuiComponents.build_schedule_tab(tabbed_pane, caravan_data)
    local cargo_tab = CaravanGuiComponents.build_cargo_tab(tabbed_pane, player, caravan_data)
    if not can_view_cargo_tab(player, caravan_data) then
        cargo_tab.enabled = false
        cargo_tab.tooltip = disabled_cargo_tab_tooltip(player)
    end
    return main_frame
end

function P.update_gui(player)
    local gui = P.get_gui(player)
    if not gui then return end

    CaravanGuiComponents.update_status_flow(player)
    CaravanGuiComponents.update_schedule_pane(player)

    local caravan_data = storage.caravans[gui.tags.unit_number]
    local can_reach_caravan = player.can_reach_entity(caravan_data.entity)
    local cargo_tab = gui.entity_frame.tabbed_pane_frame.tabbed_pane.cargo_tab

    cargo_tab.enabled = can_view_cargo_tab(player, caravan_data)

    if cargo_tab.enabled then
        cargo_tab.tooltip = nil
        CaravanGuiComponents.update_cargo_pane(player)
    else
        cargo_tab.tooltip = disabled_cargo_tab_tooltip(player)
        gui.entity_frame.tabbed_pane_frame.tabbed_pane.selected_tab_index = 1
    end
end

function P.cargo_tab_enabled(player)
    local gui = P.get_gui(player)
    if not gui then return false end

    return gui.entity_frame.tabbed_pane_frame.tabbed_pane.cargo_tab.enabled
end

-- TODO what about on_player_changed_surface?
py.on_event(defines.events.on_gui_closed, function(event)
    if not event.element or event.element.name ~= "caravan_gui" then return end
    local player = game.get_player(event.player_index)
    local gui = event.element

    -- only close the main GUI if no other "pop-ups" are on the screen
    local slider_frame = CaravanGuiComponents.get_slider_frame(player) 
    local add_interrupt_frame = player.gui.screen.add_interrupt_gui
    local edit_interrupt_frame = player.gui.screen.edit_interrupt_gui
    -- Ideally, it should rely on a 'focused' attribute, but it doesn't exist.
    local caravan_rename_textfield = gui.entity_frame.subheader_frame.contents_flow.py_caravan_rename_textfield
    local renaming_caravan = caravan_rename_textfield.visible

    local should_close_gui = not (slider_frame ~= nil or add_interrupt_frame ~= nil or edit_interrupt_frame ~= nil or renaming_caravan)
    
    if should_close_gui then
        gui.destroy()
    else
        if slider_frame then
            slider_frame.destroy()
        elseif add_interrupt_frame then
            local btn = storage.gui_elements_by_name["py_caravan_add_interrupt_search_button"]
            if btn and btn.toggled then
                AddInterruptGui.toggle_search_button(player)
            else
                add_interrupt_frame.destroy()
            end
        elseif edit_interrupt_frame then
            edit_interrupt_frame.destroy()
            storage.edited_interrupt = nil
        elseif renaming_caravan then
            local label = caravan_rename_textfield.parent.name_label
            label.visible = true
            caravan_rename_textfield.visible = false
        end
        player.opened = player.gui.screen.caravan_gui
    end
end)

return P
