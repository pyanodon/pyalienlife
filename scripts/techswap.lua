--[[
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
    {tech = 'exercises', oldrecipe = 'Extract xyhiphoe Meat', newrecipe = 'Extract xyhiphoe Meat-1'},
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
    {tech = 'myostatin', oldrecipe = 'Extract xyhiphoe Meat-1', newrecipe = 'Extract xyhiphoe Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved xyhiphoe', newrecipe = 'Extract meat from Improved xyhiphoe-2'},
    {tech = 'myostatin', oldrecipe = 'Extract zipir Meat-1', newrecipe = 'Extract zipir Meat-2'},
    {tech = 'myostatin', oldrecipe = 'Extract meat from Improved Zipir', newrecipe = 'Extract meat from Improved Zipir-2'},

--bone 1--
    {tech = 'osteocyte', oldrecipe = 'Extract arthurian bones', newrecipe = 'Extract arthurian bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract auog bones', newrecipe = 'Extract auog bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract dingrits bones', newrecipe = 'Extract dingrits bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract Mukmoux bones', newrecipe = 'Extract Mukmoux bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract phadai bones', newrecipe = 'Extract phadai bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract phagnot bones', newrecipe = 'Extract phagnot bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract scrondrix bones', newrecipe = 'Extract scrondrix bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract Trits bones', newrecipe = 'Extract Trits bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract Ulric bones', newrecipe = 'Extract Ulric bones-1'},
    {tech = 'osteocyte', oldrecipe = 'Extract Xeno bones', newrecipe = 'Extract Xeno bones-1'},

--bone 2--
    {tech = 'hardened-bone', oldrecipe = 'Extract arthurian bones-1', newrecipe = 'Extract arthurian bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved arthurians', newrecipe = 'Extract bones from Improved arthurians-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract auog bones-1', newrecipe = 'Extract auog bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved auogs', newrecipe = 'Extract bones from Improved auogs-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract dingrits bones-1', newrecipe = 'Extract dingrits bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved dingrits', newrecipe = 'Extract bones from Improved dingrits-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract Mukmoux bones-1', newrecipe = 'Extract Mukmoux bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved Mukmouxs', newrecipe = 'Extract bones from Improved Mukmouxs-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract phadai bones-1', newrecipe = 'Extract phadai bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved phadais', newrecipe = 'Extract bones from Improved phadais-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract phagnot bones-1', newrecipe = 'Extract phagnot bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved phagnots', newrecipe = 'Extract bones from Improved phagnots-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract scrondrix bones-1', newrecipe = 'Extract scrondrix bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved scrondrixs', newrecipe = 'Extract bones from Improved scrondrixs-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract Trits bones-1', newrecipe = 'Extract Trits bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved Trits', newrecipe = 'Extract bones from Improved Trits-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract Ulric bones-1', newrecipe = 'Extract Ulric bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved Ulrics', newrecipe = 'Extract bones from Improved Ulrics-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract Xeno bones-1', newrecipe = 'Extract Xeno bones-2'},
    {tech = 'hardened-bone', oldrecipe = 'Extract bones from Improved xenos', newrecipe = 'Extract bones from Improved xenos-2'},

--guts 1--
    {tech = 'organ-replication', oldrecipe = 'Extract arthurian guts', newrecipe = 'Extract arthurian guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract auog guts', newrecipe = 'Extract auog guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract dhilmos guts', newrecipe = 'Extract dhilmos guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract dingrits guts', newrecipe = 'Extract dingrits guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract kmauts guts', newrecipe = 'Extract kmauts guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract Mukmoux guts', newrecipe = 'Extract Mukmoux guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract phadai guts', newrecipe = 'Extract phadai guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract phagnot guts', newrecipe = 'Extract phagnot guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract scrondrix guts', newrecipe = 'Extract scrondrix guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract Trits guts', newrecipe = 'Extract Trits guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract Ulric guts', newrecipe = 'Extract Ulric guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract Vonix guts', newrecipe = 'Extract Vonix guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract Vrauks guts', newrecipe = 'Extract Vrauks guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract xyhiphoe guts', newrecipe = 'Extract xyhiphoe guts-1'},
    {tech = 'organ-replication', oldrecipe = 'Extract zipir guts', newrecipe = 'Extract zipir guts-1'},

--guts 2--
    {tech = 'cavity', oldrecipe = 'Extract arthurian guts-1', newrecipe = 'Extract arthurian guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved arthurians', newrecipe = 'Extract guts from Improved arthurians-2'},
    {tech = 'cavity', oldrecipe = 'Extract auog guts-1', newrecipe = 'Extract auog guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved auogs', newrecipe = 'Extract guts from Improved auogs-2'},
    {tech = 'cavity', oldrecipe = 'Extract dhilmos guts-1', newrecipe = 'Extract dhilmos guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved dhilmoss', newrecipe = 'Extract guts from Improved dhilmoss-2'},
    {tech = 'cavity', oldrecipe = 'Extract dingrits guts-1', newrecipe = 'Extract dingrits guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved dingrits', newrecipe = 'Extract guts from Improved dingrits-2'},
    {tech = 'cavity', oldrecipe = 'Extract kmauts guts-1', newrecipe = 'Extract kmauts guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved kmauts', newrecipe = 'Extract guts from Improved kmauts-2'},
    {tech = 'cavity', oldrecipe = 'Extract Mukmoux guts-1', newrecipe = 'Extract Mukmoux guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved Mukmouxs', newrecipe = 'Extract guts from Improved Mukmouxs-2'},
    {tech = 'cavity', oldrecipe = 'Extract phadai guts-1', newrecipe = 'Extract phadai guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved phadais', newrecipe = 'Extract guts from Improved phadais-2'},
    {tech = 'cavity', oldrecipe = 'Extract phagnot guts-1', newrecipe = 'Extract phagnot guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved phagnots', newrecipe = 'Extract guts from Improved phagnots-2'},
    {tech = 'cavity', oldrecipe = 'Extract scrondrix guts-1', newrecipe = 'Extract scrondrix guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved scrondrixs', newrecipe = 'Extract guts from Improved scrondrixs-2'},
    {tech = 'cavity', oldrecipe = 'Extract Trits guts-1', newrecipe = 'Extract Trits guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved Trits', newrecipe = 'Extract guts from Improved Trits-2'},
    {tech = 'cavity', oldrecipe = 'Extract Ulric guts-1', newrecipe = 'Extract Ulric guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved Ulrics', newrecipe = 'Extract guts from Improved Ulrics-2'},
    {tech = 'cavity', oldrecipe = 'Extract Vonix guts-1', newrecipe = 'Extract Vonix guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved Vonixes', newrecipe = 'Extract guts from Improved Vonixes-2'},
    {tech = 'cavity', oldrecipe = 'Extract Vrauks guts-1', newrecipe = 'Extract Vrauks guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved Ulrics', newrecipe = 'Extract guts from Improved Ulrics-2'},
    {tech = 'cavity', oldrecipe = 'Extract xyhiphoe guts-1', newrecipe = 'Extract xyhiphoe guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved xyhiphoe', newrecipe = 'Extract guts from Improved xyhiphoe-2'},
    {tech = 'cavity', oldrecipe = 'Extract zipir guts-1', newrecipe = 'Extract zipir guts-2'},
    {tech = 'cavity', oldrecipe = 'Extract guts from Improved Zipir', newrecipe = 'Extract guts from Improved Zipir-2'},

--blood 1--
    {tech = 'somatic', oldrecipe = 'Extract arthurian blood', newrecipe = 'Extract arthurian blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract auog blood', newrecipe = 'Extract auog blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract dhilmos blood', newrecipe = 'Extract dhilmos blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract dingrits blood', newrecipe = 'Extract dingrits blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract kmauts blood', newrecipe = 'Extract kmauts blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract Mukmoux blood', newrecipe = 'Extract Mukmoux blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract phadai blood', newrecipe = 'Extract phadai blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract phagnot blood', newrecipe = 'Extract phagnot blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract scrondrix blood', newrecipe = 'Extract scrondrix blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract Trits blood', newrecipe = 'Extract Trits blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract Ulric blood', newrecipe = 'Extract Ulric blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract Vonix blood', newrecipe = 'Extract Vonix blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract Vrauks blood', newrecipe = 'Extract Vrauks blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract Xeno blood', newrecipe = 'Extract Xeno blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract xyhiphoe blood', newrecipe = 'Extract xyhiphoe blood-1'},
    {tech = 'somatic', oldrecipe = 'Extract zipir blood', newrecipe = 'Extract zipir blood-1'},

--blood 2--
    {tech = 'transgenes', oldrecipe = 'Extract arthurian blood-1', newrecipe = 'Extract arthurian blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved arthurians', newrecipe = 'Extract blood from Improved arthurians-2'},
    {tech = 'transgenes', oldrecipe = 'Extract auog blood-1', newrecipe = 'Extract auog blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved auogs', newrecipe = 'Extract blood from Improved auogs-2'},
    {tech = 'transgenes', oldrecipe = 'Extract dhilmos blood-1', newrecipe = 'Extract dhilmos blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved dhilmoss', newrecipe = 'Extract blood from Improved dhilmoss-2'},
    {tech = 'transgenes', oldrecipe = 'Extract dingrits blood-1', newrecipe = 'Extract dingrits blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved dingrits', newrecipe = 'Extract blood from Improved dingrits-2'},
    {tech = 'transgenes', oldrecipe = 'Extract kmauts blood-1', newrecipe = 'Extract kmauts blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved kmauts', newrecipe = 'Extract blood from Improved kmauts-2'},
    {tech = 'transgenes', oldrecipe = 'Extract Mukmoux blood-1', newrecipe = 'Extract Mukmoux blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved Mukmouxs', newrecipe = 'Extract blood from Improved Mukmouxs-2'},
    {tech = 'transgenes', oldrecipe = 'Extract phadai blood-1', newrecipe = 'Extract phadai blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved phadais', newrecipe = 'Extract blood from Improved phadais-2'},
    {tech = 'transgenes', oldrecipe = 'Extract phagnot blood-1', newrecipe = 'Extract phagnot blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved phagnots', newrecipe = 'Extract blood from Improved phagnots-2'},
    {tech = 'transgenes', oldrecipe = 'Extract scrondrix blood-1', newrecipe = 'Extract scrondrix blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved scrondrixs', newrecipe = 'Extract blood from Improved scrondrixs-2'},
    {tech = 'transgenes', oldrecipe = 'Extract Trits blood-1', newrecipe = 'Extract Trits blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved Trits', newrecipe = 'Extract blood from Improved Trits-2'},
    {tech = 'transgenes', oldrecipe = 'Extract Ulric blood-1', newrecipe = 'Extract Ulric blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved Ulrics', newrecipe = 'Extract blood from Improved Ulrics-2'},
    {tech = 'transgenes', oldrecipe = 'Extract Vrauks blood-1', newrecipe = 'Extract Vrauks blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved Vrauks', newrecipe = 'Extract blood from Improved Vrauks-2'},
    {tech = 'transgenes', oldrecipe = 'Extract Xeno blood-1', newrecipe = 'Extract Xeno blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved Xenos', newrecipe = 'Extract blood from Improved Xenos-2'},
    {tech = 'transgenes', oldrecipe = 'Extract xyhiphoe blood-1', newrecipe = 'Extract xyhiphoe blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract blood from Improved xyhiphoe', newrecipe = 'Extract blood from Improved xyhiphoe-2'},
    {tech = 'transgenes', oldrecipe = 'Extract zipir blood-1', newrecipe = 'Extract zipir blood-2'},
    {tech = 'transgenes', oldrecipe = 'Extract Arthropod blood from Improved Zipir', newrecipe = 'Extract Arthropod blood from Improved Zipir-2'},

--skin 1--
    {tech = 'defective-collagen', oldrecipe = 'Extract arthurian skin', newrecipe = 'Extract arthurian skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract auog skin', newrecipe = 'Extract auog skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract dhilmos chitin', newrecipe = 'Extract dhilmos chitin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract Mukmoux skin', newrecipe = 'Extract Mukmoux skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract phadai Skin', newrecipe = 'Extract phadai Skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract phagnot skin', newrecipe = 'Extract phagnot skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract scrondrix skin', newrecipe = 'Extract scrondrix skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract Trits skin', newrecipe = 'Extract Trits skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract Ulric skin', newrecipe = 'Extract Ulric skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract Vonix skin', newrecipe = 'Extract Vonix skin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract Vrauks chithin', newrecipe = 'Extract Vrauks chithin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract xeno chitin', newrecipe = 'Extract xeno chitin-1'},
    {tech = 'defective-collagen', oldrecipe = 'Extract zipir skin', newrecipe = 'Extract zipir skin-1'},

--skin 2--
    {tech = 'double-skin', oldrecipe = 'Extract arthurian skin-1', newrecipe = 'Extract arthurian skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved arthurians', newrecipe = 'Extract skin from Improved arthurians-2'},
    {tech = 'double-skin', oldrecipe = 'Extract auog skin-1', newrecipe = 'Extract auog skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved auogs', newrecipe = 'Extract skin from Improved auogs-2'},
    {tech = 'double-skin', oldrecipe = 'Extract dhilmos chitin-1', newrecipe = 'Extract dhilmos chitin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract Mukmoux skin-1', newrecipe = 'Extract Mukmoux skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved Mukmouxs', newrecipe = 'Extract skin from Improved Mukmouxs-2'},
    {tech = 'double-skin', oldrecipe = 'Extract phadai Skin-1', newrecipe = 'Extract phadai Skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved phadais', newrecipe = 'Extract skin from Improved phadais-2'},
    {tech = 'double-skin', oldrecipe = 'Extract phagnot skin-1', newrecipe = 'Extract phagnot skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved phagnots', newrecipe = 'Extract skin from Improved phagnots-2'},
    {tech = 'double-skin', oldrecipe = 'Extract scrondrix skin-1', newrecipe = 'Extract scrondrix skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved scrondrixs', newrecipe = 'Extract skin from Improved scrondrixs-2'},
    {tech = 'double-skin', oldrecipe = 'Extract Trits skin-1', newrecipe = 'Extract Trits skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved Trits', newrecipe = 'Extract skin from Improved Trits-2'},
    {tech = 'double-skin', oldrecipe = 'Extract Ulric skin-1', newrecipe = 'Extract Ulric skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved Ulrics', newrecipe = 'Extract skin from Improved Ulrics-2'},
    {tech = 'double-skin', oldrecipe = 'Extract Vonix skin-1', newrecipe = 'Extract Vonix skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved Vonixes', newrecipe = 'Extract skin from Improved Vonixes-2'},
    {tech = 'double-skin', oldrecipe = 'Extract Vrauks chithin-1', newrecipe = 'Extract Vrauks chithin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved Vrauks', newrecipe = 'Extract skin from Improved Vrauks-2'},
    {tech = 'double-skin', oldrecipe = 'Extract zipir skin-1', newrecipe = 'Extract zipir skin-2'},
    {tech = 'double-skin', oldrecipe = 'Extract skin from Improved Zipir', newrecipe = 'Extract skin from Improved Zipir-2'},
    
--fat 1--
    {tech = 'force-feeding', oldrecipe = 'Extract arthurian lard', newrecipe = 'Extract arthurian lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract auog lard', newrecipe = 'Extract auog lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract dhilmos lard', newrecipe = 'Extract dhilmos lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract kmauts lard', newrecipe = 'Extract kmauts lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract Mukmoux lard', newrecipe = 'Extract Mukmoux lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract phadai Fat', newrecipe = 'Extract phadai Fat-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract scrondrix lard', newrecipe = 'Extract scrondrix lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract Trits lard', newrecipe = 'Extract Trits lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract Vonix lard', newrecipe = 'Extract Vonix lard-1'},
    {tech = 'force-feeding', oldrecipe = 'Extract zipir lard', newrecipe = 'Extract zipir lard-1'},
 
--fat 2--
    {tech = 'fto4', oldrecipe = 'Extract arthurian lard-1', newrecipe = 'Extract arthurian lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved arthurians', newrecipe = 'Extract fat from Improved arthurians-2'},
    {tech = 'fto4', oldrecipe = 'Extract auog lard-1', newrecipe = 'Extract auog lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved auogs', newrecipe = 'Extract fat from Improved auogs-2'},
    {tech = 'fto4', oldrecipe = 'Extract dhilmos lard-1', newrecipe = 'Extract dhilmos lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved dhilmoss', newrecipe = 'Extract fat from Improved dhilmoss-2'},
    {tech = 'fto4', oldrecipe = 'Extract kmauts lard-1', newrecipe = 'Extract kmauts lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved kmauts', newrecipe = 'Extract fat from Improved kmauts-2'},
    {tech = 'fto4', oldrecipe = 'Extract Mukmoux lard-1', newrecipe = 'Extract Mukmoux lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved Mukmouxs', newrecipe = 'Extract fat from Improved Mukmouxs-2'},
    {tech = 'fto4', oldrecipe = 'Extract phadai Fat-1', newrecipe = 'Extract phadai Fat-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved phadais', newrecipe = 'Extract fat from Improved phadais-2'},
    {tech = 'fto4', oldrecipe = 'Extract scrondrix lard-1', newrecipe = 'Extract scrondrix lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved scrondrixs', newrecipe = 'Extract fat from Improved scrondrixs-2'},
    {tech = 'fto4', oldrecipe = 'Extract Trits lard-1', newrecipe = 'Extract Trits lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved Trits', newrecipe = 'Extract fat from Improved Trits-2'},
    {tech = 'fto4', oldrecipe = 'Extract Vonix lard-1', newrecipe = 'Extract Vonix lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved Vonixes', newrecipe = 'Extract fat from Improved Vonixes-2'},
    {tech = 'fto4', oldrecipe = 'Extract zipir lard-1', newrecipe = 'Extract zipir lard-2'},
    {tech = 'fto4', oldrecipe = 'Extract fat from Improved Zipir', newrecipe = 'Extract fat from Improved Zipir-2'},

--bladder--
    {tech = 'bladder', oldrecipe = 'Extract phagnot Gas bladder', newrecipe = 'Extract phagnot Gas bladder-1'},
}
]]--

--tech: the tech that is required to be researched for the new recipe
--oldrecipe: the recipe that is currently being used
--newrecipe: the recipe that you want set on the machines using the old recipe

local TRlist =
	{
		upgrades =
			{
				--Manure
				{
				base_recipe = 'manure-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'manure-1a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'manure-1b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'manure-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'manure-2a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'manure-2b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'manure-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'manure-3a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'manure-3b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'manure-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'manure-4a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'manure-4b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'manure-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'manure-5a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'manure-5b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'manure-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'manure-6a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'manure-6b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'manure-7',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'manure-7a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'manure-7b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'muk-manure-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'muk-manure-1a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'muk-manure-1b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'muk-manure-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'muk-manure-2a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'muk-manure-2b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'muk-manure-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'muk-manure-3a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'muk-manure-3b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'muk-manure-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'muk-manure-4a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'muk-manure-4b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'muk-manure-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'muk-manure-5a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'muk-manure-5b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'muk-manure-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'muk-manure-6a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'muk-manure-6b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'muk-manure-7',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'muk-manure-7a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'muk-manure-7b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'auog-manure-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-manure-1a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'auog-manure-1b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'auog-manure-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-manure-2a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'auog-manure-2b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'auog-manure-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-manure-3a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'auog-manure-3b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'auog-manure-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-manure-4a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'auog-manure-4b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'auog-manure-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-manure-5a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'auog-manure-5b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'auog-manure-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-manure-6a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'auog-manure-6b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'auog-manure-7',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-manure-7a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'auog-manure-7b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'phag-manure-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'phag-manure-1a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'phag-manure-1b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'phag-manure-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'phag-manure-2a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'phag-manure-2b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'phag-manure-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'phag-manure-3a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'phag-manure-3b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'phag-manure-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'phag-manure-4a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'phag-manure-4b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'phag-manure-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'phag-manure-5a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'phag-manure-5b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'phag-manure-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'phag-manure-6a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'phag-manure-6b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'phag-manure-7',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'phag-manure-7a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'phag-manure-7b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'scrondrix-manure-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'scrondrix-manure-1a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'scrondrix-manure-1b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'scrondrix-manure-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'scrondrix-manure-2a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'scrondrix-manure-2b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'scrondrix-manure-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'scrondrix-manure-3a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'scrondrix-manure-3b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'scrondrix-manure-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'scrondrix-manure-4a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'scrondrix-manure-4b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'scrondrix-manure-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'scrondrix-manure-5a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'scrondrix-manure-5b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'scrondrix-manure-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'scrondrix-manure-6a',
					tech = 'bigger-colon',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'scrondrix-manure-6b',
					tech = 'explosive-diarrhea',
					unlocked = false,
					level = 3,
					},
				},
				--Brains
				{
				base_recipe = 'Full Render arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render arthuriansb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract arthurian brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthurian brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arthurian brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render auogsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract auog brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract auog brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract auog brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render dingritsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract dingrits brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render kmauts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render kmautsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract kmauts brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract kmauts brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render Mukmouxsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Mukmoux brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Mukmoux brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Mukmoux brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render phadaisb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract phadai brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render phagnotsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract phagnot brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phagnot brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render scrondrixsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract scrondrix brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract scrondrix brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render Tritsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Trits brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Trits brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render Ulricsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Ulric brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Ulric brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Ulric brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render Vonix',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render Vonixb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Vonix brain',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix brainb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vonix brain-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render Vrauks',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render Vrauksb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Vrauks brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vrauks brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vrauks brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render Xenosb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Xeno brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Xeno brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Xeno brains-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Full Render zipir',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render zipirb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract zipir brain',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract zipir brainb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract zipir brain-2',
					tech = 'metamide5',
					unlocked = false,
					level = 3,
					},
				},
				--Brains2
				{
				base_recipe = 'Extract brains from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved arthurians-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved auogs-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved dingrits-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved kmauts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved kmauts-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved Mukmouxs-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved phadais-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved scrondrixs-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved phagnots-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved arthurians-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved Ulrics-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved Vonixes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved Vonixes-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved Vrauks',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved Vrauks-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved Xenos-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract brains from Improved Zipir',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved Zipir-2',
					tech = 'metamide5',
					unlocked = false,
					level = 2,
					},
				},
				--Meat
				{
				base_recipe = 'Extract arthurian Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthurian Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arthurian Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract auog Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract auog Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract auog Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dhilmos Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dhilmos Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dhilmos Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dingrits Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract kmauts Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract kmauts Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Mukmoux Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Mukmoux Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Mukmoux Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phadai Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phagnot Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phagnot Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract scrondrix Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract scrondrix Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Trits Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Trits Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Ulric Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Ulric Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Ulric Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vonix Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vonix Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vrauks Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vrauks Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vrauks Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Xeno Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Xeno Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Xeno Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract xyhiphoe Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xyhiphoe Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract xyhiphoe Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract zipir Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract zipir Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract zipir Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				--Meat-2
				{
				base_recipe = 'Extract meat from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved arthurians-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved auogs-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved dhilmoss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved dhilmoss-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved dingritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved dingritss-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved kmautss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved kmautss-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Mukmouxs-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved phadais-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved phagnots-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved scrondrixs-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Tritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Tritss-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Ulrics-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Vonixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Vonixs-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Vraukss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Vraukss-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Xenos-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved xyhiphoes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved xyhiphoes-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved zipirs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved zipirs-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				--bones
				{
				base_recipe = 'Extract arthurian bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthurian bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arthurian bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract auog bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract auog bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract auog bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dhilmos bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dhilmos bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dhilmos bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dingrits bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract kmauts bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract kmauts bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Mukmoux bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Mukmoux bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Mukmoux bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phadai bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phagnot bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phagnot bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract scrondrix bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract scrondrix bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Trits bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Trits bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Ulric bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Ulric bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Ulric bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vonix bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vonix bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vrauks bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vrauks bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vrauks bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Xeno bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Xeno bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Xeno bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract xyhiphoe bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xyhiphoe bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract xyhiphoe bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract zipir bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract zipir bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract zipir bones-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 3,
					},
				},
				--bones-2
				{
				base_recipe = 'Extract bones from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved arthurians-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved auogs-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved dhilmoss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved dhilmoss-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved dingritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved dingritss-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved kmautss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved kmautss-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Mukmouxs-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved phadais-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved phagnots-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved scrondrixs-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved Tritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Tritss-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Ulrics-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved Vonixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Vonixs-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved Vraukss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Vraukss-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Xenos-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved xyhiphoes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved xyhiphoes-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved zipirs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved zipirs-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				--guts
				{
				base_recipe = 'Extract arthurian guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthurian guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arthurian guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract auog guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract auog guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract auog guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dhilmos guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dhilmos guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dhilmos guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dingrits guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract kmauts guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract kmauts guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Mukmoux guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Mukmoux guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Mukmoux guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phadai guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phagnot guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phagnot guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract scrondrix guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract scrondrix guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Trits guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Trits guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Ulric guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Ulric guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Ulric guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vonix guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vonix guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vrauks guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vrauks guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vrauks guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Xeno guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Xeno guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Xeno guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract xyhiphoe guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xyhiphoe guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract xyhiphoe guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract zipir guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract zipir guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract zipir guts-2',
					tech = 'cavity',
					unlocked = false,
					level = 3,
					},
				},
				--guts-2
				{
				base_recipe = 'Extract guts from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved arthurians-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved auogs-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved dhilmoss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved dhilmoss-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved dingritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved dingritss-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved kmautss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved kmautss-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Mukmouxs-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved phadais-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved phagnots-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved scrondrixs-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Tritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Tritss-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Ulrics-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Vonixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Vonixs-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Vraukss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Vraukss-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Xenos-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved xyhiphoes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved xyhiphoes-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved zipirs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved zipirs-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				--blood
				{
				base_recipe = 'Extract arthurian blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthurian blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arthurian blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract auog blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract auog blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract auog blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dhilmos blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dhilmos blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dhilmos blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dingrits blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract kmauts blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract kmauts blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Mukmoux blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Mukmoux blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Mukmoux blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phadai blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phagnot blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phagnot blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract scrondrix blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract scrondrix blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Trits blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Trits blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Ulric blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Ulric blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Ulric blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vonix blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vonix blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vrauks blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vrauks blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vrauks blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Xeno blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Xeno blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Xeno blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract xyhiphoe blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xyhiphoe blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract xyhiphoe blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract zipir blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract zipir blood-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract zipir blood-2',
					tech = 'transgenes',
					unlocked = false,
					level = 3,
					},
				},
				--blood-2
				{
				base_recipe = 'Extract blood from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved arthurians-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved auogs-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved dhilmoss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved dhilmoss-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved dingritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved dingritss-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved kmautss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved kmautss-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved Mukmouxs-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved phadais-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved phagnots-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved scrondrixs-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved Tritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved Tritss-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved Ulrics-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved Vonixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved Vonixs-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved Vraukss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved Vraukss-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved Xenos-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved xyhiphoes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved xyhiphoes-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved zipirs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved zipirs-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				--skin
				{
				base_recipe = 'Extract arthurian skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthurian skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arthurian skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract auog skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract auog skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract auog skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dhilmos chithin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dhilmos chithin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dhilmos chithin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dingrits skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract kmauts skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract kmauts skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Mukmoux skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Mukmoux skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Mukmoux skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phadai skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phagnot skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phagnot skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract scrondrix skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract scrondrix skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Trits skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Trits skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Ulric skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Ulric skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Ulric skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vonix skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vonix skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vrauks chithin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vrauks chithin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vrauks chithin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Xeno chithin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Xeno chithin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Xeno chithin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract xyhiphoe skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xyhiphoe skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract xyhiphoe skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract zipir skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract zipir skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract zipir skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				--skin-2
				{
				base_recipe = 'Extract skin from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved arthurians-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved auogs-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract chithin from Improved dhilmoss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract chithin from Improved dhilmoss-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved dingritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved dingritss-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved kmautss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved kmautss-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Mukmouxs-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved phadais-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved phagnots-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved scrondrixs-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved Tritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Tritss-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Ulrics-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved Vonixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Vonixs-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract chithin from Improved Vraukss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract chithin from Improved Vraukss-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract chithin from Improved Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract chithin from Improved Xenos-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved xyhiphoes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved xyhiphoes-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved zipirs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved zipirs-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				--lard
				{
				base_recipe = 'Extract arthurian lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthurian lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arthurian lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract auog lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract auog lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract auog lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dhilmos lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dhilmos lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dhilmos lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dingrits lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract kmauts lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract kmauts lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Mukmoux lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Mukmoux lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Mukmoux lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phadai Fat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai Fat-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai Fat-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract phagnot lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phagnot lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract scrondrix lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract scrondrix lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Trits lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Trits lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Ulric lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Ulric lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Ulric lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vonix lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vonix lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Vrauks lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vrauks lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Vrauks lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Xeno lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Xeno lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Xeno lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract xyhiphoe lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xyhiphoe lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract xyhiphoe lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract zipir lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract zipir lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract zipir lard-2',
					tech = 'fto4',
					unlocked = false,
					level = 3,
					},
				},
				--lard-2
				{
				base_recipe = 'Extract lard from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved arthurians-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved auogs-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved dhilmoss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved dhilmoss-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved dingritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved dingritss-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved kmautss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved kmautss-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved Mukmouxs-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved phadais',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved phadais-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved phagnots',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved phagnots-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved scrondrixs-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved Tritss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved Tritss-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved Ulrics-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved Vonixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved Vonixs-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved Vraukss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved Vraukss-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved Xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved Xenos-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved xyhiphoes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved xyhiphoes-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved zipirs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved zipirs-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				--bladder
				{
				base_recipe = 'Extract phagnot Gas bladder',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phagnot Gas bladder-1',
					tech = 'bladder',
					unlocked = false,
					level = 2,
					},
				},
			},
		techs_with_upgrades =
			{
				['bigger-colon'] = true,
				['explosive-diarrhea'] = true,
				['interactive-cognition'] = true,
				['metamide5'] = true,
				['exercises'] = true,
				['myostatin'] = true,
				['osteocyte'] = true,
				['hardened-bone'] = true,
				['organ-replication'] = true,
				['cavity'] = true,
				['somatic'] = true,
				['transgenes'] = true,
				['defective-collagen'] = true,
				['double-skin'] = true,
				['force-feeding'] = true,
				['fto4'] = true,
				['bladder'] = true,
				['kmauts'] = true,
				['ulric'] = true,
				['mukmoux'] = true,
				['arthurian'] = true,
				['xeno'] = true,
				['dhilmos'] = true,
				['scrondrix'] = true,
				['scrondrix-mk02'] = true,
				['anabolic-rna'] = true,
				['phadai'] = true,
				['auog'] = true,
				['dingrits'] = true,
				['vonix'] = true,
				['vonix-mk02'] = true,
				['phagnot'] = true,
				['nanochondria'] = true,
				['rendering'] = true,
				['advanced-rendering'] = true,
				['bmp'] = true,
				['zipir'] = true,
				['zipir-mk02'] = true,
				['antitumor'] = true,
				['trits'] = true,
				['recombinant-ery'] = true,
				['reca'] = true,
				['orexigenic'] = true,
				['interactive-cognition'] = true,
				['exercises'] = true,
				['osteocyte'] = true,
			},
	}

return(TRlist)