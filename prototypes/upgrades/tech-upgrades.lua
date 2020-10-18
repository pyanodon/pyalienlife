local FUN = require("prototypes/functions/functions")

local tech_upgrade =
    {
        auog = require("prototypes/upgrades/auog"),
        arqad = require("prototypes/upgrades/arqad"),
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
        cridren = require("prototypes/upgrades/cridren"),
        dataarray = require("prototypes/upgrades/data-array"),
        dhilmos = require("prototypes/upgrades/dhilmos"),
        dingrits = require("prototypes/upgrades/dingrits"),
        korlex = require("prototypes/upgrades/korlex"),
        fawogae = require("prototypes/upgrades/fawogae"),
        fish = require("prototypes/upgrades/fish"),
        fwf = require("prototypes/upgrades/fwf"),
        genlab = require("prototypes/upgrades/genlab"),
        grod = require("prototypes/upgrades/grod"),
        incubator = require("prototypes/upgrades/incubator"),
        kicalk = require("prototypes/upgrades/kicalk"),
        kmauts = require("prototypes/upgrades/kmauts"),
        micromine = require("prototypes/upgrades/micromine"),
        moss = require("prototypes/upgrades/moss"),
        mukmoux = require("prototypes/upgrades/mukmoux"),
        ulric = require("prototypes/upgrades/ulric"),
        seaweed = require("prototypes/upgrades/seaweed"),
        sap = require("prototypes/upgrades/sap"),
        slaughterhouse = require("prototypes/upgrades/slaughterhouse"),
        vrauk = require("prototypes/upgrades/vrauks"),
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