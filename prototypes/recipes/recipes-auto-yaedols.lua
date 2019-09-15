local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'yaedols',
	--baseitem = 'ralesia',
	category = 'yaedols',
	--module_limitations = 'fawogae',
    mats =
	{
    --green
    {
        ingredients =
            {
                {name='yaedolsspore',amount =2},
                {name='wood',amount =10},
                {name='water',amount ='*10'},
            },
        results =
            {
                {name='yaedols'}
            },
        crafting_speed = 100,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {name='fungalsubstrate02',amount =2},
            },
        results =
            {
                {name='yaedols',amount ='+1'}
            },
        crafting_speed = 100,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {name='manure',amount =5},
            },
        results =
            {
                {name='yaedols',amount ='+1'}
            },
        crafting_speed = 100,
        tech = 'yaedols'
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
                {name='yaedols',amount =3}
            },
        crafting_speed = 90,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {name='manure',amount =5},
            },
        results =
            {
                {name='yaedols',amount =4}
            },
        crafting_speed = 90,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {name='biomass',amount =10},
            },
        results =
            {
                {name='yaedols',amount =5}
            },
        crafting_speed = 90,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {name='nitrogen',amount ='*10'},
            },
        results =
            {
                {name='yaedols',amount =6}
            },
        crafting_speed = 90,
        tech = 'mycology-mk03'
    },
    {
        ingredients =
            {
                {name='biomass',amount ='R'},
                {name='urea',amount =10},
            },
        results =
            {
                {name='yaedols',amount =8}
            },
        crafting_speed = 90,
        tech = 'mycology-mk03'
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
                {name='yaedols',amount =8}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
    },
    {
        ingredients =
            {
                {name='urea',amount ='10'},
                --{'nitrogen','R'},
                --{'manure','R'},
                --{'biomass','R'},
                --{'gh',1},
            },
        results =
            {
                {name='yaedols',amount =10}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
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
                {name='yaedols',amount =12}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
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
                {name='yaedols',amount =15}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
    },
	}
}
