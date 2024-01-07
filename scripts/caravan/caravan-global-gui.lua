Caravan.events.on_open_global_gui = function(event)
    local player = game.get_player(event.player_index)
    if Caravan.events.on_close_global_gui(event) then
        return
    end
    local frame = player.gui.screen.add { type = 'frame', name = 'caravan_gui_global', caption = { 'caravan-global-gui.caption' }, direction = 'vertical' }
    frame.auto_center = true
    local scroll_pane = frame.add {
        type = 'scroll-pane',
        name = 'global-caravan-pane'
    }
    local table = scroll_pane.add {
        type = 'table',
        name = 'my_table',
        column_count = 2
    }
    table.add { type = 'label', caption = 'Key' }
    table.add { type = 'label', caption = 'Value' }
    for key, value in pairs(global.caravans) do
        if Caravan.validity_check(value) then
            table.add { type = 'label', name = 'click_caravan_.' .. tostring(key),
                        style = 'clickable_squashable_label',
                        tags = { unit_number = key, entity = value },
                        caption = tostring(key) }
            table.add { type = 'label', caption = tostring(value.entity.name) }
        end
    end
end

gui_events[defines.events.on_gui_click]['click_caravan_.'] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = global.caravans[tags.unit_number]
    if caravan_data then
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