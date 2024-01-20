require 'caravan-gui-shared'

function add_titlebar(gui, caption, close_button_name)
    local titlebar = gui.add{type = "flow"}
    titlebar.drag_target = gui
    titlebar.add{
        type = "label",
        style = "frame_title",
        caption = caption,
        ignored_by_interaction = true,
    }
    local filler = titlebar.add{
        type = "empty-widget",
        style = "draggable_space",
        ignored_by_interaction = true,
    }
    filler.style.height = 24
    filler.style.horizontally_stretchable = true
    titlebar.add{
        type = "sprite-button",
        name = close_button_name,
        style = "frame_action_button",
        sprite = "utility/close_white",
        hovered_sprite = "utility/close_black",
        clicked_sprite = "utility/close_black",
        tooltip = {"gui.close-instruction"},
    }
end


Caravan.events.on_open_global_gui = function(event)
    local player = game.get_player(event.player_index)
    if Caravan.events.on_close_global_gui(event) then
        return
    end
    local main_frame = player.gui.screen.add { type = 'frame', name = 'caravan_gui_global',  direction = 'vertical' }
    add_titlebar(main_frame,{ 'caravan-global-gui.caption' },'click_close_global_gui')
    main_frame.style.width = 436
    main_frame.style.minimal_height = 710

    local content_frame = main_frame.add { type = 'frame', direction = 'vertical',
                                           style = 'inside_shallow_frame_with_padding' }
    content_frame.style.vertically_stretchable = true
    local content_flow = content_frame.add { type = 'flow', direction = 'vertical' }
    content_flow.style.vertical_spacing = 8
    content_flow.style.margin = { -4, 0, -4, 0 }
    content_flow.style.vertical_align = 'center'
    main_frame.auto_center = true
    local scroll_pane = content_flow.add {
        type = 'scroll-pane',
        name = 'global-caravan-pane'
    }
    local table = scroll_pane.add {
        type = 'table',
        name = 'my_table',
        column_count = 3
    }
    table.add { type = 'label', caption = 'Key' }
    table.add { type = 'label', caption = 'Value' }
    table.add { type = 'label', caption = 'Value' }
    for key, caravan_data in pairs(global.caravans) do
        if Caravan.validity_check(caravan_data) then
            Caravan.add_gui_row(caravan_data, key, table)
        end
    end
end

gui_events[defines.events.on_gui_click]['click_close_global_gui'] = function(event)
    Caravan.events.on_close_global_gui(event)
end


gui_events[defines.events.on_gui_click]['click_caravan_.'] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = global.caravans[tags.unit_number]
    if Caravan.validity_check(caravan_data) then
        Caravan.build_gui(player, caravan_data.entity)
    end
end

Caravan.events.on_close_global_gui = function(event)
    local player = game.get_player(event.player_index)
    if player.gui.screen.caravan_gui_global then
        player.gui.screen.caravan_gui_global.destroy()
        return true
    end
    return false
end