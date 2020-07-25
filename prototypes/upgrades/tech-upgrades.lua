local FUN = require("prototypes/functions/functions")

local tech_upgrade =
    {
        test_1 = require("prototypes/upgrades/vrauks"),
        test_2 = require("prototypes/upgrades/slaughterhouse"),
        --test_1 is a filler name for table readablity by fleshy meat bags. name it whatever and then set it to require the tech upgrade fills
        --each name needs to be unque to keep the files seperated
    }

if data ~= nil then
    log('hit')
FUN.tech_upgrade(tech_upgrade)
else
    log('hit')
    return(tech_upgrade)
end