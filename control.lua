
local farms = {
	farm1 = require("scripts/crops/farm-ralesia"),
	farm2 = require("scripts/crops/farm-rennea"),
	farm3 = require("scripts/crops/farm-tuuphra"),
	farm4 = require("scripts/crops/farm-grod"),
	farm5 = require("scripts/crops/farm-yotoi"),
	farm6 = require("scripts/crops/farm-kicalk"),
	farm7 = require("scripts/crops/farm-arum"),
	farm8 = require("scripts/crops/farm-yotoi-fruit"),
	farm9 = require("scripts/crops/farm-bioreserve")
}

if script.active_mods["pyalternativeenergy"] then
    local farm10 = require("__pyalternativeenergy__/scripts/crops/farm-mova")
    table.insert(farms, farm10)
end

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
    if remote.interfaces['freeplay'] then
        local get_ship_parts = remote.call('freeplay', "get_ship_parts")
        local crashed_ass_1 = {
            name = 'crash-site-assembling-machine-1-repaired',
            position = {-20, -7},
            force = "player",
            angle_deviation = 0,
            max_distance = 30,
            min_separation = 2,
        }
        local crashed_ass_2 = {
            name = 'crash-site-assembling-machine-1-repaired',
            position = {-12, 2},
            force = "player",
            angle_deviation = 0,
            max_distance = 30,
            min_separation = 2,
        }
        local crashed_lab = {
            name = 'crash-site-lab-repaired',
            position = {10, 10},
            force = "player",
            angle_deviation = 0.1,
            max_distance = 30,
            min_separation = 2,
        }
        local crashed_lab_2 = {
            name = 'crash-site-lab-repaired',
            position = {20, 5},
            force = "player",
            angle_deviation = 0.1,
            max_distance = 30,
            min_separation = 2,
        }

        if not game.active_mods['pyhightech'] then
            table.insert(get_ship_parts,crashed_ass_1)
            table.insert(get_ship_parts,crashed_ass_2)
        end

        table.insert(get_ship_parts, crashed_lab)
        table.insert(get_ship_parts, crashed_lab_2)

        remote.call("freeplay", "set_ship_parts", get_ship_parts)

        if remote.interfaces['freeplay'] then

            local created_items = remote.call("freeplay", "get_created_items")
              created_items["burner-mining-drill"] = 10
              created_items["iron-plate"] = 500
              created_items["copper-plate"] = 500
              created_items["wood"] = 500
              created_items["collector"] = 2

              remote.call("freeplay", "set_created_items", created_items)

        end

    end

    --slaughterhouse
    global.slaughterhouse_gui_open = false
    global.current_entity = {}

    --caravan
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

    if E.name == "mega-farm" then
        --script for placing down the farm
        local posx = -13
        local posy = -13
        local rpos = E.position
        repeat
            --log(posx)
            --log(posy)
            if posx == -13 or posy == -13 or posx == 13 or posy == 13 then
                game.surfaces["nauvis"].create_entity {
                    name = "wood-fence",
                    position = {rpos.x + posx, (rpos.y - 15) + posy},
                    force = E.force
                }
            end
            --create landfill
            game.surfaces["nauvis"].set_tiles {{name = "landfill", position = {rpos.x + posx, (rpos.y - 15) + posy}}}

            posx = posx + 1
            if posx == 14 then
                posx = -13
                posy = posy + 1
            end
        until posy == 14
    elseif E.name == 'outpost' then
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
                --[[
            elseif string.match(event.entity.name, "slaughterhouse") and E.entity.get_recipe() == nil and
            global.slaughterhouse_gui_open == false then
                table.insert(global.current_entity, p_index)
                global.current_entity[p_index] = E.entity
                log(serpent.block(player.opened))
                player.opened[E.entity.name] = nil
                create_slaughterhouse_gui(E)
            ]]--
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
    if event.rocket_silo.name == "mega-farm" then
        local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
        local items = {}

        for k in pairs(item) do
            items["item1"] = k
        end

        local rs = event.rocket_silo

        for _, farm in pairs(farms) do
            --log(serpent.block(farm))
            if items["item1"] == farm.seed then
                --log('hits')
                local recipes = {}
                local output = {}
                for _, recipe in pairs(farm.recipes) do
                    --log(serpent.block(recipe))
                    recipes[recipe.recipe_name] = true
                    output[recipe.recipe_name] = recipe.crop_output
                end
                --log(serpent.block(rs.get_recipe().name))
                if recipes[rs.get_recipe().name] == true then
                    --log('it did a thing')
                    local posx = -11
                    local posy = -11
                    local rpos = event.rocket_silo.position
                    repeat
                        if game.surfaces["nauvis"].find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy}) == nil then
                            game.surfaces["nauvis"].create_entity {
                                name = farm.crop,
                                position = {rpos.x + posx, (rpos.y - 15) + posy},
                                amount = output[rs.get_recipe().name]
                            }
                        else
                            local ore = game.surfaces["nauvis"].find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy})
                            ore.amount = ore.amount + output[rs.get_recipe().name]
                        end
                        posx = posx + 1
                        if posx == 12 then
                            posx = -11
                            posy = posy + 1
                        end
                    until posy == 12
                end
            end
        end
        local rpos = event.rocket_silo.position
        local harvesters =
            game.surfaces["nauvis"].find_entities_filtered {
            area = {{rpos.x - 11, (rpos.y - 15) - 11}, {rpos.x + 11, (rpos.y - 15) + 11}},
            name = {"harvester", "collector"}
        }
        for _, har in pairs(harvesters) do
            har.update_connections()
        end
    end
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
