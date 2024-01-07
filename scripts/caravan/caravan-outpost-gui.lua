local function hasSchedule(caravan_data, entity)
    if not Caravan.validity_check(caravan_data) then
        return false
    end
    if not caravan_data.schedule then
        return false
    end
    for _, schedule in pairs(caravan_data.schedule) do
        if schedule.entity == entity then
            return true
        end
    end
    return false
end

local function any_caravan(entity)
    for key, value in pairs(global.caravans) do
        if hasSchedule(value, entity) then
            return true
        end
    end
    return false
end

Caravan.events.on_gui_opened_outpost = function(event)
    local player = game.get_player(event.player_index)
    local entity = event.entity
    if not entity then
        return
    end
    if entity.name ~= 'aerial-outpost' and entity.name ~= 'outpost' then
        return
    end
    Caravan.events.on_close_outpost_gui(event)
    if not any_caravan(entity) then
        return
    end
    local main_frame
    if false then
        main_frame = player.gui.screen.add { type = 'frame', name = 'caravan_gui', caption = entity.prototype.localised_name, direction = 'vertical' }
        main_frame.auto_center = true
        player.opened = main_frame
    else
        main_frame = player.gui.relative.add {
            type = 'frame',
            name = 'outpost_caravan_gui',
            caption = entity.prototype.localised_name,
            direction = 'vertical',
            anchor = {
                gui = defines.relative_gui_type.container_gui,
                position = defines.relative_gui_position.right
            }
        }
    end
    main_frame.style.width = 436
    main_frame.style.minimal_height = 710
    main_frame.tags = { unit_number = entity.unit_number }

    local content_frame = main_frame.add { type = 'frame', name = 'content_frame_outpost', direction = 'vertical',
                                           style = 'inside_shallow_frame_with_padding' }
    content_frame.style.vertically_stretchable = true
    local content_flow = content_frame.add { type = 'flow', name = 'content_flow_outpost', direction = 'vertical' }
    content_flow.style.vertical_spacing = 8
    content_flow.style.margin = { -4, 0, -4, 0 }
    content_flow.style.vertical_align = 'center'
    local scroll_pane = content_flow.add {
        type = 'scroll-pane',
        name = 'outpost-caravan-pane'
    }
    local table = scroll_pane.add {
        type = 'table',
        name = 'my_table',
        column_count = 2
    }
    table.add { type = 'label', caption = 'Key' }
    table.add { type = 'label', caption = 'Value' }
    for key, value in pairs(global.caravans) do
        if hasSchedule(value, entity) then
            table.add { type = 'label', name = 'click_caravan_.' .. tostring(key),
                        style = 'clickable_squashable_label',
                        tags = { unit_number = key, entity = value },
                        caption = tostring(key) }
            table.add { type = 'label', caption = tostring(value.entity.name) }
        end
    end
    game.print('it shoudl')
end

Caravan.events.on_close_outpost_gui = function(event)
    local player = game.get_player(event.player_index)
    if player.gui.relative.outpost_caravan_gui then
        player.gui.relative.outpost_caravan_gui.destroy()
        return true
    end
    return false
end