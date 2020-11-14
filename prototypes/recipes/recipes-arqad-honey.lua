
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'filled-honeycomb',
	category = 'arqad',
	subgroup = 'py-alienlife-arqad',
	module_limitations = 'arqad',
    mats =
	{
		{
			ingredients =
				{
                    {name='emptyhoneycomb',amount =3},
                    {name='ulric',amount =1},
				},
			results =
				{
					{name='honeycomb',amount ='*3'},
				},
			crafting_speed = 80,
			tech = 'arqad',
			name = 'arqad-filled-honeycomb-1',
			--icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png"
		},
		{
			ingredients =
				{
                    {name='emptyhoneycomb',amount ='+3'},
					{name='navens'},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+3'}
				},
			crafting_speed = 70,
			tech = 'arqad-mk02',
			name = 'arqad-filled-honeycomb-2',
			--icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png"
		},
		{
			ingredients =
				{
                    {name='emptyhoneycomb',amount ='+2'},
					{name='skin',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 50,
				tech = 'arqad-mk02',
				name = 'arqad-filled-honeycomb-3',
        },
        {
			ingredients =
				{
                    {name='emptyhoneycomb',amount ='+2'},
					{name='meat',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 50,
				tech = 'arqad-mk02',
				name = 'arqad-filled-honeycomb-4',
		},
		{
			ingredients =
				{
                    {name='emptyhoneycomb',amount ='+2'},
					{name='cottongut',amount =2},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 45,
				tech = 'arqad-mk03',
				name = 'arqad-filled-honeycomb-5',
		},
		{
			ingredients =
				{
                    {name='emptyhoneycomb',amount ='+6'},
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
				tech = 'arqad-mk03',
				name = 'arqad-filled-honeycomb-6',
		},
		{
			ingredients =
				{
                    {name='emptyhoneycomb',amount ='+2'},
					{name='meat',amount =4},
					{name='skin',amount =5},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 25,
				tech = 'arqad-mk04',
				name = 'arqad-filled-honeycomb-7',
		},
		{
			ingredients =
				{
                    {name='emptyhoneycomb',amount ='+2'},
					{name='cottongut',amount =3},
				},
			results =
				{
					--{'a','*5'}
					{name='honeycomb',amount ='+2'}
				},
				crafting_speed = 20,
				tech = 'arqad-mk04',
				name = 'arqad-filled-honeycomb-8',
		},
	}
}
