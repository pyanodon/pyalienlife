local FUN = require("__pycoalprocessing__/prototypes/functions/functions")


FUN.autorecipes {
    name = 'navens',
	category = 'navens',
    module_limitations = "navens",
	subgroup = 'py-alienlife-navens',
	order = 'b',
    mats =
	{
        --logistic
        {
            ingredients =
                {
                    {name='navens-spore', amount =2},
                    {name='guts', amount =5},
                    {name='water', amount = 100},
                    {name='fungal-substrate-02', amount =2},
                    {name='fertilizer', amount =5},
                },
            results =
                {
                    {name='navens', amount = 7}
                },
            crafting_speed = 100,
            tech = 'navens'
        },
        --py
        {
            ingredients =
                {
                    {name='fungal-substrate-02',remove_item = true},
                    {name='fungal-substrate-03', amount =2},
                    {name='fertilizer', add_amount = 5},
                    {name='biomass', amount =10},
                },
            results =
                {
                    {name='navens', add_amount = 7}
                },
            crafting_speed = 90,
            tech = 'navens-mk02'
        },
        --chem
        {
            ingredients =
                {
                    {name='water', remove_item = true},
                    {name='nitrogen', amount = 100},
                    {name='urea', amount =10, fallback = 'manure'},
                },
            results =
                {
                    {name='navens', add_amount = 7}
                },
            crafting_speed = 90,
            tech = 'navens-mk03'
        },
        --production
        {
            ingredients =
                {
                    {name='gh', amount =1},
                    {name='urea', add_amount =10, fallback = 'manure'},
                    {name='bacteria-2', amount = 200,fallback = 'bacteria-1'},
                    {name='fertilizer', amount =10},
                    {name='biomass', amount =15},
                },
            results =
                {
                    {name='navens', add_amount = 7}
                },
            crafting_speed = 70,
            tech = 'navens-mk04'
        },
	}
}
