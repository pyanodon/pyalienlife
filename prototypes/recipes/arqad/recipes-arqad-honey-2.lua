
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'filled-honeycomb-b',
	category = 'arqad',
	subgroup = 'py-alienlife-arqad',
	module_limitations = 'arqad',
    mats =
	{
		{
			ingredients =
				{
                    {name='empty-honeycomb',amount =5},
                    {name='ulric',amount =1},
				},
			results =
				{
					{name='honeycomb',amount ='*5'},
				},
			crafting_speed = 80,
			tech = 'diversified-mycoaccretion',
			name = 'arqad-filled-honeycomb-1b',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
                    {name='empty-honeycomb',amount ='+3'},
					{name='navens'},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+3'}
				},
			crafting_speed = 70,
			tech = 'diversified-mycoaccretion',
			name = 'arqad-filled-honeycomb-2b',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		{
			ingredients =
				{
                    {name='empty-honeycomb',amount ='+2'},
					{name='skin',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 50,
				tech = 'diversified-mycoaccretion',
				name = 'arqad-filled-honeycomb-3b',
        },
        {
			ingredients =
				{
                    {name='empty-honeycomb',amount ='+2'},
					{name='meat',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 50,
				tech = 'diversified-mycoaccretion',
				name = 'arqad-filled-honeycomb-4b',
		},
		{
			ingredients =
				{
                    {name='empty-honeycomb',amount ='+2'},
					{name='cottongut',amount =2},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 45,
				tech = 'diversified-mycoaccretion',
				name = 'arqad-filled-honeycomb-5b',
		},
		{
			ingredients =
				{
                    {name='empty-honeycomb',amount ='+6'},
					{name='meat',amount ='R'},
                    {name='cottongut',amount ='R'},
                    {name='ulric',amount ='R'},
					{name='navens',amount ='R'},
					{name='skin',amount ='R'},
					{name='mukmoux'},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+6'}
				},
				crafting_speed = 40,
				tech = 'diversified-mycoaccretion',
				name = 'arqad-filled-honeycomb-6b',
		},
		{
			ingredients =
				{
                    {name='empty-honeycomb',amount ='+2'},
					{name='meat',amount =4},
					{name='skin',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 25,
				tech = 'diversified-mycoaccretion',
				name = 'arqad-filled-honeycomb-7b',
		},
		{
			ingredients =
				{
                    {name='empty-honeycomb',amount ='+2'},
					{name='cottongut',amount =3},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 20,
				tech = 'diversified-mycoaccretion',
				name = 'arqad-filled-honeycomb-8b',
		},
	}
}
