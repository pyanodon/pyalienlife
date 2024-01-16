local zungror = data.raw['item-with-entity-data'].spidertron
zungror.icon = '__pyalienlifegraphics__/graphics/icons/spidertron.png'
zungror.icon_size = 64
zungror.icon_mipmaps = nil
zungror.icon_tintable = zungror.icon
zungror.icon_tintables = nil
zungror.icon_tintable_masks = nil
zungror.minimap_representation = {
    filename = '__pyalienlifegraphics2__/graphics/icons/caravan-map-tag-mk02.png',
    flags = {'icon'},
    size = {64, 64}
}
zungror.icon_tintable_mask = '__pyalienlifegraphics__/graphics/icons/mount-mask.png'
data.raw['spidertron-remote']['spidertron-remote'].subgroup = 'py-alienlife-special-creatures'
data.raw['spidertron-remote']['spidertron-remote'].order = 'z-c'

RECIPE('spidertron-remote').ingredients = {
    {mods.pyalternativeenergy and 'electronics-mk01' or 'copper-plate', 5},
    {'electronic-circuit', 5}
}

RECIPE {
    name = 'spidertron',
    type = 'recipe',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'py-shed-basic', amount = 1},
        {mods.pyalternativeenergy and 'zungror' or 'auog', 1},
        {'power-armor', 1},
        {mods.pyalternativeenergy and 'hydraulic-system-mk01' or 'copper-plate', 8},
        {'energy-shield-mk2-equipment', 2},
        {'processing-unit', 8},
        {'alien-sample-03', 10},
        {mods.pyalternativeenergy and 'mechanical-parts-03' or 'gastrocapacitor', 8},
        {mods.pyalternativeenergy and 'earth-spider-sample' or 'strorix-unknown-sample', 8},
        {type = 'fluid', name = 'molten-nexelit', amount = 800},
        {type = 'fluid', name = 'artificial-blood', amount = 300},
        {'small-parts-03', 80},
        {'neuromorphic-chip', 4},
        {'nanofibrils', 8},
        {mods.pyalternativeenergy and 'dieletric-layer' or 'iron-plate', 8},
        {'high-grade-lead', 8},
        {mods.pyalternativeenergy and 'zungror-codex' or 'electronic-circuit', 1}
    },
    results = {
        {type = 'item', name = 'spidertron', amount = 1},
    },
    main_product = 'spidertron',
}:add_unlock('spidertron')

RECIPE('spidertron-remote'):add_unlock('spidertron')

local zungror = data.raw['spider-vehicle'].spidertron
zungror.inventory_size = 160
zungror.energy_source = nil
zungror.burner = {
    fuel_category = 'gastrocapacitor',
    effectivity = 1,
    fuel_inventory_size = 4
}
zungror.movement_energy_consumption = '8MW'
zungror.equipment_grid = 'mount-grid-10x8'
zungror.healing_per_tick = 0.08