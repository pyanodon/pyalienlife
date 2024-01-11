require 'caravan-gui-shared'
local Table = require('__stdlib__/stdlib/utils/table')

Caravan.events.on_gui_opened_enable = function(event)
    local player = game.get_player(event.player_index)
    local entity = event.entity
    if not entity then
        return
    end
    if entity.name == 'aerial-outpost' or entity.name == 'outpost' then
        return
    end
    -- Caravan.events.on_close_outpost_gui(event)
    if not Caravan.has_any_caravan(entity) then
        return
    end
    local main_frame = player.gui.center
    main_frame.add {
        type = "sprite-button",
        name = "open-caravan-list",
        sprite = "utility/close_white",
        style = "frame_action_button",
        tags = { entity = entity }
    }
end

