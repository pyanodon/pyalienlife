--[[
global.landbots =
	{
		towers =
			{
				towerid =
					{
						requestors =
							{

							},
						providers =
							{

							},
						botstorage,
						totalbots,
						maxcontrolablebots,
						position,
					}
			}
	}
]] --

local landbots = {towers = {}}
local towercounter = 0
--local requesterchests = {}

script.on_init(
    function()
        global.landbots = {}
        global.towercounter = 0
    end
)

script.on_event(
    {defines.events.on_built_entity, defines.events.on_robot_built_entity},
    function(event)
        local E = event.created_entity
        log(E.name)
		--log(serpent.block(landbots))

        --swap the roboport for the control tower entity
        if E.name == 'hidden-roboport-for-logistics-radius' then
            local tower = game.surfaces['nauvis'].create_entity {name = 'lb-control-tower', position = {E.position.x, E.position.y}, force = E.force}
            E.destroy()

            towercounter = towercounter+1
            landbots.towers[towercounter] = {position = tower.position, totalbots = 0, maxcontrolablebots = 50,botids = {},requestorchests = {}, providerchests = {}}
        elseif E.name == 'land-bot' then
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if E.position.x * tower.position.x + E.position.y * tower.position.y <= 30 * 30 then
                    if tower.totalbots < tower.maxcontrolablebots then
                        tower.totalbots = tower.totalbots + 1
                        table.insert(tower.botids, E.unit_number)
                    end
                end
            end
        elseif E.name == 'lb-requester-chest' then
            local chestcontrols = game.surfaces['nauvis'].create_entity {name = 'lb-requester-controls', position = {E.position.x, E.position.y}, force = E.force}
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if E.position.x * tower.position.x + E.position.y * tower.position.y <= 30 * 30 then
                    tower.requestorchests[E.unit_number] = {chest = E,controls = chestcontrols}
                    --requesterchests['chest'..E.unit_number] = chestcontrols
                end
            end
        elseif E.name == 'lb-provider-chest' then
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if E.position.x * tower.position.x + E.position.y * tower.position.y <= 30 * 30 then
                    table.insert(tower.providerchests, {chest = E.unit_number})
                end
            end
        end
        log(serpent.block(landbots))
    end
)

script.on_event(
    defines.events.on_put_item,
    function(event)
    end
)

script.on_event(
    defines.events.on_player_selected_area,
    function(event)
    end
)

script.on_event(
    defines.events.on_ai_command_completed,
    function(event)
    end
)

script.on_nth_tick(5, function(event)
--log('hit')
for t, tower in pairs(landbots.towers) do
    --log('hit')
    for r,req in pairs(tower.requestorchests) do
        --log('hit')
        --log(serpent.block(req))
        if req.controls ~= nil then
            --log('hit')
            local signals = req.controls.get_merged_signals(defines.circuit_connector_id.constant_combinator)
            log(serpent.block(signals))
            if signals ~= nil then
                for s, sig in pairs(signals) do
                    log(serpent.block(sig))
                end
            end
        end
    end
end

end)
--[[
script.on_event(defines.events.on_gui_opened,function(event)

    if event.entity ~= nil then
        log(event.entity.name)
        if event.entity.name == 'lb-requester-chest' then
            event.entity.opened(requesterchests['chest'..event.entity.unit_number])
        end
    end



end)
]]--
