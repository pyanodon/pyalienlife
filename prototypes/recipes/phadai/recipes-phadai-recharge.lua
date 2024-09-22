
RECIPE {
    type = 'recipe',
    name = 'phadai-recharge-1',
    category = 'bay',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'used-phadai', amount = 3},
        {type = 'item', name = 'cottongut', amount = 3},
        {type = 'item', name = 'phadai-food-01', amount = 2},
        {type = 'item', name = 'ethanol-barrel', amount = 2}
    },
    results = {
        {type = 'item', name = 'phadai', amount = 3},
        {type = 'item', name = 'barrel', amount = 2},
    },
    main_product = 'phadai'
}:add_unlock("phadai")

--[[
Cocaine (42) is produced industrially from
natural sources. The alkaloid is extracted from
coca leaves with dilute sulfuric acid and hydrolyzed to ecgonine (41). The purified base is
esterified with methanol and then acylated with
benzoyl chloride to cocaine.
]]--

--make coke from rennea
