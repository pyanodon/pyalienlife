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
                {name='yaedols-spore',amount =2},
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
                {name='fungal-substrate-02',amount =2},
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
                {name='fungal-substrate-02',remove_item = true},
                {name='manure',remove_item = true},
                {name='fungal-substrate-03',amount =2},
            },
        results =
            {
                {name='yaedols',amount =3}
            },
        crafting_speed = 90,
        tech = 'yaedols-mk02'
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
        tech = 'yaedols-mk02'
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
        tech = 'yaedols-mk03'
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
        tech = 'yaedols-mk03'
    },
    {
        ingredients =
            {
                {name='biomass',remove_item = true},
                {name='urea',amount =10},
            },
        results =
            {
                {name='yaedols',amount =8}
            },
        crafting_speed = 90,
        tech = 'yaedols-mk03'
    },
    --GH
    {
        ingredients =
            {
                {name='urea',remove_item = true},
                {name='nitrogen',remove_item = true},
                {name='manure',remove_item = true},
                {name='biomass',remove_item = true},
                {name='gh',amount =1},
            },
        results =
            {
                {name='yaedols',amount =8}
            },
        crafting_speed = 70,
        tech = 'yaedols-mk04'
    },
    {
        ingredients =
            {
                {name='urea',amount =10},
                --{'nitrogen',remove_item = true},
                --{'manure',remove_item = true},
                --{'biomass',remove_item = true},
                --{'gh',1},
            },
        results =
            {
                {name='yaedols',amount =10}
            },
        crafting_speed = 70,
        tech = 'yaedols-mk04'
    },
    {
        ingredients =
            {
                {name='bacteria-2',amount ='*20'},
                --{'manure',remove_item = true},
                --{'biomass',remove_item = true},
                --{'gh',1},
            },
        results =
            {
                {name='yaedols',amount =12}
            },
        crafting_speed = 70,
        tech = 'yaedols-mk04'
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
        tech = 'yaedols-mk04'
    },
	}
}
