local farm_table = {}

local farms = {}

function farm_table.add(farm)
    --log(serpent.block(farms))
    table.insert(farms, farm)
    --log(serpent.block(farms))
end

-- script.on_init(
--     function()
--     end
-- )

-- script.on_nth_tick(
--     30,
--     function()
--     end
-- )

script.on_event(
    defines.events.on_rocket_launched,
    function(event)
        if event.rocket_silo.name == 'mega-farm' then
            --log(serpent.block(event))
            log(serpent.block(event.rocket.get_inventory(defines.inventory.rocket).get_contents()))

            local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
            local items = {}

            for k in pairs(item) do
                items['item1'] = k
            end
            log(items['item1'])
            --log(serpent.block(item))

            local rs = event.rocket_silo

            for _, farm in pairs(farms) do
                log(serpent.block(farm))
                if items['item1'] == farm.seed then
                    log('hits')
                    local recipes = {}
                    local output = {}
                    for _, recipe in pairs(farm.recipes) do
                        log(serpent.block(recipe))
                        recipes[recipe.recipe_name] = true
                        output[recipe.recipe_name] = recipe.crop_output
                    end
                    log(serpent.block(rs.get_recipe().name))
                    if recipes[rs.get_recipe().name] == true then
                        log('it did a thing')
                        local posx = -11
                        local posy = -11
                        local rpos = event.rocket_silo.position
                        repeat
                            game.surfaces['nauvis'].create_entity {name = farm.crop, position = {rpos.x + posx, (rpos.y - 15) + posy}, amount = output[rs.get_recipe().name]}
                            game.surfaces['nauvis'].create_entity {name = farm.crop .. '-fake', position = {rpos.x + posx, (rpos.y - 15) + posy}}
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
            local harvesters = game.surfaces['nauvis'].find_entities_filtered {area = {{rpos.x - 11, (rpos.y - 15) - 11}, {rpos.x + 11, (rpos.y - 15) + 11}}, name = 'harvester'}
            for _, har in pairs(harvesters) do
                har.update_connections()
            end
        end
    end
)

script.on_event(
    {defines.events.on_built_entity, defines.events.on_robot_built_entity},
    function(event)
        local E = event.created_entity
        log(E.name)

        if E.name == 'mega-farm' then
            local posx = -13
            local posy = -13
            local rpos = E.position
            repeat
                log(posx)
                log(posy)
                if posx == -13 or posy == -13 or posx == 13 or posy == 13 then
                    game.surfaces['nauvis'].create_entity {name = 'wood-fence', position = {rpos.x + posx, (rpos.y - 15) + posy}, force = E.force}
                end
                --create landfill
                game.surfaces['nauvis'].set_tiles {{name = 'landfill', position = {rpos.x + posx, (rpos.y - 15) + posy}}}

                posx = posx + 1
                if posx == 14 then
                    posx = -13
                    posy = posy + 1
                end
            until posy == 14
        end
    end
)

return farm_table
