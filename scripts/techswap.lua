local TRlist = {
    {tech = 'bigger-colon', oldrecipe = 'manure-1', newrecipe = 'manure-1a'},
    {tech = 'bigger-colon', oldrecipe = 'manure-2', newrecipe = 'manure-2a'},
    {tech = 'bigger-colon', oldrecipe = 'manure-3', newrecipe = 'manure-3a'},
    {tech = 'bigger-colon', oldrecipe = 'manure-4', newrecipe = 'manure-4a'},
    {tech = 'bigger-colon', oldrecipe = 'manure-5', newrecipe = 'manure-5a'},
    {tech = 'bigger-colon', oldrecipe = 'manure-6', newrecipe = 'manure-6a'},
    {tech = 'bigger-colon', oldrecipe = 'manure-7', newrecipe = 'manure-7a'},
    {tech = 'explosive-diarrhea', oldrecipe = 'manure-1a', newrecipe = 'manure-1b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'manure-2a', newrecipe = 'manure-2b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'manure-3a', newrecipe = 'manure-3b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'manure-4a', newrecipe = 'manure-4b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'manure-5a', newrecipe = 'manure-5b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'manure-6a', newrecipe = 'manure-6b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'manure-7a', newrecipe = 'manure-7b'},
    
    {tech = 'bigger-colon', oldrecipe = 'muk-manure-1', newrecipe = 'muk-manure-1a'},
    {tech = 'bigger-colon', oldrecipe = 'muk-manure-2', newrecipe = 'muk-manure-2a'},
    {tech = 'bigger-colon', oldrecipe = 'muk-manure-3', newrecipe = 'muk-manure-3a'},
    {tech = 'bigger-colon', oldrecipe = 'muk-manure-4', newrecipe = 'muk-manure-4a'},
    {tech = 'bigger-colon', oldrecipe = 'muk-manure-5', newrecipe = 'muk-manure-5a'},
    {tech = 'bigger-colon', oldrecipe = 'muk-manure-6', newrecipe = 'muk-manure-6a'},
    {tech = 'bigger-colon', oldrecipe = 'muk-manure-7', newrecipe = 'muk-manure-7a'},
    {tech = 'explosive-diarrhea', oldrecipe = 'muk-manure-1a', newrecipe = 'muk-manure-1b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'muk-manure-2a', newrecipe = 'muk-manure-2b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'muk-manure-3a', newrecipe = 'muk-manure-3b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'muk-manure-4a', newrecipe = 'muk-manure-4b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'muk-manure-5a', newrecipe = 'muk-manure-5b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'muk-manure-6a', newrecipe = 'muk-manure-6b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'muk-manure-7a', newrecipe = 'muk-manure-7b'},

    {tech = 'bigger-colon', oldrecipe = 'auog-manure-1', newrecipe = 'auog-manure-1a'},
    {tech = 'bigger-colon', oldrecipe = 'auog-manure-2', newrecipe = 'auog-manure-2a'},
    {tech = 'bigger-colon', oldrecipe = 'auog-manure-3', newrecipe = 'auog-manure-3a'},
    {tech = 'bigger-colon', oldrecipe = 'auog-manure-4', newrecipe = 'auog-manure-4a'},
    {tech = 'bigger-colon', oldrecipe = 'auog-manure-5', newrecipe = 'auog-manure-5a'},
    {tech = 'bigger-colon', oldrecipe = 'auog-manure-6', newrecipe = 'auog-manure-6a'},
    {tech = 'bigger-colon', oldrecipe = 'auog-manure-7', newrecipe = 'auog-manure-7a'},
    {tech = 'explosive-diarrhea', oldrecipe = 'auog-manure-1a', newrecipe = 'auog-manure-1b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'auog-manure-2a', newrecipe = 'auog-manure-2b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'auog-manure-3a', newrecipe = 'auog-manure-3b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'auog-manure-4a', newrecipe = 'auog-manure-4b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'auog-manure-5a', newrecipe = 'auog-manure-5b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'auog-manure-6a', newrecipe = 'auog-manure-6b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'auog-manure-7a', newrecipe = 'auog-manure-7b'},

    {tech = 'bigger-colon', oldrecipe = 'phag-manure-1', newrecipe = 'phag-manure-1a'},
    {tech = 'bigger-colon', oldrecipe = 'phag-manure-2', newrecipe = 'phag-manure-2a'},
    {tech = 'bigger-colon', oldrecipe = 'phag-manure-3', newrecipe = 'phag-manure-3a'},
    {tech = 'bigger-colon', oldrecipe = 'phag-manure-4', newrecipe = 'phag-manure-4a'},
    {tech = 'bigger-colon', oldrecipe = 'phag-manure-5', newrecipe = 'phag-manure-5a'},
    {tech = 'bigger-colon', oldrecipe = 'phag-manure-6', newrecipe = 'phag-manure-6a'},
    {tech = 'bigger-colon', oldrecipe = 'phag-manure-7', newrecipe = 'phag-manure-7a'},
    {tech = 'explosive-diarrhea', oldrecipe = 'phag-manure-1a', newrecipe = 'phag-manure-1b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'phag-manure-2a', newrecipe = 'phag-manure-2b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'phag-manure-3a', newrecipe = 'phag-manure-3b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'phag-manure-4a', newrecipe = 'phag-manure-4b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'phag-manure-5a', newrecipe = 'phag-manure-5b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'phag-manure-6a', newrecipe = 'phag-manure-6b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'phag-manure-7a', newrecipe = 'phag-manure-7b'},

    {tech = 'bigger-colon', oldrecipe = 'scrondrix-manure-1', newrecipe = 'scrondrix-manure-1a'},
    {tech = 'bigger-colon', oldrecipe = 'scrondrix-manure-2', newrecipe = 'scrondrix-manure-2a'},
    {tech = 'bigger-colon', oldrecipe = 'scrondrix-manure-3', newrecipe = 'scrondrix-manure-3a'},
    {tech = 'bigger-colon', oldrecipe = 'scrondrix-manure-4', newrecipe = 'scrondrix-manure-4a'},
    {tech = 'bigger-colon', oldrecipe = 'scrondrix-manure-5', newrecipe = 'scrondrix-manure-5a'},
    {tech = 'bigger-colon', oldrecipe = 'scrondrix-manure-6', newrecipe = 'scrondrix-manure-6a'},
    {tech = 'bigger-colon', oldrecipe = 'scrondrix-manure-7', newrecipe = 'scrondrix-manure-7a'},
    {tech = 'explosive-diarrhea', oldrecipe = 'scrondrix-manure-1a', newrecipe = 'scrondrix-manure-1b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'scrondrix-manure-2a', newrecipe = 'scrondrix-manure-2b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'scrondrix-manure-3a', newrecipe = 'scrondrix-manure-3b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'scrondrix-manure-4a', newrecipe = 'scrondrix-manure-4b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'scrondrix-manure-5a', newrecipe = 'scrondrix-manure-5b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'scrondrix-manure-6a', newrecipe = 'scrondrix-manure-6b'},
    {tech = 'explosive-diarrhea', oldrecipe = 'scrondrix-manure-7a', newrecipe = 'scrondrix-manure-7b'},
}

--tech: the tech that is required to be researched for the new recipe
--oldrecipe: the recipe that is currently being used
--newrecipe: the recipe that you want set on the machines using the old recipe

script.on_event(
    defines.events.on_research_finished,
    function(event)
        for _, tech in pairs(TRlist) do
            if event.research.name == tech.tech then
                local cat = event.research.force.recipes[tech.oldrecipe].category

                local entities = game.surfaces['nauvis'].find_entities_filtered {force = event.research.force}
                --log('hit')
                for _, ent in pairs(entities) do
                    --log('hit')
                    --log(serpent.block(ent.name))
                    --if ent.name == 'fwf-mk01' then

                    --log(ent.prototype.name)
                    --log(serpent.block(ent.prototype.name))
                    --log(serpent.block(cat))
                    --log(serpent.block(ent.prototype.crafting_categories))
                    --end

                    if ent.prototype ~= nil and ent.prototype.crafting_categories ~= nil then
                        --log('hit')
                        --for c, category in pairs(ent.prototype.crafting_categories) do
                        --log('hit')
                        if ent.prototype.crafting_categories[cat] then
                            --log('hit')
                            local currentrecipe = ent.get_recipe()
                            --log(serpent.block(currentrecipe.name))
                            --log(tech.oldrecipe)
                            if currentrecipe ~= nil and currentrecipe.name == tech.oldrecipe then
                                --log(serpent.block(currentrecipe.name))
                                --log(tech.oldrecipe)
                                --log('hit')
                                ent.set_recipe(tech.newrecipe)
                            end
                        end
                    --end
                    end
                end
                event.research.force.recipes[tech.oldrecipe].enabled = false
            end
        end
    end
)
