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
                {'yaedolsspore',2},
                {'wood',10},
                {'water','*10'},
            },
        results =
            {
                {'yaedols'}
            },
        crafting_speed = 100,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {'fungalsubstrate02',2},
            },
        results =
            {
                {'yaedols','+1'}
            },
        crafting_speed = 100,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {'manure',5},
            },
        results =
            {
                {'yaedols','+1'}
            },
        crafting_speed = 100,
        tech = 'yaedols'
    },
    --blue
    {
        ingredients =
            {
                {'fungalsubstrate02','R'},
                {'manure','R'},
                {'fungalsubstrate03',2},
            },
        results =
            {
                {'yaedols',3}
            },
        crafting_speed = 90,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {'manure',5},
            },
        results =
            {
                {'yaedols',4}
            },
        crafting_speed = 90,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {'biomass',10},
            },
        results =
            {
                {'yaedols',5}
            },
        crafting_speed = 90,
        tech = 'yaedols'
    },
    {
        ingredients =
            {
                {'nitrogen','*10'},
            },
        results =
            {
                {'yaedols',6}
            },
        crafting_speed = 90,
        tech = 'mycology-mk03'
    },
    {
        ingredients =
            {
                {'biomass','R'},
                {'urea',10},
            },
        results =
            {
                {'yaedols',8}
            },
        crafting_speed = 90,
        tech = 'mycology-mk03'
    },
    --GH
    {
        ingredients =
            {
                {'urea','R'},
                {'nitrogen','R'},
                {'manure','R'},
                {'biomass','R'},
                {'gh',1},
            },
        results =
            {
                {'yaedols',8}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
    },
    {
        ingredients =
            {
                {'urea','10'},
                --{'nitrogen','R'},
                --{'manure','R'},
                --{'biomass','R'},
                --{'gh',1},
            },
        results =
            {
                {'yaedols',10}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
    },
    {
        ingredients =
            {
                {'bacteria2','*20'},
                --{'manure','R'},
                --{'biomass','R'},
                --{'gh',1},
            },
        results =
            {
                {'yaedols',12}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
    },
    {
        ingredients =
            {
                {'manure',10},
                {'biomass',15},
                --{'gh',1},
            },
        results =
            {
                {'yaedols',15}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
    },
	}
}
