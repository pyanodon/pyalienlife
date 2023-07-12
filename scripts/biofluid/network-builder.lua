local TO_GROUND = 'pipe-to-ground'
local TO_GROUND_CONNECTION = {{
	position = {0, 0},
	direction = defines.direction.north
}}

function Biofluid.network_positions(surface_index)
	local network_positions = global.network_positions[surface_index]
	if not network_positions then
		network_positions = {}
		global.network_positions[surface_index] = network_positions
	end
	return network_positions
end

function Biofluid.heat_connection_facing_offset(entity_direction, connection)
	local direction = (connection.direction + entity_direction) % 8
	if direction == defines.direction.north then
		return {0, -1}
	elseif direction == defines.direction.south then
		return {0, 1}
	elseif direction == defines.direction.east then
		return {1, 0}
	elseif direction == defines.direction.west then
		return {-1, 0}
	end
end

function Biofluid.find_heat_connections(entity)
	local heat_prototype
	if entity.type == TO_GROUND then
		heat_prototype = TO_GROUND_CONNECTION
	else
		local buffer = entity.prototype.heat_buffer_prototype or entity.prototype.heat_energy_source_prototype
		if not buffer then return {} end
		heat_prototype = buffer.connections
	end

	local position = entity.position
	local direction = entity.direction
	local connections = {}
	for _, connection in pairs(heat_prototype) do
		local connection_x = connection.position[1]
		local connection_y = connection.position[2]
		if direction == defines.direction.south then
			connection_y = -connection_y
		elseif direction == defines.direction.east then
			connection_x, connection_y = -connection_y, connection_x
		elseif direction == defines.direction.west then
			connection_x, connection_y = connection_y, connection_x
		end
		local x = math.floor(connection_x + position.x)
		local y = math.floor(connection_y + position.y)
		local offset = Biofluid.heat_connection_facing_offset(entity.direction, connection)
		if offset then connections[#connections+1] = {x = x, y = y, facing_x = x + offset[1], facing_y = y + offset[2]} end
	end
	return connections
end

function Biofluid.find_underground_neighbour(entity)
	local neighbours = entity.neighbours[1]
	if not neighbours or #neighbours ~= 1 then return end
	local neighbor = neighbours[1]
	if not Biofluid.connectable[neighbor.name] then return end
	if neighbor.force_index ~= entity.force_index then return end
	local network_positions = Biofluid.network_positions(entity.surface_index)
	local position = neighbor.position
	local x = math.floor(position.x)
	local y = math.floor(position.y)
	if not network_positions[x] then return end
	local network_position = network_positions[x][y]
	if not network_position or network_position.entity ~= neighbor then return end
	return network_position
end

function Biofluid.find_nearby_pipes(entity, connections)
	local force_index = entity.force_index
	local nearby_pipes = {}
	local network_ids = {}
	local network_positions = Biofluid.network_positions(entity.surface_index)

	for _, connection in pairs(connections) do
		local facing_x, facing_y = connection.facing_x, connection.facing_y
		local x, y = connection.x, connection.y

		if not network_positions[facing_x] then goto continue end
		local network_position = network_positions[facing_x][facing_y]
		if not network_position then goto continue end
		local is_looking_at_us = false
		for _, facing in pairs(network_position.facing) do
			if facing[1] == x and facing[2] == y then
				is_looking_at_us = true
				break
			end
		end
		if not is_looking_at_us then goto continue end
		local other_pipe = network_position.entity
		if not other_pipe then goto continue end
		if not other_pipe.valid then
			network_positions[facing_x][facing_y] = nil
			if not next(network_positions[facing_x]) then network_positions[facing_x] = nil end
			goto continue
		end
		if other_pipe.force_index ~= force_index then goto continue end
		nearby_pipes[#nearby_pipes+1] = network_position
		network_ids[network_position.network_id] = true
		::continue::
	end

	if entity.type == TO_GROUND then
		local network_position = Biofluid.find_underground_neighbour(entity)
		if network_position then
			nearby_pipes[#nearby_pipes+1] = network_position
			network_ids[network_position.network_id] = true
		end
	end

	return nearby_pipes, network_ids
end

-- CONSTRUCTIVE
function Biofluid.built_pipe(entity)
	local connections = Biofluid.find_heat_connections(entity)
	if #connections == 0 then error() end
	local network_positions = Biofluid.network_positions(entity.surface_index)

	for _, connection in pairs(connections) do
		local facing_x, facing_y = connection.facing_x, connection.facing_y
		local x, y = connection.x, connection.y

		if not network_positions[x] then network_positions[x] = {} end
		if not network_positions[x][y] or network_positions[x][y].entity ~= entity then
			network_positions[x][y] = {
				entity = entity,
				facing = {{facing_x, facing_y}}
			}
		else
			table.insert(network_positions[x][y].facing, {facing_x, facing_y})
		end
	end

	local nearby_pipes, network_ids = Biofluid.find_nearby_pipes(entity, connections)
	local network_id
	if #nearby_pipes == 0 then
		network_id = Biofluid.create_network(entity.force_index)
	else
		for k, _ in pairs(network_ids) do
			if network_id then
				Biofluid.join_networks(network_id, k, network_positions)
			else
				network_id = k
			end
		end
	end

	Biofluid.add_to_network(network_id, entity, connections)
	return network_id
end

function Biofluid.join_networks(new_id, old_id, network_positions)
	local new = global.biofluid_networks[new_id]
	local old = global.biofluid_networks[old_id]
	if new.force_index ~= old.force_index then
		game.print('ERROR: Attempt to join two biofluid networks with diffrent forces. ' .. new_id .. ' ' .. old_id)
		return
	end
	for x, column in pairs(old.positions) do
		for y, _ in pairs(column) do
			network_positions[x][y].network_id = new_id
			if not new.positions[x] then new.positions[x] = {} end
			new.positions[x][y] = true
		end
	end
	for unit_number, entity in pairs(old.bioports) do
		new.bioports[unit_number] = entity
		if global.biofluid_bioports[unit_number] then
			global.biofluid_bioports[unit_number].network_id = new_id
		end
	end
	for unit_number, entity in pairs(old.requesters) do
		new.requesters[unit_number] = entity
		if global.biofluid_requesters[unit_number] then
			global.biofluid_requesters[unit_number].network_id = new_id
		end
	end
	for _, entity in pairs(old.providers) do
		if entity.valid then
			new.providers[#new.providers+1] = entity
		end
	end
	global.biofluid_networks[old_id] = nil
end

function Biofluid.create_network(force_index)
	local network_id = #global.biofluid_networks + 1
	local network = {
		force_index = force_index,
		network_id = network_id,
		bioports = {},
		requesters = {},
		providers = {},
		positions = {},
		allocated_fluids_from_providers = {}
	}
	global.biofluid_networks[network_id] = network
	return network_id
end

function Biofluid.add_to_network(network_id, entity, connections)
	local network = global.biofluid_networks[network_id]
	local network_positions = Biofluid.network_positions(entity.surface_index)

	for _, connection in pairs(connections) do
		local x, y = connection.x, connection.y
		network_positions[x][y].network_id = network_id
		if not network.positions[x] then network.positions[x] = {} end
		network.positions[x][y] = true
	end

	local entity_type = Biofluid.connectable[entity.name]
	if entity_type == Biofluid.PIPE then return end
	local unit_number = entity.unit_number
	if entity_type == Biofluid.ROBOPORT then
		network.bioports[unit_number] = entity
		if global.biofluid_bioports[unit_number] then
			global.biofluid_bioports[unit_number].network_id = network_id
		end
	elseif entity_type == Biofluid.REQUESTER then
		network.requesters[unit_number] = entity
		if global.biofluid_requesters[unit_number] then
			global.biofluid_requesters[unit_number].network_id = network_id
		end
	elseif entity_type == Biofluid.PROVIDER then
		network.providers[#network.providers+1] = entity
	end
end

-- DESTRUCTIVE
function Biofluid.destroyed_pipe(entity)
	local connections = Biofluid.find_heat_connections(entity)
	if #connections == 0 then error() end
	local network_positions = Biofluid.network_positions(entity.surface_index)
	local network_id
	local network

	for _, connection in pairs(connections) do
		local x, y = connection.x, connection.y
		if network_positions[x] and network_positions[x][y] then
			if not network then
				network_id = network_positions[x][y].network_id
				network = global.biofluid_networks[network_id]
			end
			network_positions[x][y] = nil
			if not next(network_positions[x]) then
				network_positions[x] = nil
			end
		end

		if network and network.positions[x] then
			network.positions[x][y] = nil
			if not next(network.positions[x]) then network.positions[x] = nil end
		end
	end

	if not network then return end
	Biofluid.remove_from_network(network_id, entity, connections)

	local nearby_pipes = Biofluid.find_nearby_pipes(entity, connections)
	if #nearby_pipes == 0 then
		Biofluid.delete_network(network_id)
	elseif #nearby_pipes > 1 then
		Biofluid.split_network(network_id, network_positions)
	end
end

function Biofluid.split_network(network_id, network_positions)
	local network = global.biofluid_networks[network_id]
	local positions = network.positions
	local entities = {}
	Biofluid.delete_network(network_id)
	for x, column in pairs(positions) do
		for y, _ in pairs(column) do
			if not network_positions[x] then goto continue end
			local network_position = network_positions[x][y]
			if not network_position then goto continue end
			network_positions[x][y] = nil
			local entity = network_position.entity
			if entity.valid then entities[#entities+1] = entity end
			::continue::
		end
	end

	for _, entity in pairs(entities) do Biofluid.built_pipe(entity) end
end

function Biofluid.delete_network(network_id)
	global.biofluid_networks[network_id] = nil
end

function Biofluid.remove_from_network(network_id, entity, connections)
	local network = global.biofluid_networks[network_id]
	local network_positions = Biofluid.network_positions(entity.surface_index)

	for _, connection in pairs(connections) do
		local x, y = connection.x, connection.y
		if network_positions[x] then network_positions[x][y] = nil end
		if network.positions[x] then network.positions[x][y] = nil end
	end

	local entity_type = Biofluid.connectable[entity.name]
	if entity_type == Biofluid.PIPE then
		-- pass
	elseif entity_type == Biofluid.PROVIDER then
		local new_provider_array = {}
		for _, provider in pairs(network.providers) do
			if provider.valid and provider ~= entity then
				new_provider_array[#new_provider_array+1] = provider
			end
		end
		network.providers = new_provider_array
		network.allocated_fluids_from_providers[entity.unit_number] = nil
	else
		local unit_number = entity.unit_number
		network.bioports[unit_number] = nil
		network.requesters[unit_number] = nil
	end
end

-- MIXED
function Biofluid.rotated_pipe(entity, previous_direction)
	local new_direction = entity.direction
	entity.direction = previous_direction
	Biofluid.destroyed_pipe(entity)
	entity.direction = new_direction
	Biofluid.built_pipe(entity)
end