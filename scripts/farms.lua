script.on_event(
    defines.events.on_tick,
    function(event)
    end
)

script.on_event(
    defines.events.on_rocket_launched,
    function(event)
        if event.rocket_silo.name == 'ralesia-plantation-test' then
            --log(serpent.block(event))
            log(serpent.block(event.rocket.get_inventory(defines.inventory.rocket).get_contents()))

            local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
            local items = {}

            for k, v in pairs(item) do
                items['item1'] = k
            end
            log(items['item1'])
            --log(serpent.block(item))

            local rs = event.rocket_silo

			if items['item1'] == 'ralesia-seeds' then
				log('hits')
                if rs.get_recipe().name == 'ralesiasthefirst' then
                    log('it did a thing')
                    local posx = -8
                    local posy = -8

                    for i = 1, 256 do
                        game.surfaces['nauvis'].create_entity {name = 'ralesia-flowers', position = {event.rocket_silo.position.x + posx, event.rocket_silo.position.y + posy}, amount = 1}

                        posx = posx + 1
                        if posx == 8 then
                            posx = -8
                            posy = posy + 1
                        end
                    end
                elseif rs.get_recipe().name == 'ralesiasthesecond' then
                    log('it did a thing')
                    local posx = -11
                    local posy = -11

                    for i = 1, 484 do
                        game.surfaces['nauvis'].create_entity {name = 'ralesia-flowers', position = {event.rocket_silo.position.x + posx, event.rocket_silo.position.y + posy}, amount = 5}

                        posx = posx + 1
                        if posx == 11 then
                            posx = -11
                            posy = posy + 1
                        end
                    end
                end
            end
        end
    end
)
