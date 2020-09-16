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
        antelope = require("prototypes/upgrades/antelope"),
        arthurian = require("prototypes/upgrades/arthurian"),
        atomizer = require("prototypes/upgrades/atomizer"),
        bhoddos = require("prototypes/upgrades/bhoddos"),
        bioprinting = require("prototypes/upgrades/bioprinting"),
        biofactory = require("prototypes/upgrades/biofactory"),
        bioreactor = require("prototypes/upgrades/bioreactor"),
        cadaveric = require("prototypes/upgrades/cadaveric"),
        compost = require("prototypes/upgrades/compost"),
        creature = require("prototypes/upgrades/creature"),
        genlab = require("prototypes/upgrades/genlab"),
        cridren = require("prototypes/upgrades/cridren"),
        dataarray = require("prototypes/upgrades/data-array"),
        dhilmos = require("prototypes/upgrades/dhilmos"),
        dingrits = require("prototypes/upgrades/dingrits"),
        korlex = require("prototypes/upgrades/korlex"),
        fawogae = require("prototypes/upgrades/fawogae"),
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