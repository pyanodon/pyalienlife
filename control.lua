
script.on_init(function()
    global.caravans = {
        outpost_buildings = {},
        caravan_units = {},
        caravan_networks = {},
        first_caravan = false
    }
end)

script.on_load(function()

end)

script.on_configuration_changed(function()

end)

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

end)

script.on_event(defines.events.on_gui_selection_state_changed, function(event)

end)

script.on_event(defines.events.on_gui_switch_state_changed, function(event)

end)

script.on_event(defines.events.on_gui_value_changed, function()

end)

script.on_event(defines.events.on_gui_confirmed, function(event)

end)

script.on_event(defines.events.on_gui_elem_changed, function(event)

end)

script.on_event(defines.events.on_gui_click, function(event)

end)

script.on_event(defines.events.on_gui_closed, function(event)

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
