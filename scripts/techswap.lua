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
				base_recipe = 'Full Render cottongut',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render cottongutb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract cottongut brains',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract cottongut brainsb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract cottongut brains-2',
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
				base_recipe = 'Full Render Korlex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Full Render Korlexb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Korlex brain',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Korlex brainb',
					tech = 'interactive-cognition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Korlex brain-2',
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
				base_recipe = 'Extract brains from Improved cottonguts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved cottonguts-2',
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
				base_recipe = 'Extract brains from Improved Korlex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract brains from Improved Korlex-2',
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
					recipe = 'Extract brains from Improved Trits-2',
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
				base_recipe = 'Extract arqad Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arqad Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arqad Meat-2',
					tech = 'myostatin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract cottongut Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract cottongut Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract cottongut Meat-2',
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
				base_recipe = 'Extract Korlex Meat',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Korlex Meat-1',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Korlex Meat-2',
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
				base_recipe = 'Extract meat from Improved arqads',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved arqads-2',
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
				base_recipe = 'Extract meat from Improved cottonguts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved cottonguts-2',
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
				base_recipe = 'Extract meat from Improved dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved dingrits-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved kmauts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved kmauts-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Korlex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Korlex-2',
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
				base_recipe = 'Extract meat from Improved Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Trits-2',
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
				base_recipe = 'Extract meat from Improved Vonixes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Vonixes-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Vrauks',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Vrauks-2',
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
				base_recipe = 'Extract meat from Improved xyhiphoe',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved xyhiphoe-2',
					tech = 'exercises',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract meat from Improved Zipir',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract meat from Improved Zipir-2',
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
				base_recipe = 'Extract cottongut bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract cottongut bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract cottongut bones-2',
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
				base_recipe = 'Extract Korlex bones',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Korlex bones-1',
					tech = 'osteocyte',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Korlex bones-2',
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
				base_recipe = 'Extract bones from Improved cottonguts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved cottonguts-2',
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
				base_recipe = 'Extract bones from Improved dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved dingrits-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved Korlex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Korlex-2',
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
				base_recipe = 'Extract bones from Improved Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Trits-2',
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
				base_recipe = 'Extract bones from Improved Vrauks',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Vrauks-2',
					tech = 'hardened-bone',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract bones from Improved xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved xenos-2',
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
				base_recipe = 'Extract bones from Improved Zipirs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract bones from Improved Zipirs-2',
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
				base_recipe = 'Extract arqad guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arqad guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arqad guts-2',
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
				base_recipe = 'Extract cottongut guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract cottongut guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract cottongut guts-2',
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
				base_recipe = 'Extract Korlex guts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Korlex guts-1',
					tech = 'organ-replication',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Korlex guts-2',
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
				base_recipe = 'Extract guts from Improved arqads',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved arqads-2',
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
				base_recipe = 'Extract guts from Improved cottonguts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved cottonguts-2',
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
				base_recipe = 'Extract guts from Improved dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved dingrits-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved kmauts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved kmauts-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Korlex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Korlex-2',
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
				base_recipe = 'Extract guts from Improved Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Trits-2',
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
				base_recipe = 'Extract guts from Improved Vonixes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Vonixes-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Vrauks',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Vrauks-2',
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
				base_recipe = 'Extract guts from Improved xyhiphoe',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved xyhiphoe-2',
					tech = 'cavity',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract guts from Improved Zipir',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract guts from Improved Zipir-2',
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
				base_recipe = 'Extract cottongut blood',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract cottongut blood-1',
					tech = 'somatic',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract cottongut blood-2',
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
					base_recipe = 'Extract Korlex blood',
					current_lvl = 1,
					upgrade_1 =
						{
						recipe = 'Extract Korlex blood-1',
						tech = 'somatic',
						unlocked = false,
						level = 2,
						},
					upgrade_2 =
						{
						recipe = 'Extract Korlex blood-2',
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
					base_recipe = 'Extract arqad arthropodblood',
					current_lvl = 1,
					upgrade_1 =
						{
						recipe = 'Extract arqad arthropodblood-1',
						tech = 'somatic',
						unlocked = false,
						level = 2,
						},
					upgrade_2 =
						{
						recipe = 'Extract arqad arthropodblood-2',
						tech = 'transgenes',
						unlocked = false,
						level = 3,
						},
					},
				{
					base_recipe = 'Extract Vrauks Formic Acid',
					current_lvl = 1,
					upgrade_1 =
						{
						recipe = 'Extract Vrauks Formic Acid-1',
						tech = 'formic',
						unlocked = false,
						level = 2,
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
				base_recipe = 'Extract blood from Improved cottonguts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved cottonguts-2',
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
				base_recipe = 'Extract blood from Improved dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved dingrits-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract blood from Improved kmauts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved kmauts-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
					base_recipe = 'Extract blood from Improved Korlex',
					current_lvl = 1,
					upgrade_1 =
						{
						recipe = 'Extract blood from Improved Korlex-2',
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
				base_recipe = 'Extract blood from Improved Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved Trits-1',
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
				base_recipe = 'Extract Arthropod blood from Improved Vonixes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Arthropod blood from Improved Vonixes-2',
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
				base_recipe = 'Extract blood from Improved xyhiphoe',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract blood from Improved xyhiphoe-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Arthropod blood from Improved Zipir',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Arthropod blood from Improved Zipir-2',
					tech = 'transgenes',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract arthropodblood from Improved arqads',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arthropodblood from Improved arqads-2',
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
				base_recipe = 'Extract cottongut skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract cottongut skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract cottongut skin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dhilmos chitin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dhilmos chitin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dhilmos chitin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract arqad chitin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract arqad chitin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract arqad chitin-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract dingrits Pelt-1a',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits Pelt-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract dingrits Pelt-2',
					tech = 'double-skin',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'Extract Korlex skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Korlex skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Korlex skin-2',
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
				base_recipe = 'Extract phadai Skin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai Skin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract phadai Skin-2',
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
				base_recipe = 'Extract xeno chitin',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xeno chitin-1',
					tech = 'defective-collagen',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract xeno chitin-2',
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
				base_recipe = 'Extract skin from Improved cottonguts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved cottonguts-2',
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
				base_recipe = 'Extract chitin from Improved arqads',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract chitin from Improved arqads-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract pelt from Improved dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract pelt from Improved dingrits-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved Korlex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Korlex-2',
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
				base_recipe = 'Extract skin from Improved Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Trits-2',
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
				base_recipe = 'Extract skin from Improved Vonixes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Vonixes-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract skin from Improved Vrauks',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Vrauks-2',
					tech = 'double-skin',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract Chitin from Improved xenos',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Chitin from Improved xenos-2',
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
				base_recipe = 'Extract skin from Improved Zipir',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract skin from Improved Zipir-2',
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
				base_recipe = 'Extract cottongut lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract cottongut lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract cottongut lard-2',
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
				base_recipe = 'Extract Korlex lard',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Korlex lard-1',
					tech = 'force-feeding',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'Extract Korlex lard-2',
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
				base_recipe = 'Extract fat from Improved arthurians',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved arthurians-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved auogs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved auogs-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved cottonguts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved cottonguts-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved dhilmoss',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved dhilmoss-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved dingrits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved dingrits-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved kmauts',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved kmauts-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved Korlex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved Korlex-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved Mukmouxs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved Mukmouxs-2',
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
				base_recipe = 'Extract fat from Improved scrondrixs',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved scrondrixs-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved Trits',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved Trits-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved Ulrics',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved Ulrics-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract fat from Improved Vonixes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved Vonixes-2',
					tech = 'fto4',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'Extract lard from Improved Vrauks',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract lard from Improved Vrauks-2',
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
				base_recipe = 'Extract fat from Improved Zipir',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract fat from Improved Zipir-2',
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
				--carapace
				{
				base_recipe = 'Extract phadai Carapace',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract phadai Carapace-1',
					tech = 'party-animal',
					unlocked = false,
					level = 2,
					},
				},
				--pelt
				{
				base_recipe = 'Extract dingrits Pelt',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits Pelt-1a',
					tech = 'exo-insertion',
					unlocked = false,
					level = 2,
					},
				},
				--spikes
				{
				base_recipe = 'Extract dingrits Spikes',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract dingrits Spikes-1',
					tech = 'argumented-spikes',
					unlocked = false,
					level = 2,
					},
				},
				--pineal
				{
				base_recipe = 'Extract scrondrix Pineal Gland',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract scrondrix Pineal Gland-1',
					tech = 'conarium-stem',
					unlocked = false,
					level = 2,
					},
				},
				--tendon
				{
				base_recipe = 'Extract kmauts tendons',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract kmauts tendons-1',
					tech = 'hydrolase-amplification',
					unlocked = false,
					level = 2,
					},
				},
				--venom
				{
				base_recipe = 'Extract Vonix´s Venom Gland',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Vonix´s Venom Gland-1',
					tech = 'zootoxins',
					unlocked = false,
					level = 2,
					},
				},
				--shell
				{
				base_recipe = 'Extract xyhiphoe shell',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract xyhiphoe shell-1',
					tech = 'artificial-calcification',
					unlocked = false,
					level = 2,
					},
				},
				--cortex
				{
				base_recipe = 'adrenal-cortex',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'adrenal-cortex-2',
					tech = 'stochastic-cortex',
					unlocked = false,
					level = 2,
					},
				},
				--photophore
				{
				base_recipe = 'Extract Trits Photophores',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'Extract Trits Photophores-1',
					tech = 'ctc',
					unlocked = false,
					level = 2,
					},
				},
				--propolis
				{
				base_recipe = 'arqad-propolis-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-propolis-02',
					tech = 'cardial-hypopharynx',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'propolis-diesel-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'propolis-diesel-02',
					tech = 'cardial-hypopharynx',
					unlocked = false,
					level = 2,
					},
				},
				--royal jelly
				{
				base_recipe = 'arqad-jelly-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-jelly-02',
					tech = 'chromasome-infocrystalization',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'jelly-to-kerosene-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'jelly-to-kerosene-02',
					tech = 'chromasome-infocrystalization',
					unlocked = false,
					level = 2,
					},
				},
				--SPORES
				{
				base_recipe = 'navens-spore',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'navens-spore-2',
					tech = 'microfilters',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'navens-spore-3',
					tech = 'microfilters-mk02',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'fawogae-spore',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-spore-2',
					tech = 'microfilters',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'fawogae-spore-3',
					tech = 'microfilters-mk02',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'yaedols-spores',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'yaedols-spores-2',
					tech = 'microfilters',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'yaedols-spores-3',
					tech = 'microfilters-mk02',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'bhoddos-spore',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'bhoddos-spore-2',
					tech = 'microfilters',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'bhoddos-spore-3',
					tech = 'microfilters-mk02',
					unlocked = false,
					level = 3,
					},
				},

				---COMB

				{
				base_recipe = 'arqad-filled-comb-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-comb-1a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-comb-1b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-comb-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-comb-2a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-comb-2b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-comb-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-comb-3a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-comb-3b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-comb-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-comb-4a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-comb-4b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-comb-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-comb-5a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-comb-5b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-comb-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-comb-6a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-comb-6b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-comb-7',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-comb-7a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-comb-7b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},

				---HONEY

				{
				base_recipe = 'arqad-filled-honeycomb-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-1a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-1b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-honeycomb-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-2a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-2b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-honeycomb-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-3a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-3b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-honeycomb-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-4a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-4b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-honeycomb-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-5a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-5b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-honeycomb-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-6a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-6b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-honeycomb-7',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-7a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-7b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},
				{
				base_recipe = 'arqad-filled-honeycomb-8',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arqad-filled-honeycomb-8a',
					tech = 'pheromone-transition',
					unlocked = false,
					level = 2,
					},
				upgrade_2 =
					{
					recipe = 'arqad-filled-honeycomb-8b',
					tech = 'diversified-mycoaccretion',
					unlocked = false,
					level = 3,
					},
				},

--SAWDUST

				{
				base_recipe = 'auog-food-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-food-01b',
					tech = 'sawdust',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'auog-food-02',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'auog-food-02b',
					tech = 'sawdust',
					unlocked = false,
					level = 2,
					},
				},

--MILK

				{
				base_recipe = 'korlex-milk-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'korlex-milk-1b',
					tech = 'biopolymer-clusters',
					unlocked = false,
					level = 2,
					},
				},
				{
					base_recipe = 'korlex-milk-2',
					current_lvl = 1,
					upgrade_1 =
						{
						recipe = 'korlex-milk-2b',
						tech = 'biopolymer-clusters',
						unlocked = false,
						level = 2,
						},
					},
				{
				base_recipe = 'korlex-milk-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'korlex-milk-3b',
					tech = 'biopolymer-clusters',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'korlex-milk-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'korlex-milk-4b',
					tech = 'biopolymer-clusters',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'korlex-milk-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'korlex-milk-5b',
					tech = 'biopolymer-clusters',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'korlex-milk-6',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'korlex-milk-6b',
					tech = 'biopolymer-clusters',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'korlex-milk-7',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'korlex-milk-7b',
					tech = 'biopolymer-clusters',
					unlocked = false,
					level = 2,
					},
				},
			},

--ABACUS

				{
				base_recipe = 'arthurian-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-01a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-02',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-02a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-03',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-03a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-04',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-04a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-05',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-05a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-06',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-06a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-07',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-07a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-08',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-08a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-09',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-09a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-10',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-10a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-11',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-11a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-12',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-12a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-13',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-13a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-14',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-14a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-15',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-15a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-16',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-16a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-17',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-17a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-18',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-18a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-19',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-19a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-20',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-20a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-21',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-21a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-22',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-22a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-23',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-23a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-24',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-24a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-01a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-02',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-02a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-03',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-03a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-04',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-04a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-05',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-05a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-06',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-06a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-07',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-07a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-08',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-08a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-09',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-09a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'arthurian-egg-10',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'arthurian-egg-10a',
					tech = 'abacus',
					unlocked = false,
					level = 2,
					},
				},

--LICHEN

				{
				base_recipe = 'fawogae-01',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-01a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-02',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-02a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-03',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-03a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-04',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-04a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-05',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-05a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-06',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-06a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-07',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-07a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-08',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-08a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-09',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-09a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-10',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-10a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-11',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-11a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-12',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-12a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'fawogae-13',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'fawogae-13a',
					tech = 'lichen',
					unlocked = false,
					level = 2,
					},
				},

--MOSS

				{
				base_recipe = 'moss-1',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'moss-1a',
					tech = 'spores',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'moss-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'moss-2a',
					tech = 'spores',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'moss-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'moss-3a',
					tech = 'spores',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'moss-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'moss-4a',
					tech = 'spores',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'moss-5',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'moss-5a',
					tech = 'spores',
					unlocked = false,
					level = 2,
					},
				},

--SAWDUST

				{
				base_recipe = 'energy-drink',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'energy-drinkb',
					tech = 'ethanol-boost',
					unlocked = false,
					level = 2,
					},
				},

--BIOPRINTING

				{
				base_recipe = 'bio-scafold',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'bio-scafolda',
					tech = 'high-viability',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'bio-scafold-2',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'bio-scafold-2a',
					tech = 'high-viability',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'bio-scafold-3',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'bio-scafold-3a',
					tech = 'high-viability',
					unlocked = false,
					level = 2,
					},
				},
				{
				base_recipe = 'bio-scafold-4',
				current_lvl = 1,
				upgrade_1 =
					{
					recipe = 'bio-scafold-4a',
					tech = 'high-viability',
					unlocked = false,
					level = 2,
					},
				},

		techs_with_upgrades =
			{
				['bigger-colon'] = true,
				['explosive-diarrhea'] = true,
				['metamide5'] = true,
				['myostatin'] = true,
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
				['korlex'] = true,
				['korlex-mk02'] = true,
				['korlex-mk03'] = true,
				['korlex-mk04'] = true,
				['ulric'] = true,
				['ulric-mk02'] = true,
				['ulric-mk03'] = true,
				['ulric-mk04'] = true,
				['mukmoux'] = true,
				['mukmoux-mk02'] = true,
				['mukmoux-mk03'] = true,
				['mukmoux-mk04'] = true,
				['arthurian'] = true,
				['xeno'] = true,
				['dhilmos'] = true,
				['scrondrix'] = true,
				['scrondrix-mk02'] = true,
				['scrondrix-mk03'] = true,
				['scrondrix-mk04'] = true,
				['anabolic-rna'] = true,
				['phadai'] = true,
				['auog'] = true,
				['auog-mk02'] = true,
				['auog-mk03'] = true,
				['auog-mk04'] = true,
				['dingrits'] = true,
				['vonix'] = true,
				['vonix-mk02'] = true,
				['phagnot'] = true,
				['phagnot-mk02'] = true,
				['phagnot-mk03'] = true,
				['phagnot-mk04'] = true,
				['nanochondria'] = true,
				['rendering'] = true,
				['advanced-rendering'] = true,
				['bmp'] = true,
				['zipir'] = true,
				['zipir-mk02'] = true,
				['antitumor'] = true,
				['trits'] = true,
				['trits-mk02'] = true,
				['recombinant-ery'] = true,
				['reca'] = true,
				['orexigenic'] = true,
				['interactive-cognition'] = true,
				['exercises'] = true,
				['osteocyte'] = true,
				['formic'] = true,
				['party-animal'] = true,
				['exo-insertion'] = true,
				['argumented-spikes'] = true,
				['conarium-stem'] = true,
				['hydrolase-amplification'] = true,
				['zootoxins'] = true,
				['artificial-calcification'] = true,
				['stochastic-cortex'] = true,
				['microfilters'] = true,
				['microfilters-mk02'] = true,
				['navens'] = true,
				['mycology-mk01'] = true,
				['mycology-mk02'] = true,
				['mycology-mk03'] = true,
				['mycology-mk04'] = true,
				['lichen'] = true,
				['yaedols'] = true,
				['biopolymer-clusters'] = true,
				['ctc'] = true,
				['cardial-hypopharynx'] = true,
				['chromasome-infocrystalization'] = true,
				['pheromone-transition'] = true,
				['diversified-mycoaccretion'] = true,
				['sawdust'] = true,
				['food-mk01'] = true,
				['food-mk02'] = true,
				['arthurian-mk01'] = true,
				['arthurian-mk02'] = true,
				['arthurian-mk03'] = true,
				['arthurian-mk04'] = true,
				['abacus'] = true,
				['organ-printing-mk01'] = true,
				['organ-printing-mk02'] = true,
				['organ-printing-mk03'] = true,
				['organ-printing-mk04'] = true,
				['high-viability'] = true,
				['ethanol-boost'] = true,
				['spores'] = true,
			},
	}

return(TRlist)
