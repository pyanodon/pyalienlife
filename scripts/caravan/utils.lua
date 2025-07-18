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
        elseif entity.name == "fluid-outpost" then
            valid_actions = all_actions["fluid-outpost"]
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
---@param player LuaPlayer
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
        action = interrupt.conditions[tags.action_id]
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

return P
