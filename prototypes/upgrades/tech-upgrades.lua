local tech_upgrades = {
    -- pyAL non-organics
    atomizer = require('prototypes/upgrades/atomizer'),
    bioprinting = require('prototypes/upgrades/bioprinting'),
    biofactory = require('prototypes/upgrades/biofactory'),
    bioreactor = require('prototypes/upgrades/bioreactor'),
    compost = require('prototypes/upgrades/compost'),
    creature = require('prototypes/upgrades/creature'),
    dataarray = require('prototypes/upgrades/data-array'),
    genlab = require('prototypes/upgrades/genlab'),
    incubator = require('prototypes/upgrades/incubator'),
    micromine = require('prototypes/upgrades/micromine'),
    research = require('prototypes/upgrades/research'),
    slaughterhouse = require('prototypes/upgrades/slaughterhouse'),

    -- pYAL organics
    auog = require('prototypes/upgrades/auog'),
    arqad = require('prototypes/upgrades/arqad'),
    arthurian = require('prototypes/upgrades/arthurian'),
    bhoddos = require('prototypes/upgrades/bhoddos'),
    cottongut = require('prototypes/upgrades/cottongut'),
    cridren = require('prototypes/upgrades/cridren'),
    dhilmos = require('prototypes/upgrades/dhilmos'),
    dingrits = require('prototypes/upgrades/dingrits'),
    korlex = require('prototypes/upgrades/korlex'),
    fawogae = require('prototypes/upgrades/fawogae'),
    fish = require('prototypes/upgrades/fish'),
    fwf = require('prototypes/upgrades/fwf'),
    grod = require('prototypes/upgrades/grod'),
    kmauts = require('prototypes/upgrades/kmauts'),
    moss = require('prototypes/upgrades/moss'),
    mukmoux = require('prototypes/upgrades/mukmoux'),
    navens = require('prototypes/upgrades/navens'),
    phadai = require('prototypes/upgrades/phadai'),
    phagnot = require('prototypes/upgrades/phagnot'),
    ralesia = require('prototypes/upgrades/ralesia'),
    rennea = require('prototypes/upgrades/rennea'),
    sap = require('prototypes/upgrades/sap'),
    seaweed = require('prototypes/upgrades/seaweed'),
    scrondrix = require('prototypes/upgrades/scrondrix'),
    --simik = require('prototypes/upgrades/simik'),    better to use simik metal 1-6
    sponge = require('prototypes/upgrades/sponge'),
    trits = require('prototypes/upgrades/trits'),
    tuuphra = require('prototypes/upgrades/tuuphra'),
    ulric = require('prototypes/upgrades/ulric'),
    vonix = require('prototypes/upgrades/vonix'),
    vrauk = require('prototypes/upgrades/vrauks'),
    xeno = require('prototypes/upgrades/xeno'),
    xyhiphoe = require('prototypes/upgrades/xyhiphoe'),
    yaedols = require('prototypes/upgrades/yaedols'),
    yotoi = require('prototypes/upgrades/yotoi'),
    zipir = require('prototypes/upgrades/zipir'),

    -- pyHT organics
    antelope = require('prototypes/upgrades/antelope'),
    cadaveric = require('prototypes/upgrades/cadaveric'),
    kicalk = require('prototypes/upgrades/kicalk'),
    moondrop = require('prototypes/upgrades/moondrop'),

    -- simik metals
    simikmetalMK01 = require('prototypes/upgrades/simikmetalMK01'),
    simikmetalMK02 = require('prototypes/upgrades/simikmetalMK02'),
    simikmetalMK03 = require('prototypes/upgrades/simikmetalMK03'),
    simikmetalMK04 = require('prototypes/upgrades/simikmetalMK04'),
    simikmetalMK05 = require('prototypes/upgrades/simikmetalMK05'),
    simikmetalMK06 = require('prototypes/upgrades/simikmetalMK06'),
}

if data then
    local FUN = require('__pycoalprocessing__/prototypes/functions/functions')
    for _, tech_upgrade in pairs(tech_upgrades) do
        FUN.tech_upgrade(tech_upgrade)
    end
else
    return tech_upgrades
end
