--MOSS--

for _, rock in pairs(data.raw['simple-entity']) do
    --log('hit')
    if rock.minable ~= nil and rock.minable.result == 'stone' then
        --log('hit')
        rock.minable.results =
            {
                {type = 'item', name = 'stone', amount = rock.minable.count},
                {type = 'item', name = 'moss', amount = 1, probability = 0.1}
            }
    elseif rock.minable ~= nil and rock.minable.results ~= nil and rock.minable.results[1].name == 'stone' then
        table.insert(rock.minable.results, {type = 'item', name = 'moss', amount = 1, probability = 0.1})
    end
    if rock.loot ~= nil and rock.loot[1].item == 'stone' then
        table.insert(rock.loot, {item = "moss", probability = 0.1, count = 1})
    end
    --log(serpent.block(data.raw['simple-entity'][rock.name]))
end
