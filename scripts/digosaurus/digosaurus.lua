---@diagnostic disable: need-check-nil, param-type-mismatch, assign-type-mismatch, undefined-field, inject-field

---@class Digosaurus
---@field creatures {[data.EntityID]: DigosaurPrototype}
---@field foods {[data.ItemID]: uint}
---@field resource_categories {[data.ResourceCategoryID]: true}
---@field dig_sites {[data.EntityID]: DigSitePrototype}
---@field validity_check fun(dig_data: DigSite): boolean
---@field why_isnt_my_dig_site_working fun(dig_site: DigSite): LocalisedString, SpritePath, defines.entity_status_diode
---@field update_gui fun(gui: GuiElementType)
Digosaurus = {}

---@class DigSite
---@field unit_number uint
---@field entity LuaEntity
---@field inventory LuaInventory
---@field food_input LuaEntity
---@field food_inventory LuaInventory
---@field digosaur_inventory LuaInventory
---@field active_digosaurs Digosaur[]
---@field scanned_ores LuaEntity[] resources in the area of this dig site

---@class Digosaur
---@field i uint index
---@field entity LuaEntity
---@field proxy LuaEntity
---@field ore_id uint
---@field ore LuaEntity
---@field parent_id uint
---@field state string
---@field ores_gained_per_trip uint

---@class (partial) PyAlienLifeStorage:PyPostProcessingStorage
---@field dig_sites {[uint]: DigSite?}
---@field digosaurs {[uint64]: Digosaur?}
storage = {}

require "digosaurus-prototypes"
require "digosaurus-gui"

py.on_event(py.events.on_init(), function(event)
    storage.dig_sites = storage.dig_sites or {}
    storage.digosaurs = storage.digosaurs or {}
end)

---@param dig_site DigSite?
---@return boolean
function Digosaurus.validity_check(dig_site)
    if not dig_site then return false end

    -- An inventory object can be independently invalid, irregardless of the entity.valid state
    -- This includes operations like indexing
    if dig_site.digosaur_inventory.valid then
        for i = 1, #dig_site.digosaur_inventory do
            local digosaur_data = dig_site.active_digosaurs[i]
            if digosaur_data and not digosaur_data.entity.valid then dig_site.active_digosaurs[i] = nil end
        end
    end

    if
        not dig_site.entity.valid or
        not dig_site.inventory.valid or
        not dig_site.food_input.valid or
        not dig_site.food_inventory.valid or
        not dig_site.digosaur_inventory.valid
    then
        if dig_site.entity.valid then dig_site.entity.destroy() end
        if dig_site.food_input.valid then dig_site.food_input.destroy() end
        if dig_site.digosaur_inventory.valid then dig_site.digosaur_inventory.destroy() end

        storage.dig_sites[dig_site.unit_number] = nil
        return false
    end
    return true
end

---@param dig_site DigSite
---@return LuaEntity?, uint?
function Digosaurus.find_random_scanned_ore(dig_site)
    local scanned_ores = dig_site.scanned_ores
    local max_index = 0
    for i in pairs(scanned_ores) do max_index = math.max(max_index, i) end

    while table_size(scanned_ores) ~= 0 do
        local rng = math.random(1, max_index)
        local ore = scanned_ores[rng]
        if ore and ore.valid then return ore, rng end
        scanned_ores[rng] = nil
    end
    return nil
end

---@param dig_site DigSite
---@param i uint inventory index
---@return Digosaur?
function Digosaurus.start_mining_command(dig_site, i)
    local ore, rng = Digosaurus.find_random_scanned_ore(dig_site)
    if not ore or not rng then return end

    local entity = dig_site.entity
    local prototype = Digosaurus.dig_sites[entity.name]
    local spawn_point = prototype.spawn_point[entity.direction]
    local digosaur = entity.surface.create_entity {
        name = dig_site.digosaur_inventory[i].name,
        position = {entity.position.x + spawn_point.x, entity.position.y + spawn_point.y},
        force = entity.force,
        create_build_effect_smoke = false,
        direction = entity.direction
    }---@cast digosaur -?
    local proxy = entity.surface.create_entity {
        name = Digosaurus.creatures[digosaur.name].proxy,
        position = ore.position,
        force = entity.force,
        create_build_effect_smoke = false
    }---@cast proxy -?

    digosaur.commandable.set_command {
        type = defines.command.attack,
        target = proxy,
        distraction = defines.distraction.none
    }

    ---@type Digosaur
    local digosaur_data = {
      i = i,
      entity = digosaur,
      proxy = proxy,
      ore_id = rng,
      ore = ore,
      parent_id = entity.unit_number,
      state = "mining",
      ores_gained_per_trip = 0
    }
    dig_site.active_digosaurs[i] = digosaur_data
    storage.digosaurs[digosaur.unit_number] = digosaur_data
    return digosaur_data
end

---@param food_inventory_contents ItemWithQualityCount[]
---@return boolean
function Digosaurus.has_food(food_inventory_contents)
    for _, item in pairs(food_inventory_contents) do
        if Digosaurus.foods[item.name] then return true end
    end
    return false
end

---@param food_inventory LuaInventory
---@param food_inventory_contents ItemWithQualityCount[]
---@param entity LuaEntity
---@return ItemID?
function Digosaurus.eat(food_inventory, food_inventory_contents, entity)
    for _, food in pairs(food_inventory_contents) do
        food = food.name
        if Digosaurus.foods[food] then
            food_inventory.remove {name = food, count = 1}
            entity.force.get_item_production_statistics(entity.surface_index).on_flow(food, -1) -- todo THIS WILL CRASH put a surface in get_item_production_statistics()
            return food
        end
    end
end

-- https://github.com/pyanodon/pybugreports/issues/1110
---@param dig_site DigSite
local function remove_nonfood_items_from_food_inventory(dig_site)
    local trash_inventory = dig_site.entity.get_inventory(defines.inventory.crafter_trash) ---@cast trash_inventory -?
    local trash_slot = trash_inventory[1]
    if trash_slot.valid_for_read then return end
    local food_inventory = dig_site.food_inventory
    for i = 1, #food_inventory do
        local food = food_inventory[i]
        if food.valid_for_read and not Digosaurus.foods[food.name] then
            food.swap_stack(trash_slot)
            return
        end
    end
end

local time_to_live = 61
py.register_on_nth_tick(61, "Digosaurus", "pyal", function(event)
    for _, dig_data in pairs(storage.dig_sites) do
        if not Digosaurus.validity_check(dig_data) then goto continue end
        remove_nonfood_items_from_food_inventory(dig_data)
        local entity = dig_data.entity
        if entity.disabled_by_control_behavior then goto continue end

        local food_inventory_contents = dig_data.food_inventory.get_contents()

        if table_size(dig_data.scanned_ores) == 0 then
            py.draw_error_sprite(entity, "utility.warning_icon", time_to_live)
        elseif not Digosaurus.has_food(food_inventory_contents) then
            py.draw_error_sprite(entity, "utility.fuel_icon", time_to_live)
        elseif entity.energy == 0 then
            py.draw_error_sprite(entity, "utility.electricity_icon_unplugged", time_to_live)
        elseif dig_data.digosaur_inventory.is_empty() then
            py.draw_error_sprite(entity, "no_module_animal", time_to_live)
        elseif entity.energy < (entity.electric_buffer_size or 0) * 0.9 then
            py.draw_error_sprite(entity, "utility.electricity_icon", time_to_live)
        else
            if dig_data.inventory.get_item_count() > 1000 then
                goto continue -- only mine until 1000 ores
            end

            for i = 1, #dig_data.digosaur_inventory do
                local digosaur_data = dig_data.active_digosaurs[i]
                if not digosaur_data and dig_data.digosaur_inventory[i].valid_for_read then
                    digosaur_data = Digosaurus.start_mining_command(dig_data, i)
                    if digosaur_data then
                        local food = Digosaurus.eat(dig_data.food_inventory, food_inventory_contents, entity)
                        digosaur_data.ores_gained_per_trip = Digosaurus.foods[food]
                        goto continue
                    end
                end
            end
        end

        ::continue::
    end
end)

---@param event EventData.on_ai_command_completed
py.on_event(defines.events.on_ai_command_completed, function(event)
    local unit_number = event.unit_number
    ---@type Digosaur?
    local digosaur_data = storage.digosaurs[unit_number]
    if not digosaur_data then return end
    local digosaur = digosaur_data.entity
    if digosaur_data.proxy.valid then digosaur_data.proxy.destroy() end
    local dig_data = storage.dig_sites[digosaur_data.parent_id]
    if not dig_data then return end

    if digosaur_data.state == "mining" then
        digosaur_data.state = "returning"
        digosaur.commandable.set_command {
            type = defines.command.go_to_location,
            destination_entity = dig_data.entity,
            distraction = defines.distraction.none,
            radius = -1.2,
            pathfind_flags = {
                allow_paths_through_own_entities = true,
                low_priority = true
            }
        }
    elseif digosaur_data.state == "returning" then
        local prototype = Digosaurus.creatures[digosaur.name]
        digosaur.destroy()
        storage.digosaurs[unit_number] = nil
        dig_data.active_digosaurs[digosaur_data.i] = nil

        local ore = digosaur_data.ore
        if not ore or not ore.valid then return end

        for _, product in pairs(ore.prototype.mineable_properties.products) do
          ---@cast product Product
            if product.type == "item" then
                local to_insert = math.min(ore.amount, digosaur_data.ores_gained_per_trip or 1) * product.amount * prototype.mining_bonus
                if to_insert == 0 then return end
                local ore_removed = dig_data.inventory.insert {name = product.name, count = to_insert} / product.amount / prototype.mining_bonus ---@cast ore_removed uint
                if not dig_data.inventory[1].valid_for_read or ore_removed == 0 then return end
                if ore.prototype.infinite_resource then
                    -- pass
                elseif ore.amount > ore_removed then
                    ore.amount = ore.amount - ore_removed
                else
                    ore.deplete()
                    dig_data.scanned_ores[digosaur_data.ore_id] = nil
                end
                dig_data.entity.products_finished = dig_data.entity.products_finished + 1
                local surface_index = dig_data.entity.surface_index
                dig_data.entity.force.get_item_production_statistics(surface_index).on_flow(product.name, to_insert)
                return
            end
        end
    end
end)

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if entity.name ~= "dino-dig-site" then return end
    entity.disabled_by_script = true
    local surface = entity.surface
    local force = entity.force
    local position = entity.position

    local food_input = surface.create_entity {name = "dino-dig-site-food-input", force = force, position = position}
    local food_inventory = food_input.get_inventory(defines.inventory.chest)

    storage.dig_sites[entity.unit_number] = {
        unit_number = entity.unit_number,
        entity = entity,
        inventory = entity.get_inventory(defines.inventory.crafter_output),
        food_input = food_input,
        food_inventory = food_inventory,
        digosaur_inventory = entity.get_module_inventory(),
        active_digosaurs = {},
        scanned_ores = {}
    }

    Digosaurus.scan_ores(storage.dig_sites[entity.unit_number])
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if entity.name ~= "dino-dig-site" then return end

    -- Move to local to keep object handle, remove from global, return if invalid/nil
    local dig_data = storage.dig_sites[entity.unit_number]
    if not dig_data then return end
    storage.dig_sites[entity.unit_number] = nil

    local buffer = event.buffer
    if buffer then
        for _, inventory in pairs {dig_data.food_inventory, dig_data.digosaur_inventory} do
            for i = 1, #inventory do
                local slot = inventory[i]
                if slot then buffer.insert(slot) end
            end
        end
    end

    for i = 1, #dig_data.digosaur_inventory do
        local digosaur_data = dig_data.active_digosaurs[i]
        if digosaur_data then
            if digosaur_data.entity and digosaur_data.entity.valid then digosaur_data.entity.destroy() end
            if digosaur_data.proxy and digosaur_data.proxy.valid then digosaur_data.proxy.destroy() end
        end
    end

    dig_data.food_input.destroy()
    dig_data.digosaur_inventory.destroy()
end)

py.on_event(defines.events.on_selected_entity_changed, function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local entity = player.selected
    if not entity or not entity.valid then return end
    if entity.name ~= "dino-dig-site" then return end

    local dig_data = storage.dig_sites[entity.unit_number]
    if not dig_data then return end
    local status, _, diode = Digosaurus.why_isnt_my_dig_site_working(dig_data)

    entity.custom_status = {
        diode = diode,
        label = status,
    }
end)

gui_events[defines.events.on_gui_click]["dig_food_."] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local tags = element.tags
    local dig_data = storage.dig_sites[tags.unit_number]
    local cursor_stack = player.cursor_stack
    if not cursor_stack or not dig_data then return end

    if cursor_stack.valid_for_read and not Digosaurus.foods[cursor_stack.name] then return end

    if py.distance_squared(player.position, dig_data.entity.position) > player.reach_distance ^ 2 then
        player.play_sound {path = "utility/cannot_build"}
        return
    end

    cursor_stack.swap_stack(dig_data.food_inventory[tags.i])
    Digosaurus.update_gui(player.gui.relative.digosaurus_gui)
end

---@param dig_site DigSite
function Digosaurus.scan_ores(dig_site)
    local entity = dig_site.entity
    local position = entity.position
    local prototype = Digosaurus.dig_sites[entity.name]
    if not prototype then return end
    local range = prototype.mining_range
    local offset = prototype.mining_range_offsets[entity.direction]

    local area = {
        {position.x - range + offset.x, position.y - range + offset.y},
        {position.x + range + offset.x, position.y + range + offset.y}
    }

    dig_site.scanned_ores = table.filter(
        entity.surface.find_entities_filtered {area = area, type = "resource"},
        function(ore) return Digosaurus.resource_categories[ore.prototype.resource_category] end
    )
end

local function swap_to_stack(player, item_name, cursor_stack)
    -- has inventory?
    local inventory = player.get_inventory(defines.inventory.character_main)
    if not inventory then
        return false
    end
    -- has a digosaurus placement item?
    local stack, stack_pos = inventory.find_item_stack(item_name)
    if not stack then
        return false
    end
    -- The pipette item is only in cursor, so we delete it first
    cursor_stack.clear()
    -- then set the cursor stack
    if cursor_stack.swap_stack(stack) then
        player.hand_location = {
            inventory = defines.inventory.character_main,
            slot = stack_pos
        }
        return true
    end
    return false
end