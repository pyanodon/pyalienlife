local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'navens',
	--baseitem = 'ralesia',
	category = 'navens',
	--module_limitations = 'fawogae',
    mats =
	{
    --green
    {
        ingredients =
            {
                {'navensspore',2},
                {'guts',5},
                {'water','*10'},
            },
        results =
            {
                {'navens'}
            },
        crafting_speed = 100,
        tech = 'navens'
    },
    {
        ingredients =
            {
                {'fungalsubstrate02',2},
            },
        results =
            {
                {'navens','+1'}
            },
        crafting_speed = 100,
        tech = 'navens'
    },
    {
        ingredients =
            {
                {'manure',5},
            },
        results =
            {
                {'navens','+2'}
            },
        crafting_speed = 90,
        tech = 'navens'
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
                {'navens',5}
            },
        crafting_speed = 90,
        tech = 'navens'
    },
    {
        ingredients =
            {
                {'manure',5},
            },
        results =
            {
                {'navens',6}
            },
        crafting_speed = 90,
        tech = 'navens'
    },
    {
        ingredients =
            {
                {'biomass',10},
            },
        results =
            {
                {'navens',7}
            },
        crafting_speed = 90,
        tech = 'navens'
    },
    {
        ingredients =
            {
                {'nitrogen','*10'},
            },
        results =
            {
                {'navens',8}
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
                {'navens',9}
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
                {'navens',9}
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
                {'navens',10}
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
                {'navens',14}
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
                {'navens',15}
            },
        crafting_speed = 70,
        tech = 'mycology-mk04'
    },
	}
}
