--rendering.draw_circle{color = {1, 1, 1}, radius = 0.5, filled = true, target = {x, y}, surface = entity.surface}

Biofluid.connectable = {
	['vessel'] = true,
	['vessel-to-ground'] = true,
	['bioport'] = true,
	['requester-tank'] = true,
	['provider-tank'] = true,
}

function Biofluid.heat_connection_facing_offset(entity, connection)
	local direction = (connection.direction + entity.direction) % 8
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
	local connections = {}
	local buffer = entity.prototype.heat_buffer_prototype or entity.prototype.heat_energy_source_prototype
	if not buffer then return connections end
	local position = entity.position
	local direction = entity.direction
	for _, connection in pairs(buffer.connections) do
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
		local offset = Biofluid.heat_connection_facing_offset(entity, connection)
		if offset then connections[#connections+1] = {x = x, y = y, facing_x = x + offset[1], facing_y = y + offset[2]} end
	end
	return connections
end

function Biofluid.find_nearby_pipes(entity, connections)
	local force_index = entity.force_index
	local nearby_pipes = {}
	local network_positions = global.network_positions

	for _, connection in pairs(connections) do
		local facing_x, facing_y = connection.facing_x, connection.facing_y
		local x, y = connection.x, connection.y

		if not network_positions[facing_x] then goto continue end
		local network_data = network_positions[facing_x][facing_y]
		if not network_data then goto continue end
		local is_looking_at_us = false
		for _, facing in pairs(network_data.facing) do
			if facing[1] == x and facing[2] == y then
				is_looking_at_us = true
				break
			end
		end
		if not is_looking_at_us then goto continue end
		local other_pipe = network_data.entity
		if not other_pipe then goto continue end
		if not other_pipe.valid then
			network_positions[facing_x][facing_y] = nil
			if not next(network_positions[facing_x]) then network_positions[facing_x] = nil end
			goto continue
		end
		game.print(entity.name .. entity.unit_number .. '<->' .. other_pipe.name .. other_pipe.unit_number)
		if other_pipe.force_index ~= force_index then goto continue end
		nearby_pipes[#nearby_pipes+1] = network_data

		::continue::
	end

	return nearby_pipes
end

-- CONSTRUCTIVE
function Biofluid.built_pipe(entity)
	local connections = Biofluid.find_heat_connections(entity)
	local network_positions = global.network_positions

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

	local nearby_pipes = Biofluid.find_nearby_pipes(entity, connections)
	if #nearby_pipes == 0 then
		Biofluid.create_network(entity)
	elseif #nearby_pipes == 1 then

	else
		Biofluid.join_networks(new, old)
	end
end

function Biofluid.join_networks(new, old)
	
end

function Biofluid.create_network(entity)

end

-- DESTRUCTIVE
function Biofluid.destroyed_pipe(entity)

end

function Biofluid.split_network(id)

end

function Biofluid.delete_network(id)

end