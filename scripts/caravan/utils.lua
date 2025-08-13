local caravan_prototypes = require "caravan-prototypes"
local italian_names = require "italian-names"

local P = {}

---@param caravan_data Caravan
---@param entity LuaEntity
function P.get_valid_actions_for_entity(caravan_entity_name, entity)
    local prototype = caravan_prototypes[caravan_entity_name]
    local all_actions = prototype.actions
    local valid_actions
    if entity and entity.valid then
        if entity.name == "outpost" or entity.name == "outpost-aerial" then
            valid_actions = all_actions.outpost
        elseif entity.name == "outpost-fluid" then
            valid_actions = all_actions["outpost-fluid"]
        else
            valid_actions = all_actions[entity.type]
        end
    end

    return valid_actions or all_actions.default or error()
end

function P.get_all_actions_for_entity(entity)
    local all_actions = Caravan.all_actions
    local valid_actions
    if entity and entity.valid then
        if entity.name == "outpost" or entity.name == "outpost-aerial" then
            valid_actions = all_actions.outpost
        elseif entity.name == "outpost-fluid" then
            valid_actions = all_actions["outpost-fluid"]
        else
            valid_actions = all_actions[entity.type]
        end
    end

    return valid_actions or all_actions.default or error()
end

function P.get_name(caravan_data)
    local name = caravan_data.name
    if name and name ~= "" then return name end
    local random_name = caravan_data.random_name or italian_names[math.random(1, #italian_names)]
    caravan_data.random_name = random_name
    caravan_data.name = random_name
    return random_name
end

function P.is_child_of(c, p, depth)
    if depth == 0 or not c then return false end

    return c.name == p.name or P.is_child_of(c.parent, p, depth - 1)
end

---Returns a table repersenting a caravan's action.
---@param element LuaGuiElement
function P.get_action_from_button(element)
    local tags = element.tags
    local action_list_type = tags.action_list_type

    local action
    if action_list_type == Caravan.action_list_types.standard_schedule then
        action = storage.caravans[tags.unit_number].schedule[tags.schedule_id].actions[tags.action_id]
    elseif action_list_type == Caravan.action_list_types.interrupt_schedule then
        error()
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        local interrupt = storage.edited_interrupt
        action = interrupt.conditions[tags.condition_id]
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        local interrupt = storage.edited_interrupt
        action = interrupt.schedule[tags.schedule_id].actions[tags.action_id]
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end

    if not action then
        error("Could not find action with action_list_type " .. action_list_type .. ". GUI tags: " .. serpent.line(tags))
    end
    return action
end

---Returns a table repersenting a caravan's schedule.
---@param element LuaGuiElement
function P.get_schedule(element)
    local tags = element.tags
    local action_list_type = tags.action_list_type

    if action_list_type == Caravan.action_list_types.standard_schedule then
        local caravan_data = storage.caravans[tags.unit_number]
        local schedule = caravan_data.schedule
        if tags.action_id then schedule = schedule[tags.schedule_id].actions end
        return schedule
    elseif action_list_type == Caravan.action_list_types.interrupt_schedule then
        local caravan_data = storage.caravans[tags.unit_number]
        return caravan_data.interrupts
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        return storage.interrupts[tags.interrupt_name].conditions
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        local schedule = storage.interrupts[tags.interrupt_name].schedule
        if tags.action_id then schedule = schedule[tags.schedule_id].actions end
        return schedule
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end
end

function P.get_actions_from_tags(tags)
    local action_list_type = tags.action_list_type

    local action
    if action_list_type == Caravan.action_list_types.standard_schedule then
        return storage.caravans[tags.unit_number].schedule[tags.schedule_id].actions
    elseif action_list_type == Caravan.action_list_types.interrupt_schedule then
        error()
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        return storage.edited_interrupt.conditions
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        return storage.edited_interrupt.schedule[tags.schedule_id].actions
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end
end

function P.convert_to_tooltip_row(item)
    local name = item.name
    local count = item.count
    local quality = item.quality or "normal"
    return {"", "\n[item=" .. name .. ",quality=" .. quality .. "] ", " ×", count}
end

local function get_caravan_inventory_tooltip(caravan_data)
    local inventory = caravan_data.inventory
    ---@type (table | string)[]
    local inventory_contents = {"", "\n[img=utility/trash_white] ", {"caravan-gui.the-inventory-is-empty"}}
    if inventory and inventory.valid then
        local sorted_contents = inventory.get_contents()
        table.sort(sorted_contents, function(a, b) return a.count > b.count end)

        local i = 0
        for _, item in pairs(sorted_contents) do
            if i == 0 then inventory_contents = {""} end
            inventory_contents[#inventory_contents + 1] = P.convert_to_tooltip_row(item)
            i = i + 1
            if i == 10 then
                if #sorted_contents > 10 then
                    inventory_contents[#inventory_contents + 1] = {"", "\n[color=255,210,73]", {"caravan-gui.more-items", #sorted_contents - 10}, "[/color]"}
                end
                break
            end
        end
    end
    return {"", "[font=default-semibold]", inventory_contents, "[/font]"}
end

local function get_fluidavan_inventory_tooltip(caravan_data)
    if caravan_data.fluid then
        return {"", "\n[fluid=" .. caravan_data.fluid.name .. "] ", " ×", caravan_data.fluid.amount}
    else
        return {"", "\n[img=utility/fluid_icon] ", {"caravan-gui.tank-is-empty"}}
    end
end

function P.get_inventory_tooltip(caravan_data)
    game.print(caravan_data.entity.name)
    if caravan_data.entity.name == "fluidavan" then
        return get_fluidavan_inventory_tooltip(caravan_data)
    end
    return get_caravan_inventory_tooltip(caravan_data)
end

function P.get_summary_tooltip(caravan_data)
    local entity = caravan_data.entity

    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    ---@type (table | string)[]
    local current_action = {"caravan-gui.current-action", {"entity-status.idle"}}
    if schedule then
        local action_id = caravan_data.action_id
        local action = schedule.actions[action_id]
        current_action = {"", {"caravan-gui.current-action", action and action.localised_name or {"caravan-actions.traveling"}}}

        local destination
        local localised_destination_name
        local destination_entity = schedule.entity
        if destination_entity and destination_entity.valid then
            destination = destination_entity.position
            localised_destination_name = {
                "caravan-gui.entity-position",
                destination_entity.prototype.localised_name,
                math.floor(destination.x),
                math.floor(destination.y)
            }
        elseif schedule.position then
            destination = schedule.position
            localised_destination_name = {"caravan-gui.map-position", math.floor(destination.x), math.floor(destination.y)}
        end

        if localised_destination_name then
            local distance = math.sqrt((entity.position.x - destination.x) ^ 2 + (entity.position.y - destination.y) ^ 2)
            distance = math.floor(distance * 10) / 10
            current_action[#current_action + 1] = {"", "\n", {"caravan-gui.current-destination", distance, localised_destination_name}}
        end
    end

    local fuel_inventory = caravan_data.fuel_inventory
    ---@type (table | string)[]
    local fuel_inventory_contents = {""}
    if fuel_inventory and fuel_inventory.valid then
        local i = 0
        for _, item in pairs(fuel_inventory.get_contents()) do
            fuel_inventory_contents[#fuel_inventory_contents + 1] = P.convert_to_tooltip_row(item)
            i = i + 1
            if i == 10 then break end
        end
    end

    return {"", "[font=default-semibold]", current_action, fuel_inventory_contents, "\n", P.get_inventory_tooltip(caravan_data), "[/font]"}
end

function P.partition(t, pred)
    local a, b = {}, {}

    for _, elem in pairs(t) do
        table.insert(pred(elem) and a or b, elem)
    end
    return a, b
end

function P.filter(t, pred)
    local r = {}
    for _, elem in pairs(t) do
        if pred(elem) then
            table.insert(r, elem)
        end
    end
    return r
end

function P.contains(t, e)
  for i = 1,#t do
    if t[i] == e then return true end
  end
  return false
end

function P.rename_interrupt(interrupt, new_name)
    local old_name = interrupt.name
    storage.interrupts[old_name] = nil
    interrupt.name = new_name
    storage.interrupts[new_name] = interrupt

    -- far from ideal, it would be better to index caravan interrupts by ID instead of names
    for _, caravan_data in pairs(storage.caravans) do
        for i = 1, #caravan_data.interrupts do
            if caravan_data.interrupts[i] == old_name then
                caravan_data.interrupts[i] = new_name
                break
            end
        end
    end
end

return P
