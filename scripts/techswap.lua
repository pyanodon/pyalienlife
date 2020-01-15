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
--brains 1--
    {tech = 'interactive-cognition', oldrecipe = 'Full Render arthurians', newrecipe = 'Full Render arthuriansb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract arthurian brains', newrecipe = 'Extract arthurian brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render auogs', newrecipe = 'Full Render auogsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract auog brains', newrecipe = 'Extract auog brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render dingrits', newrecipe = 'Full Render dingritsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract dingrits brains', newrecipe = 'Extract dingrits brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render kmauts', newrecipe = 'Full Render kmautsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract kmauts brains', newrecipe = 'Extract kmauts brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render Mukmouxs', newrecipe = 'Full Render Mukmouxsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract Mukmoux brains', newrecipe = 'Extract Mukmoux brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render phadais', newrecipe = 'Full Render phadaisb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract phadai brains', newrecipe = 'Extract phadai brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render phagnots', newrecipe = 'Full Render phagnotsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract phagnot brains', newrecipe = 'Extract phagnot brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render scrondrixs', newrecipe = 'Full Render scrondrixsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract scrondrix brains', newrecipe = 'Extract scrondrix brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render Trits', newrecipe = 'Full Render Tritsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract Trits brains', newrecipe = 'Extract Trits brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render Ulrics', newrecipe = 'Full Render Ulricsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract Ulric brains', newrecipe = 'Extract Ulric brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render Vonix', newrecipe = 'Full Render Vonixb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract Vonix brain', newrecipe = 'Extract Vonix brainb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render Vrauks', newrecipe = 'Full Render Vrauksb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract Vrauks brains', newrecipe = 'Extract Vrauks brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render Xenos', newrecipe = 'Full Render Xenosb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract Xeno brains', newrecipe = 'Extract Xeno brainsb'},
    {tech = 'interactive-cognition', oldrecipe = 'Full Render zipir', newrecipe = 'Full Render zipirb'},
    {tech = 'interactive-cognition', oldrecipe = 'Extract zipir brain', newrecipe = 'Extract zipir brainb'},
--brains 2--
    {tech = 'metamide5', oldrecipe = 'Extract arthurian brainsb', newrecipe = 'Extract arthurian brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved arthurians', newrecipe = 'Extract brains from Improved arthurians-2'},
    {tech = 'metamide5', oldrecipe = 'Extract auog brainsb', newrecipe = 'Extract auog brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved auogs', newrecipe = 'Extract brains from Improved auogs-2'},
    {tech = 'metamide5', oldrecipe = 'Extract dingrits brainsb', newrecipe = 'Extract dingrits brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved dingrits', newrecipe = 'Extract brains from Improved dingrits-2'},
    {tech = 'metamide5', oldrecipe = 'Extract kmauts brainsb', newrecipe = 'Extract kmauts brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved kmauts', newrecipe = 'Extract brains from Improved kmauts-2'},
    {tech = 'metamide5', oldrecipe = 'Extract Mukmoux brainsb', newrecipe = 'Extract Mukmoux brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved Mukmouxs', newrecipe = 'Extract brains from Improved Mukmouxs-2'},
    {tech = 'metamide5', oldrecipe = 'Extract phadai brainsb', newrecipe = 'Extract phadai brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved phadais', newrecipe = 'Extract brains from Improved phadais-2'},
    {tech = 'metamide5', oldrecipe = 'Extract phagnot brainsb', newrecipe = 'Extract phagnot brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved phagnots', newrecipe = 'Extract brains from Improved phagnots-2'},
    {tech = 'metamide5', oldrecipe = 'Extract scrondrix brainsb', newrecipe = 'Extract scrondrix brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved scrondrixs', newrecipe = 'Extract brains from Improved scrondrixs-2'},
    {tech = 'metamide5', oldrecipe = 'Extract Trits brainsb', newrecipe = 'Extract Trits brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved Trits', newrecipe = 'Extract brains from Improved Trits-2'},
    {tech = 'metamide5', oldrecipe = 'Extract Ulric brainsb', newrecipe = 'Extract Ulric brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved Ulrics', newrecipe = 'Extract brains from Improved Ulrics-2'},
    {tech = 'metamide5', oldrecipe = 'Extract Vonix brainb', newrecipe = 'Extract Vonix brain-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved Vonixes', newrecipe = 'Extract brains from Improved Vonixes-2'},
    {tech = 'metamide5', oldrecipe = 'Extract Vrauks brainsb', newrecipe = 'Extract Vrauks brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved Vrauks', newrecipe = 'Extract brains from Improved Vrauks-2'},
    {tech = 'metamide5', oldrecipe = 'Extract Xeno brainsb', newrecipe = 'Extract Xeno brains-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved Xenos', newrecipe = 'Extract brains from Improved Xenos-2'},
    {tech = 'metamide5', oldrecipe = 'Extract zipir brainb', newrecipe = 'Extract zipir brain-2'},
    {tech = 'metamide5', oldrecipe = 'Extract brains from Improved Zipir', newrecipe = 'Extract brains from Improved Zipir-2'},
--meat 1--
    {tech = 'exercises', oldrecipe = 'Extract arthurian Meat', newrecipe = 'Extract arthurian Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract auog Meat', newrecipe = 'Extract auog Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract dhilmos Meat', newrecipe = 'Extract dhilmos Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract dingrits Meat', newrecipe = 'Extract dingrits Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract kmauts Meat', newrecipe = 'Extract kmauts Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract Mukmoux Meat', newrecipe = 'Extract Mukmoux Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract phadai Meat', newrecipe = 'Extract phadai Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract phagnot Meat', newrecipe = 'Extract phagnot Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract scrondrix Meat', newrecipe = 'Extract scrondrix Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract Trits Meat', newrecipe = 'Extract Trits Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract Ulric Meat', newrecipe = 'Extract Ulric Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract Vonix Meat', newrecipe = 'Extract Vonix Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract Vrauks Meat', newrecipe = 'Extract Vrauks Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract Xeno Meat', newrecipe = 'Extract Xeno Meat-1'},
    {tech = 'exercises', oldrecipe = 'Extract zipir Meat', newrecipe = 'Extract zipir Meat-1'},
--meat 2--
    {tech = 'myostatin', oldrecipe = 'Extract arthurian Meat-1', newrecipe = 'Extract arthurian Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract auog Meat-1', newrecipe = 'Extract auog Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved arthurians', newrecipe = 'Extract meat from Improved arthurians-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved auogs', newrecipe = 'Extract meat from Improved auogs-2'},
    {tech = 'myostatin', oldrecipe = 'Extract dhilmos Meat-1', newrecipe = 'Extract dhilmos Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved dhilmoss', newrecipe = 'Extract meat from Improved dhilmoss-2'},
    {tech = 'myostatin', oldrecipe = 'Extract dingrits Meat-1', newrecipe = 'Extract dingrits Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved dingrits', newrecipe = 'Extract meat from Improved dingrits-2'},
    {tech = 'myostatin', oldrecipe = 'Extract kmauts Meat-1', newrecipe = 'Extract kmauts Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved kmauts', newrecipe = 'Extract meat from Improved kmauts-2'},
    {tech = 'myostatin', oldrecipe = 'Extract Mukmoux Meat-1', newrecipe = 'Extract Mukmoux Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Mukmouxs', newrecipe = 'Extract meat from Improved Mukmouxs-2'},
    {tech = 'myostatin', oldrecipe = 'Extract phadai Meat-1', newrecipe = 'Extract phadai Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved phadais', newrecipe = 'Extract meat from Improved phadais-2'},
    {tech = 'myostatin', oldrecipe = 'Extract phagnot Meat-1', newrecipe = 'Extract phagnot Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved phagnots', newrecipe = 'Extract meat from Improved phagnots-2'},
    {tech = 'myostatin', oldrecipe = 'Extract scrondrix Meat-1', newrecipe = 'Extract scrondrix Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved scrondrixs', newrecipe = 'Extract meat from Improved scrondrixs-2'},
    {tech = 'myostatin', oldrecipe = 'Extract Trits Meat-1', newrecipe = 'Extract Trits Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Trits', newrecipe = 'Extract meat from Improved Trits-2'},
    {tech = 'myostatin', oldrecipe = 'Extract Ulric Meat-1', newrecipe = 'Extract Ulric Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Ulrics', newrecipe = 'Extract meat from Improved Ulrics-2'},
    {tech = 'myostatin', oldrecipe = 'Extract Vonix Meat-1', newrecipe = 'Extract Vonix Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Vonixes', newrecipe = 'Extract meat from Improved Vonixes-2'},
    {tech = 'myostatin', oldrecipe = 'Extract Vrauks Meat-1', newrecipe = 'Extract Vrauks Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Vrauks', newrecipe = 'Extract meat from Improved Vrauks-2'},
    {tech = 'myostatin', oldrecipe = 'Extract Xeno Meat-1', newrecipe = 'Extract Xeno Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Xenos', newrecipe = 'Extract meat from Improved Xenos-2'},
    {tech = 'myostatin', oldrecipe = 'Extract zipir Meat-1', newrecipe = 'Extract zipir Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Zipir', newrecipe = 'Extract meat from Improved Zipir-2'},

}

--substituir a segunda do brains 1 pela brains 2
--Remover nanochondria do brains 1
--Corrigir nomes de alguns..checar um por um... :/



--tech: the tech that is required to be researched for the new recipe
--oldrecipe: the recipe that is currently being used
--newrecipe: the recipe that you want set on the machines using the old recipe

script.on_event(
    defines.events.on_research_finished,
    function(event)
        for _, tech in pairs(TRlist) do
            if event.research.name == tech.tech then
                --log(serpent.block(tech))
                if event.research.force.recipes[tech.oldrecipe] ~= nil and event.research.force.recipes[tech.newrecipe] ~= nil then
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
                        end
                    end
                    event.research.force.recipes[tech.oldrecipe].enabled = false
                end
            end
        end
    end
)
