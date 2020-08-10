local FUN = require("prototypes/functions/functions")

local tech_upgrade =
    {
        vrauk = require("prototypes/upgrades/vrauks"),
        slaughterhouse = require("prototypes/upgrades/slaughterhouse"),
        auog = require("prototypes/upgrades/auog"),
        arqad = require("prototypes/upgrades/arqad"),
        ulric = require("prototypes/upgrades/ulric"),
        seaweed = require("prototypes/upgrades/seaweed"),
        sap = require("prototypes/upgrades/sap"),
        arthurian = require("prototypes/upgrades/arthurian"),
        --test_1 is a filler name for table readablity by fleshy meat bags. name it whatever and then set it to require the tech upgrade fills
        --each name needs to be unque to keep the files seperated
    }

if data ~= nil then
    --log('hit')
FUN.tech_upgrade(tech_upgrade)
else
    --log('hit')
    return(tech_upgrade)
end