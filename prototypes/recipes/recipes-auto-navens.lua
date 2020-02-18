local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'navens',
	--baseitem = 'ralesia',
	category = 'navens',
	subgroup = 'py-alienlife-navens',
	order = 'b',
    mats =
	{
    --green
    {
        ingredients =
            {
                {name='navensspore',amount =2},
                {name='guts',amount =5},
                {name='water',amount ='*10'},
            },
        results =
            {
                {name='navens'}
            },
        crafting_speed = 100,
        tech = 'navens'
    },
    {
        ingredients =
            {
                {name='fungalsubstrate02',amount =2},
            },
        results =
            {
                {name='navens',amount ='+1'}
            },
        crafting_speed = 100,
        tech = 'navens'
    },
    {
        ingredients =
            {
                {name='manure',amount =5},
            },
        results =
            {
                {name='navens',amount ='+2'}
            },
        crafting_speed = 90,
        tech = 'navens'
    },
    --blue
    {
        ingredients =
            {
                {name='fungalsubstrate02',amount ='R'},
                {name='manure',amount ='R'},
                {name='fungalsubstrate03',amount =2},
            },
        results =
            {
                {name='navens',amount =5}
            },
        crafting_speed = 90,
        tech = 'navens-mk02'
    },
    {
        ingredients =
            {
                {name='manure',amount =5},
            },
        results =
            {
                {name='navens',amount =6}
            },
        crafting_speed = 90,
        tech = 'navens-mk02'
    },
    {
        ingredients =
            {
                {name='biomass',amount =10},
            },
        results =
            {
                {name='navens',amount =7}
            },
        crafting_speed = 90,
        tech = 'navens-mk02'
    },
    {
        ingredients =
            {
                {name='nitrogen',amount ='*10'},
            },
        results =
            {
                {name='navens',amount =8}
            },
        crafting_speed = 90,
        tech = 'navens-mk03'
    },
    {
        ingredients =
            {
                {name='biomass',amount ='R'},
                {name='urea',amount =10},
            },
        results =
            {
                {name='navens',amount =9}
            },
        crafting_speed = 90,
        tech = 'navens-mk03'
    },
    --GH
    {
        ingredients =
            {
                {name='urea',amount ='R'},
                {name='nitrogen',amount ='R'},
                {name='manure',amount ='R'},
                {name='biomass',amount ='R'},
                {name='gh',amount =1},
            },
        results =
            {
                {name='navens',amount =9}
            },
        crafting_speed = 70,
        tech = 'navens-mk04'
    },
    {
        ingredients =
            {
                {name='urea',amount =10},
                --{'nitrogen','R'},
                --{'manure','R'},
                --{'biomass','R'},
                --{'gh',1},
            },
        results =
            {
                {name='navens',amount =10}
            },
        crafting_speed = 70,
        tech = 'navens-mk04'
    },
    {
        ingredients =
            {
                {name='bacteria2',amount ='*20'},
                --{'manure','R'},
                --{'biomass','R'},
                --{'gh',1},
            },
        results =
            {
                {name='navens',amount =14}
            },
        crafting_speed = 70,
        tech = 'navens-mk04'
    },
    {
        ingredients =
            {
                {name='manure',amount =10},
                {name='biomass',amount =15},
                --{'gh',1},
            },
        results =
            {
                {name='navens',amount =15}
            },
        crafting_speed = 70,
        tech = 'navens-mk04'
    },
	}
}
