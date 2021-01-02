local caravanroutes = {}

local lastclickedunit = {}
local start = {}
local endding = {}

local routenumber = 1

script.on_init(
    function()
        global.caravanroutes = {}
    end
)
--[[
caravan routes table =
{
	route =
		{
		start,
		end,
		caravan
		}
}
]]
script.on_event(
    defines.events.on_player_selected_area,
    function(event)
        if event.item == 'carrot-on-stick' then
            --log("it works")
            for _, ent in pairs(event.entities) do
                --log(serpent.block(ent.name))
                if ent.name == 'caravan' then
                    if next(lastclickedunit) == nil then
                        lastclickedunit[ent.unit_number] = ent
                    elseif next(lastclickedunit) ~= ent.unit_number then
                        lastclickedunit[ent.unit_number] = ent
                    end
                    if next(start) ~= nil then
                        ent.set_command {
                            type = defines.command.go_to_location,
                            destination = start.pos,
                            radius = 4
                        }
                    end
                end
                if ent.name == 'outpost' then
                    local unum
                    if next(lastclickedunit) ~= nil then
                        unum = next(lastclickedunit)
                    end
                    if next(start) == nil then
                        start.id = ent.unit_number
                        start.pos = ent.position
                        if next(lastclickedunit) ~= nil then
                            --log(serpent.block(next(lastclickedunit)))
                            lastclickedunit[unum].set_command {
                                type = defines.command.go_to_location,
                                destination = start.pos,
                                radius = 4
                            }
                        end
                    elseif start ~= nil and next(endding) == nil then
                        endding.id = ent.unit_number
                        endding.pos = ent.position
                        if next(lastclickedunit) ~= nil then
                            if not lastclickedunit[unum].has_command then
                                lastclickedunit[unum].set_command {
                                    type = defines.command.go_to_location,
                                    destination = start.pos,
                                    radius = 4
                                }
                            end
                        end
                    end
                end
            end
            if next(lastclickedunit) ~= nil and next(start) ~= nil and next(endding) ~= nil then
                local newroute = {
                    startpoint = {
                        id = start.id,
                        pos = start.pos
                    },
                    endpoint = {
                        id = endding.id,
                        pos = endding.pos
                    },
                    unit = lastclickedunit[next(lastclickedunit)],
                    inventory = {
                        item = '',
                        stackamount = 0,
                        hasitem = false
                    }
                }
                --local route = 'route'..routenumber
                --table.insert(caravanroutes, route)
                routenumber = routenumber + 1
                caravanroutes[next(lastclickedunit)] = newroute
                lastclickedunit = {}
                start = {}
                endding = {}
            end
        end
        --log(serpent.block(lastclickedunit))
        --log(serpent.block(start))
        --log(serpent.block(endding))
        --log(serpent.block(caravanroutes))
    end
)

script.on_event(
    defines.events.on_ai_command_completed,
    function(event)
        -- luacheck: ignore 512
        local car = event.unit_number
        --log(event.unit_number)
        --log(serpent.block(event.result))
        if math.sqrt(((math.abs(caravanroutes[car].unit.position.x) - math.abs(caravanroutes[car].startpoint.pos.x)) ^ 2) + ((math.abs(caravanroutes[car].unit.position.y) - math.abs(caravanroutes[car].startpoint.pos.y)) ^ 2)) <= 10 then
            local outpostinventory = game.surfaces[caravanroutes[car].unit.surface.name].find_entity('outpost', caravanroutes[car].startpoint.pos).get_inventory(defines.inventory.chest)
            if outpostinventory ~= nil then
                if caravanroutes[car].inventory.hasitem then
                    local removedcount = outpostinventory.insert({name=caravanroutes[car].inventory.item, count=caravanroutes[car].inventory.stackamount})
                    if removedcount == caravanroutes[car].inventory.stackamount then
                        caravanroutes[car].inventory.hasitem = false
                        caravanroutes[car].inventory.item = ''
                        caravanroutes[car].inventory.stackamount = 0
                    else
                        caravanroutes[car].inventory.stackamount = caravanroutes[car].inventory.stackamount - removedcount
                    end
                else
                    local contents = outpostinventory.get_contents()
                    --log(serpent.block(outpostinventory))
                    --log(serpent.block(outpostinventory.get_contents()))
                    for i, item in pairs(contents) do
                        --log(serpent.block(i))
                        --log(serpent.block(item))
                        local stacksize = game.item_prototypes[i].stack_size
                        caravanroutes[car].inventory.item = i
                        if item < stacksize then
                            caravanroutes[car].inventory.stackamount = item
                            caravanroutes[car].inventory.hasitem = true
                            outpostinventory.remove({name = i, count = item})
                        else
                            caravanroutes[car].inventory.stackamount = stacksize
                            caravanroutes[car].inventory.hasitem = true
                            outpostinventory.remove({name = i, count = stacksize})
                        end
                        break
                    end
                end
            --log(serpent.block(caravanroutes[car].inventory))
            end
            --caravanroutes[car].inventory.item = outpostinventory
            caravanroutes[car].unit.set_command {
                type = defines.command.go_to_location,
                destination = caravanroutes[car].endpoint.pos,
                radius = 4
            }
        elseif math.sqrt((caravanroutes[car].endpoint.pos.x - caravanroutes[car].unit.position.x) ^ 2 + (caravanroutes[car].endpoint.pos.y - caravanroutes[car].unit.position.y) ^ 2) <= 10 then
            local outpostinventory = game.surfaces[caravanroutes[car].unit.surface.name].find_entity('outpost', caravanroutes[car].endpoint.pos).get_inventory(defines.inventory.chest)
            if outpostinventory ~= nil then
                if caravanroutes[car].inventory.hasitem then
                    local removedcount = outpostinventory.insert({name=caravanroutes[car].inventory.item, count=caravanroutes[car].inventory.stackamount})
                    if removedcount == caravanroutes[car].inventory.stackamount then
                        caravanroutes[car].inventory.hasitem = false
                        caravanroutes[car].inventory.item = ''
                        caravanroutes[car].inventory.stackamount = 0
                    else
                        caravanroutes[car].inventory.stackamount = caravanroutes[car].inventory.stackamount - removedcount
                    end
                else
                    local contents = outpostinventory.get_contents()
                    --log(serpent.block(outpostinventory))
                    --log(serpent.block(outpostinventory.get_contents()))
                    for i, item in pairs(contents) do
                        --log(serpent.block(i))
                        --log(serpent.block(item))
                        local stacksize = game.item_prototypes[i].stack_size
                        caravanroutes[car].inventory.item = i
                        if item < stacksize then
							caravanroutes[car].inventory.stackamount = item
							caravanroutes[car].inventory.hasitem = true
                            outpostinventory.remove({name = i, count = item})
                        else
							caravanroutes[car].inventory.stackamount = stacksize
							caravanroutes[car].inventory.hasitem = true
                            outpostinventory.remove({name = i, count = stacksize})
                        end
                        break
                    end
                end
            --log(serpent.block(caravanroutes[car].inventory))
            end
            caravanroutes[car].unit.set_command {
                type = defines.command.go_to_location,
                destination = caravanroutes[car].startpoint.pos,
                radius = 4
            }
        end
    end
)
