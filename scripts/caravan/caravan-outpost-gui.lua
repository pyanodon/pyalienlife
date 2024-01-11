require 'caravan-gui-shared'
local Table = require('__stdlib__/stdlib/utils/table')



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
    if not has_any_caravan(entity) then
        return
    end
    local main_frame = player.gui.relative.add {
            type = 'frame',
            name = 'outpost_caravan_gui',
            caption = entity.prototype.localised_name,
            direction = 'vertical',
            anchor = {
                gui = defines.relative_gui_type.container_gui,
                position = defines.relative_gui_position.right
            }
        }
    main_frame.style.width = 436
    main_frame.style.minimal_height = 710
    main_frame.tags = { unit_number = entity.unit_number }

    local content_frame = main_frame.add { type = 'frame', direction = 'vertical',
                                           style = 'inside_shallow_frame_with_padding' }
    content_frame.style.vertically_stretchable = true
    local content_flow = content_frame.add { type = 'flow', direction = 'vertical' }
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
        column_count = 3
    }
    table.add { type = 'label', caption = 'Key' }
    table.add { type = 'label', caption = 'Value' }
    table.add { type = 'label', caption = 'Value' }
    for key, caravan_data in pairs(global.caravans) do
        if has_schedule(caravan_data, entity) then
            Caravan.add_gui_row(caravan_data, key, table)
        end
    end
end

Caravan.events.on_close_outpost_gui = function(event)
    local player = game.get_player(event.player_index)
    if not player.gui.relative.outpost_caravan_gui then
        return
    end
    player.gui.relative.outpost_caravan_gui.destroy()
    return true
end