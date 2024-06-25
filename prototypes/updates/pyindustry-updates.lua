data.raw.tile['hazard-concrete-left'].vehicle_friction_modifier = 400
data.raw.tile['hazard-concrete-right'].vehicle_friction_modifier = 400

for _, py_tile in pairs {
    'py-asphalt',
    'py-iron-oxide',
    'py-limestone',
    'py-coal-tile',
    'py-iron',
    'py-steel',
    'py-aluminium',
    'py-nexelit',
    'lab-white',
    'refined-concrete',
    'refined-concrete-red',
    'refined-concrete-green',
    'refined-concrete-blue',
    'refined-concrete-orange',
    'refined-concrete-yellow',
    'refined-concrete-pink',
    'refined-concrete-purple',
    'refined-concrete-black',
    'refined-concrete-brown',
    'refined-concrete-cyan',
    'refined-concrete-acid',
} do
    if not data.raw.tile[py_tile] then error('Tile ' .. py_tile .. ' not found') end
    data.raw.tile[py_tile].walking_speed_modifier = 3.5
    data.raw.tile[py_tile].vehicle_friction_modifier = -0.1 -- negative friction allows vehicles to accelerate forever
end
