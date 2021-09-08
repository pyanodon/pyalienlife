
local function create_sh_animal_table(sh_gui, player, event)

end

local function create_slaughterhouse_gui(event)
    local player = game.players[event.player_index]
    local sh_gui = player.gui.screen.add(
        {
            type = "frame",
            name = "recipe_menu",
            direction = "vertical",
            caption = {'slaughterhouse_gui.gui_title'},
            style = "inner_frame_in_outer_frame"
        }
    )
    sh_gui.add(
        {
            type = "sprite-button",
            name = "slaughterhouse_close",
            sprite = "utility/close_fat"
        }
    )
    sh_gui.force_auto_center()
    create_sh_animal_table(sh_gui, player, event)
    global.slaughterhouse_gui_open = true
end

script.on_init(function()
    global.slaughterhouse_gui_open = false
    global.caravans = {
        outpost_buildings = {},
        caravan_units = {},
        caravan_networks = {},
        first_caravan = false
    }
    global.last_elem_selected ={}
end)

script.on_load(function()

end)

script.on_configuration_changed(function()

end)

local function caravan_scheduler_gui(event)
    local player = game.players[event.player_index]
    local scheduler = player.gui.relative.add({
        type = "frame",
        name = "outpost_gui",
        caption = "lick thine balls",
        anchor =
            {
            name = "outpost",
            type = "container",
            gui = defines.relative_gui_type.container_gui,
            position = defines.relative_gui_position.left,
            },
        direction = "vertical"
    })
    scheduler.add({
        type = "label",
        name = "outpost-header",
        caption = "Outpost Controller"
    })
    scheduler.add({
        type = "switch",
        name = "rp-switch",
        switch_state = "none",
        allow_none_state = "true",
        left_label_caption = {'outpost-gui.requestor'},
        left_label_tooltip = {'outpost-gui.requestor_info'},
        right_label_caption = {'outpost-gui.provider'},
        right_label_tooltip = {'outpost-gui.provider_info'}
    })
end

script.on_event(defines.events.script_raised_built, function(event)

end)

script.on_event(defines.events.script_raised_revive, function(event)

end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
    local E = event.created_entity
    if E.name == 'outpost' then
        global.caravans.outpost_buildings[E.unit_number] = E
    elseif E.name == 'caravan' then
        global.caravans.caravan_units[E.unit_number] = E
        if global.caravans.first_caravan == false then
            global.caravans.first_caravan = true
        end
    end
end)

script.on_event(defines.events.on_entity_died, function(event)

end)

script.on_event(defines.events.on_ai_command_completed, function(event)

end)

--[[
script.on_nth_tick(__, function()

end)
]]--

script.on_event(defines.events.on_tick, function()

end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)

end)

script.on_event(defines.events.on_gui_opened, function(event)
    local E = event
    local p_index = event.player_index
    local player = game.players[p_index]

        if E.entity ~= nil then
            if E.entity.name == "outpost" then
                caravan_scheduler_gui(E)
            elseif string.match(event.entity.name, "slaughterhouse") and E.entity.get_recipe() == nil and
            global.slaughterhouse_gui_open == false then
                table.insert(global.current_entity, p_index)
                global.current_entity[p_index] = E.entity
                log(serpent.block(player.opened))
                player.opened[E.entity.name] = nil
                create_slaughterhouse_gui(E)
            end
        end
end)

script.on_event(defines.events.on_gui_selection_state_changed, function(event)

end)

script.on_event(defines.events.on_gui_switch_state_changed, function(event)
    if event.element.name == "rp-switch" then
        if event.element.switch_state == "left" then
            local frame = event.element.parent.add({
                type = "frame",
                name = "requestor_frame",
                style = "invisible_frame",
                direction = "vertical"
            })
            local table = frame.add({
                type = "table",
                name = "outpost_requests",
                column_count = 10
            })
            for i = 1, 20 do
                table.add({
                    type = "choose-elem-button",
                    name = "outpost_request_elem_" .. i,
                    elem_type = "item"
                })
            end
            local flow = frame.add({
                type = "flow",
                name = "num_flow"
            })
            flow.add({
                type = "slider",
                name = "outpost_request_slider",
                minimum_value = 0,
                maximum_value = 1000000000,
                descrete_values = true
            })
            flow.add({
                type = "textfield",
                name = "outpost_request_slider_text",
                text = flow.outpost_request_slider.slider_value,
                numeric = true,
                lose_focus_on_confirm = true
            })
        elseif event.element.switch_state == "right" then
            --asd
        end
    end
end)

script.on_event(defines.events.on_gui_value_changed, function(event)
    if event.element.name == "outpost_request_slider" then
        event.element.parent["outpost_request_slider_text"].text = tostring(event.element.slider_value)
        global.last_elem_selected.number = event.element.slider_value
    end
end)

script.on_event(defines.events.on_gui_confirmed, function(event)

end)

script.on_event(defines.events.on_gui_elem_changed, function(event)
     if string.match(event.element.name, "outpost_request_elem_") ~= nil then
        log(event.element.elem_value)
        local parent = event.element.parent
        local sp = parent.add({
            type = "sprite-button",
            name = event.element.name .. "_value",
            sprite = "item/" .. event.element.elem_value,
            number = 0,
            index = event.element.get_index_in_parent()
        })
        global.last_elem_selected = sp
        event.element.destroy()
    end
end)

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.type == "sprite-button" and string.match(event.element.name, "outpost_request_elem_") ~= nil then
        event.element.parent.parent["num_flow"]["outpost_request_slider"].slider_value = event.element.number
        event.element.parent.parent["num_flow"]["outpost_request_slider_text"].text = tostring(event.element.number)
    end
end)

script.on_event(defines.events.on_gui_closed, function(event)

end)

script.on_event(defines.events.on_gui_text_changed, function(event)
    if event.element.name == "outpost_request_slider_text" then
        event.element.parent["outpost_request_slider"].slider_value = tonumber(event.element.text)
        global.last_elem_selected.number = tonumber(event.element.text)
    end
end)

script.on_event(defines.events.on_rocket_launched, function(event)

end)

script.on_event(defines.events.on_player_selected_area, function(event)

end)

script.on_event(defines.events.on_resource_depleted, function(event)

end)

script.on_event(defines.events.on_player_cursor_stack_changed, function(event)

end)

script.on_event(defines.events.on_player_used_capsule, function(event)

end)

script.on_event(defines.events.on_research_finished, function(event)

end)

script.on_event("tech-upgrades", function(event)

end)

script.on_event(defines.events.on_cutscene_cancelled, function(event)

end)

script.on_event(defines.events.on_selected_entity_changed, function(event)

end)
