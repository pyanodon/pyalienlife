-- actual runtime scripting for smart farm type entities

local launch_results = {}
local rocket_silos = {}

local function add_rocket_silo(silo_data)
    rocket_silos[silo_data.entity] = silo_data
end

local function add_launch_products(product_data)
    launch_results[product_data.name] = product_data
end

remote.add_interface("py_smart_farming", {
    add_rocket_silo = add_rocket_silo,
    add_launch_products = add_launch_products
})

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if not rocket_silos[entity.name] then return end

    -- finally, added in 2.0.73
	entity.send_to_orbit_automatically = true

    -- run the on_built function, if exists
    if rocket_silos[entity.name].on_built then
        rocket_silos[entity.name].on_built(entity)
    end
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if not rocket_silos[entity.name] then return end

    -- run the on_destroyed function, if exists
    if rocket_silos[entity.name].on_destroyed then
        rocket_silos[entity.name].on_destroyed(entity)
    end
end)

---@param event EventData.on_rocket_launched
py.on_event(defines.events.on_rocket_launched, function(event)
    local silo = event.rocket_silo --[[@as LuaEntity]]
    if not silo or not silo.valid then return end -- silo died after launch started
    if not rocket_silos[silo.name] then return end
    local satellite = event.rocket.cargo_pod.get_inventory(defines.inventory.cargo_unit).get_contents()[1]
    if not satellite then return end
    rocket_silos[silo.name].on_launch(silo, launch_results[satellite.name])
end)
