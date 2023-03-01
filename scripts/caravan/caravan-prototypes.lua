local Position = require('__stdlib__/stdlib/area/position')

local caravan_actions = {
	['outpost'] = {
		'time-passed',
		'store-food',
		'fill-inventory',
		'empty-inventory',
		'item-count',
		'circuit-condition'
	},
	['character'] = {
		'time-passed',
		'store-food',
		'fill-inventory',
		'empty-inventory',
		'item-count'
	},
	['unit'] = {
		'time-passed',
		'store-food',
		'fill-inventory',
		'empty-inventory',
		'item-count'
	},
	['cargo-wagon'] = {
		'time-passed',
		'fill-inventory',
		'empty-inventory',
		'item-count'
	},
	['electric-pole'] = {
		'time-passed',
		'circuit-condition'
	},
	['default'] = {
		'time-passed'
	}
}

local aerial_actions = {
	['outpost'] = {
		'time-passed',
		'store-energy'
	},
	['default'] = {
		'time-passed'
	}
}

local ln = math.log
local function distance_effectivity(distance, toughness)
	return 1 - 1 / (ln(distance / toughness + 1) + 1)
end

local prototypes = {
	caravan = {
		inventory_size = 30,
		opens_player_inventory = true,
		fuel_size = 2,
		destructible = false,
		outpost = 'outpost',
		favorite_foods = {
			['brain'] = 2,
			['auog-food-01'] = 4,
			['workers-food'] = 10,
			['workers-food-02'] = 30
		},
		actions = caravan_actions,
		camera_zoom = 0.8,
		placeable_by = 'caravan',
		map_tag = {
			type = 'virtual',
			name = 'caravan-map-tag'
		}
	},
	flyavan = {
		inventory_size = 60,
		opens_player_inventory = true,
		fuel_size = 4,
		destructible = false,
		outpost = 'outpost-aerial',
		favorite_foods = {
			['workers-food'] = 5,
			['gastrocapacitor'] = 50
		},
		actions = caravan_actions,
		camera_zoom = 0.5,
		placeable_by = 'flyavan',
		can_fly = true,
		map_tag = {
			type = 'virtual',
			name = 'caravan-map-tag'
		}
	},
	nukavan = {
		inventory_size = 10,
		opens_player_inventory = true,
		fuel_size = 2,
		outpost = 'outpost',
		favorite_foods = {
			['brain'] = 2,
			['auog-food-01'] = 4,
			['workers-food'] = 10,
			['workers-food-02'] = 30
		},
		actions = {
			['default'] = {'detonate'}
		},
		placeable_by = 'nukavan',
		map_tag = {
			type = 'virtual',
			name = 'caravan-map-tag'
		}
	},
	-- pyalternativeenergy caravans
	['aerial-blimp-mk01'] = {
		opens_player_inventory = false,
		outpost = 'aerial-base',
		only_allow_outpost_as_destination = true,
		actions = aerial_actions,
		placeable_by = 'aerial-blimp-mk01',
		energy_per_distance_formula = function(distance) return distance_effectivity(distance, 60) * distance * 1800000 end,
		distance_bonus_formula = function(distance) return distance_effectivity(distance, 60) end,
		is_aerial = true,
		can_fly = true,
		map_tag = {
			type = 'item',
			name = 'aerial-blimp-mk01'
		}
	},
	['aerial-blimp-mk02'] = {
		opens_player_inventory = false,
		outpost = 'aerial-base',
		only_allow_outpost_as_destination = true,
		actions = aerial_actions,
		placeable_by = 'aerial-blimp-mk01',
		energy_per_distance_formula = function(distance) return distance_effectivity(distance, 80) * distance * 3600000 end,
		distance_bonus_formula = function(distance) return distance_effectivity(distance, 80) end,
		is_aerial = true,
		can_fly = true,
		map_tag = {
			type = 'item',
			name = 'aerial-blimp-mk02'
		}
	},
	['aerial-blimp-mk03'] = {
		opens_player_inventory = false,
		outpost = 'aerial-base',
		only_allow_outpost_as_destination = true,
		actions = aerial_actions,
		placeable_by = 'aerial-blimp-mk01',
		energy_per_distance_formula = function(distance) return distance_effectivity(distance, 120) * distance * 6000000 end,
		distance_bonus_formula = function(distance) return distance_effectivity(distance, 120) end,
		is_aerial = true,
		can_fly = true,
		map_tag = {
			type = 'item',
			name = 'aerial-blimp-mk03'
		}
	},
	['aerial-blimp-mk04'] = {
		opens_player_inventory = false,
		outpost = 'aerial-base',
		only_allow_outpost_as_destination = true,
		actions = aerial_actions,
		placeable_by = 'aerial-blimp-mk01',
		energy_per_distance_formula = function(distance) return distance_effectivity(distance, 140) * distance * 8000000 end,
		distance_bonus_formula = function(distance) return distance_effectivity(distance, 140) end,
		is_aerial = true,
		can_fly = true,
		map_tag = {
			type = 'item',
			name = 'aerial-blimp-mk04'
		}
	},
	['aerial-blimp-ht'] = {
		opens_player_inventory = false,
		outpost = 'aerial-base',
		only_allow_outpost_as_destination = true,
		actions = aerial_actions,
		placeable_by = 'aerial-blimp-mk01',
		energy_per_distance_formula = function(distance) return distance_effectivity(distance, 40) * distance * 4000000 end,
		distance_bonus_formula = function(distance) return distance_effectivity(distance, 40) end,
		is_aerial = true,
		can_fly = true,
		map_tag = {
			type = 'item',
			name = 'aerial-blimp-ht'
		}
	}
}

local function get_outpost_inventory(outpost)
	local type = outpost.type
	if type == 'character' then
		return outpost.get_main_inventory()
	elseif type == 'container' then
		return outpost.get_inventory(defines.inventory.chest)
	elseif type == 'cargo-wagon' then
		return outpost.get_inventory(defines.inventory.cargo_wagon)
	elseif prototypes[outpost.name] then
		local caravan_data = global.caravans[outpost.unit_number]
		return caravan_data.inventory
	end
end

local function transfer_all_items(input_inventory, output_inventory) -- TODO: make it work with complex items
	for item, count in pairs(input_inventory.get_contents()) do
		local inserted_count = output_inventory.insert{name = item, count = count}
		if inserted_count ~= 0 then input_inventory.remove{name = item, count = inserted_count} end
	end
end

local function evaluate_signal(entity, signal)
	local result = entity.get_merged_signal(signal)
	if result == 0 and entity.type == 'container' and signal.type == 'item' then
		return entity.get_inventory(defines.inventory.chest).get_item_count(signal.name)
	end
	return result
end

Caravan.actions = {
	['time-passed'] = function(caravan_data, schedule, action)
		if action.timer == 1 then
			action.timer = nil
			return true
		end
		action.timer = action.timer - 1
		return false
	end,

	['store-food'] = function (caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return true end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return true end
		local inventory = caravan_data.inventory
		local entity = caravan_data.entity
		local fuel = caravan_data.fuel_inventory

		for item, count in pairs(outpost_inventory.get_contents()) do
			if prototypes[entity.name].favorite_foods[item] then
				local inserted_count = fuel.insert{name = item, count = count}
				if inserted_count ~= 0 then outpost_inventory.remove{name = item, count = inserted_count} end
			end
		end

		return true
	end,

	['fill-inventory'] = function(caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return true end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return true end
		local inventory = caravan_data.inventory

		transfer_all_items(outpost_inventory, inventory)
		return inventory.find_empty_stack() == nil
	end,

	['empty-inventory'] = function(caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return true end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return true end
		local inventory = caravan_data.inventory

		transfer_all_items(inventory, outpost_inventory)
		return inventory.is_empty()
	end,

	['item-count'] = function(caravan_data, schedule, action)
		local chest = schedule.entity
		if not chest or not chest.valid then return false end
		local outpost_inventory = get_outpost_inventory(chest)
		if not outpost_inventory then return false end
		local inventory = caravan_data.inventory
		local goal = action.item_count
		local item = action.elem_value
		if not goal or not item then return false end
		local inventory_count = inventory.get_item_count(item)

		if inventory_count == goal then
			return true
		elseif inventory_count > goal then
			local inserted_count = outpost_inventory.insert{name = item, count = inventory_count - goal}
			if inserted_count ~= 0 then inventory.remove{name = item, count = inserted_count} end
			return inserted_count == inventory_count - goal
		elseif inventory_count < goal then
			local removed_count = outpost_inventory.remove{name = item, count = goal - inventory_count}
			if removed_count ~= 0 then
				local inserted_count = inventory.insert{name = item, count = removed_count}
				local couldnt_fit = removed_count - inserted_count
				if couldnt_fit ~= 0 then outpost_inventory.insert{name = item, count = couldnt_fit}; return false end
			end
			return removed_count == goal - inventory_count
		end
	end,

	['detonate'] = function(caravan_data, schedule, action)
		local entity = caravan_data.entity
		entity.surface.create_entity{
			name = 'atomic-rocket',
			position = entity.position,
			target = entity,
			speed = 1,
			max_range = 0.1
		}
		entity.die('enemy', entity)
		return 'nuke'
	end,

	['store-energy'] = function(caravan_data, schedule, action)
		local outpost = schedule.entity
		if not outpost or not outpost.valid then return 'error' end
		local entity = caravan_data.entity

		local energy = caravan_data.stored_energy
		if not energy then
			local formula = prototypes[entity.name].energy_per_distance_formula
			energy = formula(Position.distance(caravan_data.last_outpost_location, entity.position))
		end

		if energy == 0 then return true end

		local buffer_capacity = outpost.prototype.electric_energy_source_prototype.buffer_capacity
		local goal = outpost.energy + energy
		if buffer_capacity < goal then
			caravan_data.stored_energy = goal - buffer_capacity
			outpost.energy = buffer_capacity
			return false
		else
			outpost.energy = goal
			return true
		end
	end,

	['circuit-condition'] = function(caravan_data, schedule, action)
		local outpost = schedule.entity
		if not outpost or not outpost.valid then return true end

		local right = action.circuit_condition_right
		local left = action.circuit_condition_left
		if not right or not left then return false end

		return evaluate_signal(outpost, right) == evaluate_signal(outpost, left)
	end
}

Caravan.free_actions = { -- actions that don't use fuel
	['time-passed'] = true,
	['store-food'] = true,
	['detonate'] = true,
	['store-energy'] = true,
	['circuit-condition'] = true
}

return prototypes
