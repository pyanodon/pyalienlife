local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'bhoddos',
	--baseitem = 'ralesia',
	category = 'bhoddos',
	subgroup = 'py-alienlife-bhoddos',
	order = 'b',
    mats =
	{
    --red
    {
        ingredients =
            {
                {name='bhoddosspore',amount =2},
                {name='biomass',amount =10},
                {name='water',amount ='*10'},
            },
        results =
            {
                {name='bhoddos'}
            },
        crafting_speed = 140,
        tech = 'bhoddos'
    },
    {
        ingredients =
            {
                {name='fungalsubstrate',amount =1},
            },
        results =
            {
                {name='bhoddos', amount ='+1'}
            },
        crafting_speed = 130,
        tech = 'bhoddos'
    },
    --green
    {
        ingredients =
            {
                {name='fungalsubstrate',amount ='R'},
                {name='fungalsubstrate02',amount =2},
            },
        results =
            {
                {name='bhoddos', amount ='+1'}
            },
        crafting_speed = 120,
        tech = 'bhoddos-mk02'
    },
    {
        ingredients =
            {
                {name='ash',amount =10},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 100,
        tech = 'bhoddos-mk02'
    },
    {
        ingredients =
            {
                {name='manure',amount =5},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 90,
        tech = 'bhoddos-mk02'
    },
    --blue
    {
        ingredients =
            {
                {name='fungalsubstrate02',amount ='R'},
                {name='manure',amount ='R'},
                {name='ash',amount ='R'},
                {name='fungalsubstrate03',amount =2},
            },
        results =
            {
                {name='bhoddos',amount =5}
            },
        crafting_speed = 90,
        tech = 'bhoddos-mk03'
    },
    {
        ingredients =
            {
                {name='manure',amount =5},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 90,
        tech = 'bhoddos-mk03'
    },
    {
        ingredients =
            {
                {name='moss',amount =10},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 90,
        tech = 'bhoddos-mk03'
    },
    {
        ingredients =
            {
                {name='ammonia',amount ='*10'},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 90,
        tech = 'bhoddos-mk03'
    },
    {
        ingredients =
            {
                {name='moss',amount ='R'},
                {name='urea',amount =10},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 90,
        tech = 'bhoddos-mk03'
    },
    --GH
    {
        ingredients =
            {
                {name='urea',amount ='R'},
                {name='ammonia',amount ='R'},
                {name='manure',amount ='R'},
                {name='moss',amount ='R'},
                {name='gh',amount =1},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 70,
        tech = 'bhoddos-mk04'
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
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 70,
        tech = 'bhoddos-mk04'
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
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 70,
        tech = 'bhoddos-mk04'
    },
    {
        ingredients =
            {
                {name='manure',amount =10},
                {name='moss',amount =15},
                --{'gh',1},
            },
        results =
            {
                {name='bhoddos',amount ='+1'}
            },
        crafting_speed = 70,
        tech = 'bhoddos-mk04'
    },
	}
}
