local FUN = require("prototypes/functions/functions")

local tech_upgrade =
    {
        auog = require("prototypes/upgrades/auog"),
        arqad = require("prototypes/upgrades/arqad"),
        arthurian = require("prototypes/upgrades/arthurian"),
        atomizer = require("prototypes/upgrades/atomizer"),
        bhoddos = require("prototypes/upgrades/bhoddos"),
        bioprinting = require("prototypes/upgrades/bioprinting"),
        biofactory = require("prototypes/upgrades/biofactory"),
        bioreactor = require("prototypes/upgrades/bioreactor"),
        compost = require("prototypes/upgrades/compost"),
        cottongut = require("prototypes/upgrades/cottongut"),
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
        kmauts = require("prototypes/upgrades/kmauts"),
        micromine = require("prototypes/upgrades/micromine"),
        moss = require("prototypes/upgrades/moss"),
        mukmoux = require("prototypes/upgrades/mukmoux"),
        navens = require("prototypes/upgrades/navens"),
        phadai = require("prototypes/upgrades/phadai"),
        phagnot = require("prototypes/upgrades/phagnot"),
        ralesia = require("prototypes/upgrades/ralesia"),
        rennea = require("prototypes/upgrades/rennea"),
        research = require("prototypes/upgrades/research"),
        sap = require("prototypes/upgrades/sap"),
        seaweed = require("prototypes/upgrades/seaweed"),
        scrondrix = require("prototypes/upgrades/scrondrix"),
        simik = require("prototypes/upgrades/simik"),
        slaughterhouse = require("prototypes/upgrades/slaughterhouse"),
        sponge = require("prototypes/upgrades/sponge"),
        trits = require("prototypes/upgrades/trits"),
        tuuphra = require("prototypes/upgrades/tuuphra"),
        ulric = require("prototypes/upgrades/ulric"),
        vonix = require("prototypes/upgrades/vonix"),
        vrauk = require("prototypes/upgrades/vrauks"),
        xeno = require("prototypes/upgrades/xeno"),
        xyhiphoe = require("prototypes/upgrades/xyhiphoe"),
        yaedols = require("prototypes/upgrades/yaedols"),
        yotoi = require("prototypes/upgrades/yotoi"),
        zipir = require("prototypes/upgrades/zipir"),

        --pyht techs
        antelope = require("prototypes/upgrades/antelope"),
        cadaveric = require("prototypes/upgrades/cadaveric"),
        kicalk = require("prototypes/upgrades/kicalk"),
        moondrop = require("prototypes/upgrades/moondrop"),

        --simik metals
        simikmetalMK01 = require("prototypes/upgrades/simikmetalMK01"),
        simikmetalMK02 = require("prototypes/upgrades/simikmetalMK02"),
        simikmetalMK03 = require("prototypes/upgrades/simikmetalMK03"),
        simikmetalMK04 = require("prototypes/upgrades/simikmetalMK04"),
        simikmetalMK05 = require("prototypes/upgrades/simikmetalMK05"),
        simikmetalMK06 = require("prototypes/upgrades/simikmetalMK06"),
        --test_1 is a filler name for table readablity by fleshy meat bags. name it whatever and then set it to require the tech upgrade fills
        --each name needs to be unque to keep the files seperated
    }

log(serpent.block(tech_upgrade))

if data ~= nil then
    --log('hit')
FUN.tech_upgrade(tech_upgrade)
else
    --log('hit')
    return(tech_upgrade)
end
