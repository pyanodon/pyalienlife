local caravan_prototypes = require("caravan-prototypes")
require "gui/components"

local AddInterruptGui = require "gui/add_interrupt"

local P = {}
CaravanGui = P

function P.get_gui(player)
    local gui = player.gui.screen.caravan_new_gui
    if gui then return gui end
end

function P.build(player, caravan_data)
    local main_frame = CaravanGuiComponents.build_main_frame(player.gui.screen, "caravan_new_gui", caravan_data)
    main_frame.auto_center = true
    player.opened = main_frame
    -- TODO put back once groups are implemented
    -- CaravanGuiComponents.build_subheader_frame(main_frame.entity_frame)
    CaravanGuiComponents.build_status_flow(main_frame.entity_frame, caravan_data)
    CaravanGuiComponents.build_camera_frame(main_frame.entity_frame, caravan_data)

    local tab_frame = CaravanGuiComponents.build_tabbed_pane_frame(main_frame.entity_frame)
    local tabbed_pane = tab_frame.tabbed_pane

    -- TODO unroll those functions like the ones above?
    local schedule_tab = CaravanGuiComponents.build_schedule_tab(tabbed_pane, caravan_data)
    local cargo_tab = CaravanGuiComponents.build_cargo_tab(tabbed_pane, player, caravan_data)
    if not player.can_reach_entity(caravan_data.entity) then
        cargo_tab.enabled = false
        -- TODO localise
        cargo_tab.tooltip = "Caravan is out of reach."
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
    cargo_tab.enabled = can_reach_caravan

    if can_reach_caravan then
        cargo_tab.tooltip = nil
        CaravanGuiComponents.update_cargo_pane(player)
    else
        cargo_tab.tooltip = "Caravan is out of reach."
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
    if not event.element or event.element.name ~= "caravan_new_gui" then return end
    local player = game.get_player(event.player_index)
    local gui = event.element

    -- only close the main GUI if no other "pop-ups" are on the screen
    local slider_frame = CaravanGuiComponents.get_slider_frame(player) 
    local add_interrupt_frame = player.gui.screen.add_interrupt_gui
    -- Ideally, it should rely on a 'focused' attribute, but it doesn't exist.
    local renaming_caravan = gui.title_bar_flow.py_caravan_rename_textfield.visible

    local should_close_gui = not (slider_frame ~= nil or add_interrupt_frame ~= nil or renaming_caravan)
    
    if should_close_gui then
        local edit_interrupt_gui = player.gui.screen.edit_interrupt_gui
        if edit_interrupt_gui then
            edit_interrupt_gui.destroy()
            storage.edited_interrupt = nil
        end
        gui.destroy()
    else
        if slider_frame then
            slider_frame.destroy()
        elseif add_interrupt_frame then
            local btn = storage.gui_elements_by_name["py_add_interrupt_search_button"]
            if btn and btn.toggled then
                AddInterruptGui.toggle_search_button(player)
            else
                add_interrupt_frame.destroy()
            end
        elseif renaming_caravan then
            local textfield = gui.title_bar_flow.py_caravan_rename_textfield
            local label = textfield.parent.name_label
            label.visible = true
            textfield.visible = false
        end
        player.opened = player.gui.screen.caravan_new_gui
    end
end)

return P
