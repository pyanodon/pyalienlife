Turd = {}

local tech_upgrades, farm_building_tiers, turd_machines = table.unpack(require("prototypes/turd"))
local just_built_new_machine = false
local bhoddos_lib = require("bhoddos")

local NOT_SELECTED = 333 -- enum

local views = { "all", "researched", "selected", "unselected" }
views = table.map(views, function(v) return { "turd.visible-" .. v, v } end)

local function check_viewable(element, player, researched_technologies)
    local name = element.tags.name
    local view_type = views[storage.turd_views[player.index] or 1][2]
    if view_type == "all" then
        return true
    elseif not researched_technologies[name].researched then
        return false
    elseif view_type == "researched" then
        return true
    end
    local selection = storage.turd_bonuses[player.force.index][name] or NOT_SELECTED
    if view_type == "selected" then
        return selection ~= NOT_SELECTED
    elseif view_type == "unselected" then
        return selection == NOT_SELECTED
    else
        return true
    end
end


--- Translates all TURD upgrade names for use in the search function
local function translate_upgrades(player)
    storage.technology_locale[player.locale] = {}
    for _, tech_upgrade in pairs(tech_upgrades) do
        local name = tech_upgrade.master_tech.name
        local localised_name = player.force.technologies[name].localised_name
        local id = player.request_translation(localised_name)
        --store the event identifier and the prototype translated for later use
        storage.technology_locale.temp[id] = name
    end
end

--whenever a technology name is translated, save the translation
py.on_event(defines.events.on_string_translated, function(event)
    if event.translated then
        --get the prototype name linked with this event
        local name = storage.technology_locale.temp[event.id]
        local player = game.get_player(event.player_index)
        if name and player then
            local locale = player.locale
            --save the translation with the prototype as the key
            storage.technology_locale[locale][name] = event.result
            --if no more translations remain clear the temp memory
            local k = next(storage.technology_locale.temp, event.id)
            if k == nil then
                storage.technology_locale.temp = {}
            end
        end
    end
end)

local function on_search(search_key, gui, player)
    local researched_technologies = player.force.technologies
    if search_key == "" then
        for _, element in pairs(gui.children) do
            if element.sub_tech_flow then
                element.visible = check_viewable(element, player, researched_technologies)
            end
        end
        return
    end

    search_key = search_key:lower()
    for _, element in pairs(gui.children) do
        local sub_tech_flow = element.sub_tech_flow
        if sub_tech_flow then
            local tech_upgrade = tech_upgrades[element.tags.name]
            local name = tech_upgrade.master_tech.name:lower()
            local translated_name = ""
            if (storage.technology_locale[player.locale]) then
                translated_name = (storage.technology_locale[player.locale][name] or ""):lower()
            else
                translate_upgrades(player)
            end
            element.visible = not not (check_viewable(element, player, researched_technologies) and (name:find(search_key, 1, true) or translated_name:find(search_key, 1, true)))
        end
    end
end

local function has_turd_migration(force_index, sub_tech_name)
    return game.tick < ((storage.turd_migrations[force_index] or {})[sub_tech_name] or 0)
end

local function update_confirm_button(element, player, researched_technologies)
    local force_index = player.force_index
    storage.turd_bonuses[force_index] = storage.turd_bonuses[force_index] or {}
    local name = element.tags.master_tech_name
    local selected_upgrade = storage.turd_bonuses[force_index][name] or NOT_SELECTED
    researched_technologies = researched_technologies or player.force.technologies

    if not researched_technologies[name].researched then
        element.style = "red_back_button_unhoverable"
        element.caption = { "turd.no-research" }
    elseif selected_upgrade == NOT_SELECTED then
        element.style = "confirm_button_without_tooltip"
        element.caption = { "turd.select" }
    elseif selected_upgrade == element.tags.sub_tech_name then
        if has_turd_migration(force_index, selected_upgrade) then
            local ticks_remaining = storage.turd_migrations[force_index][selected_upgrade] - game.tick
            local hours = math.floor(ticks_remaining / 216000)
            local minutes = math.floor(ticks_remaining / 3600) % 60
            local seconds = math.floor(ticks_remaining / 60) % 60
            if minutes < 10 then minutes = "0" .. minutes end
            if seconds < 10 then seconds = "0" .. seconds end
            element.style = "confirm_button_without_tooltip"
            element.caption = { "turd.unselect-migrate", tostring(hours), tostring(minutes), tostring(seconds) }
        elseif (storage.turd_reset_remaining[force_index] or 0) > 0 then
            element.style = "confirm_button_without_tooltip"
            element.caption = { "turd.unselect" }
        else
            element.style = "confirm_button_without_tooltip_unhoverable"
            element.caption = { "turd.selected" }
        end
    else
        element.style = "red_back_button_unhoverable"
        element.caption = { "turd.unavailable" }
    end
end

local function defunctionize_effect_table(sub_tech)
    if type(sub_tech.effects) == "function" then
        sub_tech.effects = sub_tech.effects()
    end
end

local function create_turd_page(gui, player)
    local textbox_frame = gui.add({ type = "frame", direction = "vertical", name = "textbox_frame" })
    textbox_frame.style.horizontally_stretchable = true
    local label = textbox_frame.add({ type = "label", caption = { "pywiki-descriptions.turd" }, style = "label_with_left_padding" })
    label.style.single_line = false

    local resets = storage.turd_reset_remaining[player.force_index] or 0
    if resets ~= 0 then
        local reset_label = textbox_frame.add({ type = "label", caption = { "turd.resets-left", resets }, style = "label_with_left_padding", name = "py_resets_left" })
        reset_label.style.single_line = false
    end

    local py_select_view = textbox_frame.add({ type = "drop-down", name = "py_select_view", items = views, selected_index = storage.turd_views[player.index] or 1 })
    py_select_view.style.width = 200
    py_select_view.style.top_margin = 10

    local item_prototypes = prototypes.item
    local recipe_prototypes = prototypes.recipe
    local researched_technologies = player.force.technologies

    for name, tech_upgrade in pairs(tech_upgrades) do
        local frame = gui.add({ type = "frame", direction = "vertical" })
        frame.style.horizontally_stretchable = true
        frame.tags = { name = name }

        local header_flow = frame.add({ type = "flow", direction = "horizontal", name = "header_flow" })
        header_flow.style.vertical_align = "center"
        header_flow.style.horizontal_spacing = 10
        local sprite = header_flow.add({ type = "choose-elem-button", elem_type = "technology", style = "transparent_slot" })
        sprite.elem_value = name
        sprite.locked = true
        header_flow.add({ type = "label", caption = { "", "[font=default-semibold][color=255,230,192]", { "technology-name." .. name }, "[/color][/font]" } })
        header_flow.add({ type = "empty-widget", style = "py_empty_widget" })

        header_flow.add({ type = "label", caption = { "", "[font=default-semibold][color=255,230,192]", { "turd.affected-buildings" }, ":[/color][/font]" } })
        for affected_entity in pairs(tech_upgrade.affected_entities) do
            local sprite = header_flow.add({ type = "choose-elem-button", elem_type = "entity", style = "transparent_slot" })
            sprite.elem_value = affected_entity
            sprite.locked = true
        end

        header_flow.add({
            name = "py_turd_randomize_button", type = "sprite-button", style = "frame_action_button", tooltip = { "turd.randomize" },
            sprite = "random-white", hovered_sprite = "random-black", clicked_sprite = "random-black"
        }).visible = false
        header_flow.add({
            name = "py_open_turd_techtree",
            type = "sprite-button",
            style = "frame_action_button",
            tooltip = { "turd.open-in-tech-tree" },
            sprite = "utility/technology_white",
            hovered_sprite = "utility/technology_white",
            clicked_sprite = "utility/technology_white"
        })
        header_flow.add({ name = "py_minimize_turd", type = "sprite-button", style = "frame_action_button", sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black" })

        local sub_tech_flow = frame.add({ type = "flow", name = "sub_tech_flow", direction = "vertical" })
        sub_tech_flow.style.top_margin = 5
        sub_tech_flow.visible = false
        sub_tech_flow.style.vertical_spacing = 10
        for _, sub_tech in pairs(tech_upgrade.sub_techs) do
            local content_frame = sub_tech_flow.add({ type = "frame", direction = "vertical", style = "inside_deep_frame" })
            content_frame.style.padding = { 5, 10, 5, 10 }
            content_frame.style.horizontally_stretchable = true
            content_frame.add({ type = "label", caption = { "", "[font=default-semibold][color=255,230,192]❬ ", { "technology-name." .. sub_tech.name }, " ❭[/color][/font]" } })

            local description_flow = content_frame.add({ type = "flow", direction = "horizontal" })
            description_flow.add({ type = "sprite", sprite = sub_tech.name })
            description_flow.add({ type = "label", caption = { "technology-description." .. sub_tech.name } }).style.single_line = false

            content_frame.add({ type = "line", direction = "horizontal" }).style.margin = { 5, 0, 5, 0 }
            content_frame.add({ type = "label", caption = { "", "[font=default-semibold][color=255,230,192]", { "gui-technology-preview.effects" }, "[/color][/font]" } })

            local info_flow = content_frame.add({ type = "flow", direction = "horizontal", name = "info_flow" })
            local effects_scroll_pane = info_flow.add({ type = "scroll-pane", style = "scroll_pane_under_subheader", vertical_scroll_policy = "never", horizontal_scroll_policy = "dont-show-but-allow-scrolling" })
            local effects_flow = effects_scroll_pane.add({ type = "flow", direction = "horizontal" })
            effects_flow.style.vertical_align = "center"
            defunctionize_effect_table(sub_tech)
            for _, effect in pairs(sub_tech.effects) do
                if effect.type == "module-effects" then
                    local sprite = effects_flow.add({ type = "choose-elem-button", elem_type = "item", style = "transparent_slot" })
                    local module_name = sub_tech.name .. "-module"
                    if not item_prototypes[module_name] then module_name = module_name .. "-mk01" end
                    if not item_prototypes[module_name] then
                        game.print("Turd: Module " .. module_name .. " does not exist!")
                        goto continue
                    end
                    sprite.elem_value = module_name
                    sprite.locked = true
                elseif effect.type == "unlock-recipe" then
                    local sprite = effects_flow.add({ type = "choose-elem-button", elem_type = "recipe", style = "transparent_slot" })
                    if not recipe_prototypes[effect.recipe] then
                        game.print("Turd: Recipe " .. effect.recipe .. " does not exist!")
                        goto continue
                    end
                    sprite.elem_value = effect.recipe
                    sprite.locked = true
                elseif effect.type == "recipe-replacement" then
                    if not recipe_prototypes[effect.old] then
                        game.print("Turd: Recipe " .. effect.old .. " does not exist!")
                        goto continue
                    end
                    if not recipe_prototypes[effect.new] then
                        game.print("Turd: Recipe " .. effect.new .. " does not exist!")
                        goto continue
                    end

                    local old = effects_flow.add({ type = "choose-elem-button", elem_type = "recipe", style = "transparent_slot" })
                    old.elem_value = effect.old
                    old.locked = true

                    effects_flow.add({ type = "label", caption = "[font=default-semibold]➜[/font]", ignored_by_interaction = true }).style.margin = { 0, -10, 0, -10 }

                    local new = effects_flow.add({ type = "choose-elem-button", elem_type = "recipe", style = "transparent_slot" })
                    new.elem_value = effect.new
                    new.locked = true
                elseif effect.type == "machine-replacement" then
                    local old = effects_flow.add({ type = "choose-elem-button", elem_type = "entity", style = "transparent_slot" })
                    old.elem_value = effect.old
                    old.locked = true

                    effects_flow.add({ type = "label", caption = "[font=default-semibold]➜[/font]", ignored_by_interaction = true }).style.margin = { 0, -10, 0, -10 }

                    local new = effects_flow.add({ type = "choose-elem-button", elem_type = "entity", style = "transparent_slot" })
                    new.elem_value = effect.new
                    new.locked = true
                end
                ::continue::
            end

            info_flow.add({ type = "empty-widget", style = "py_empty_widget" })
            local confirm_button = info_flow.add({ type = "button", name = "py_turd_confirm_button" })
            confirm_button.tags = {
                master_tech_name = name,
                sub_tech_name = sub_tech.name
            }
            update_confirm_button(confirm_button, player, researched_technologies)
        end

        ::continue::
    end

    local search_key = remote.call("pywiki", "get_page_searchbar", player).text
    on_search(search_key, gui, player)
end

gui_events[defines.events.on_gui_selection_state_changed]["py_select_view"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    storage.turd_views[event.player_index] = element.selected_index
    local search_key = remote.call("pywiki", "get_page_searchbar", player).text
    on_search(search_key, element.parent.parent, player)
end

gui_events[defines.events.on_gui_click]["py_open_turd_techtree"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local master_tech_name = event.element.parent.parent.tags.name
    player.opened = nil
    player.open_technology_gui(master_tech_name)
end

gui_events[defines.events.on_gui_click]["py_minimize_turd"] = function(event)
    local frame = event.element.parent.parent
    local gui = frame.parent
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local tech_name = frame.tags.name
    local selected_upgrade = storage.turd_bonuses[player.force_index][tech_name] or NOT_SELECTED
    local is_researched = player.force.technologies[tech_name].researched

    for _, tech_upgrade_element in pairs(gui.children) do
        local sub_tech_flow = tech_upgrade_element.sub_tech_flow
        if sub_tech_flow then
            if tech_upgrade_element == frame then
                sub_tech_flow.visible = not sub_tech_flow.visible
            else
                sub_tech_flow.visible = false
            end

            local button = tech_upgrade_element.header_flow.py_minimize_turd
            local randomize_button = tech_upgrade_element.header_flow.py_turd_randomize_button
            if sub_tech_flow.visible then
                button.sprite = "up-black"
                button.hovered_sprite = "up-black"
                button.clicked_sprite = "up-black"
                button.style = "frame_action_button_always_on"
                randomize_button.visible = is_researched and selected_upgrade == NOT_SELECTED
            else
                button.sprite = "down-white"
                button.hovered_sprite = "down-black"
                button.clicked_sprite = "down-black"
                button.style = "frame_action_button"
                randomize_button.visible = false
            end
        end
    end
end

local function handle_removed_items(surface, force, machine, removed_items)
    --get the output inventory
    local output = machine.get_output_inventory()
    for _, item in pairs(removed_items) do
        --insert items into main inventory
        item.count = item.count - machine.insert(item)
        --if items left inesert into output inventory
        if item.count ~= 0 and output then
            item.count = item.count - output.insert(item)
        end
        --if items left drop on ground
        if item.count ~= 0 then
            surface.spill_item_stack({ position = machine.position, stack = item, enable_looted = true, force = force, allow_belts = false })
        end
    end
end

local function recipe_replacement(old, new, force, assembling_machine_list)
    if not old then
        game.print("ERROR while applying T.U.R.D. Recipe does not exist. Please report this.")
        return
    end

    old.enabled = false
    if new then new.enabled = true end

    for _, machine in pairs(assembling_machine_list) do
        if machine.get_recipe() == old and machine.type == "assembling-machine" then
            local removed_items = machine.set_recipe(new)
            handle_removed_items(machine.surface, force, machine, removed_items)
        end
    end
end

local function create_hidden_beacon(machine, module_name, item_prototypes)
    local beacon = storage.turd_beaconed_machines[machine.unit_number]
    if not beacon or not beacon.valid then
        beacon = machine.surface.create_entity({ name = "hidden-beacon-turd", position = machine.position, force = machine.force })
        beacon.destructible = false
        beacon.operable = false
        beacon.minable_flag = false
    end

    local inventory = beacon.get_module_inventory()
    inventory.clear()
    if not item_prototypes[module_name] then module_name = module_name .. "-mk0" .. farm_building_tiers[machine.name] end
    inventory.insert({ name = module_name, count = 1 })
    storage.turd_beaconed_machines[machine.unit_number] = beacon
end

local function module_effects(tech_upgrade, sub_tech, assembling_machine_list, force, item_prototypes)
    local module_name = sub_tech.name .. "-module"
    for _, machine in pairs(assembling_machine_list) do
        local i = tech_upgrade.affected_entities[machine.name]
        if i then create_hidden_beacon(machine, module_name, item_prototypes) end
    end
    for entity in pairs(tech_upgrade.affected_entities) do
        storage.turd_unlocked_modules[force.index][entity] = module_name
    end
end

local function machine_replacement(old, new, assembling_machine_list)
    local temp_inventory = game.create_inventory(9999)
    local new_machine_list = {}
    for _, machine in pairs(assembling_machine_list) do
        if machine.name == old or machine.name == "entity-ghost" and machine.ghost_name == old then
            local parameters = {
                name = machine.name == "entity-ghost" and "entity-ghost" or new,
                ghost_name = machine.name == "entity-ghost" and new or nil,
                position = machine.position,
                direction = machine.direction,
                quality = machine.quality,
                force = machine.force_index,
                raise_built = true
            }
            local recipe
            local crafting_progress
            local bonus_progress
            if machine.type == "assembling-machine" then
                recipe = machine.get_recipe()
                crafting_progress = machine.crafting_progress
                bonus_progress = machine.bonus_progress
            end
            local surface = machine.surface
            local items_to_place_this = machine.prototype.items_to_place_this
            local mirrored = machine.mirroring
            machine.mine({ inventory = temp_inventory, force = true, raise_destroyed = false, ignore_minable = true })
            for _, item_to_place in pairs(items_to_place_this or {}) do
                temp_inventory.remove(item_to_place)
            end
            just_built_new_machine = true
            local new_machine = surface.create_entity(parameters)
            just_built_new_machine = false
            if new_machine then --check for nil in case of placement restriction
                if new_machine.type == "assembling-machine" then
                    new_machine.crafting_progress = crafting_progress
                    new_machine.bonus_progress = bonus_progress
                    new_machine.set_recipe(recipe)
                end
                handle_removed_items(new_machine.surface, new_machine.force, new_machine, temp_inventory.get_contents())
                new_machine.mirroring = mirrored
                temp_inventory.clear()
                machine = new_machine
            end
        end
        new_machine_list[#new_machine_list+1] = machine
    end
    temp_inventory.destroy()
    return new_machine_list
end

local function find_all_assembling_machines(force, include_ghosts)
    local assembling_machine_list = {}
    for _, surface in pairs(game.surfaces) do
        for _, machine in pairs(surface.find_entities_filtered({ type = { "assembling-machine", "furnace" }, force = force })) do
            assembling_machine_list[#assembling_machine_list+1] = machine
        end
        for _, ghost in pairs(surface.find_entities_filtered({ type = "entity-ghost", ghost_type = { "assembling-machine", "furnace" }, force = force })) do
            assembling_machine_list[#assembling_machine_list+1] = ghost
        end
    end
    return assembling_machine_list
end

local function apply_turd_bonus(force, master_tech_name, tech_upgrade, assembling_machine_list)
    local turd_bonuses = storage.turd_bonuses[force.index] or {}
    local selection = turd_bonuses[master_tech_name] or NOT_SELECTED
    if selection == NOT_SELECTED then return assembling_machine_list end
    local sub_tech = tech_upgrade.sub_techs[selection]

    local recipes = force.recipes
    local item_prototypes = prototypes.item
    defunctionize_effect_table(sub_tech)
    for _, effect in pairs(sub_tech.effects) do
        if effect.type == "unlock-recipe" then
            if recipes[effect.recipe] then recipes[effect.recipe].enabled = true end
        elseif effect.type == "recipe-replacement" then
            local old, new = recipes[effect.old], recipes[effect.new]
            if not old or old.enabled then recipe_replacement(old, new, force, assembling_machine_list) end
        elseif effect.type == "module-effects" then
            module_effects(tech_upgrade, sub_tech, assembling_machine_list, force, item_prototypes)
        elseif effect.type == "machine-replacement" then
            assembling_machine_list = machine_replacement(effect.old, effect.new, assembling_machine_list)
            storage.turd_machine_replacements[force.index] = storage.turd_machine_replacements[force.index] or {}
            storage.turd_machine_replacements[force.index][effect.old] = effect.new
        end
    end
    return assembling_machine_list
end

local function reapply_turd_bonuses(force)
    storage.turd_unlocked_modules[force.index] = {}
    local assembling_machine_list = find_all_assembling_machines(force)

    for master_tech_name, tech_upgrade in pairs(tech_upgrades) do
        assembling_machine_list = apply_turd_bonus(force, master_tech_name, tech_upgrade, assembling_machine_list)
    end
end

local function unselect_recipes_for_subtech(sub_tech, force, assembling_machine_list)
    local recipes = force.recipes
    defunctionize_effect_table(sub_tech)
    for _, effect in pairs(sub_tech.effects) do
        if (effect.type == "unlock-recipe" or effect.type == "recipe-replacement") and not effect.also_unlocked_by_techs then
            local recipe = recipes[effect.new or effect.recipe]
            if not recipe or recipe.enabled then
                recipe_replacement(recipe, effect.old and recipes[effect.old], force, assembling_machine_list)
            end
        elseif effect.type == "machine-replacement" then
            if storage.turd_machine_replacements[force.index] then
                storage.turd_machine_replacements[force.index][effect.old] = nil
            end
            assembling_machine_list = machine_replacement(effect.new, effect.old, assembling_machine_list)
        end
    end
end

local function destroy_all_hidden_beacons(force)
    storage.turd_unlocked_modules[force.index] = {}
    for unit_number, beacon in pairs(storage.turd_beaconed_machines) do
        if not beacon.valid then
            storage.turd_beaconed_machines[unit_number] = nil
        elseif beacon.force == force then
            storage.turd_beaconed_machines[unit_number] = nil
            beacon.destroy()
        end
    end
end

gui_events[defines.events.on_gui_click]["py_turd_randomize_button"] = function(event)
    local element = event.element
    local frame = element.parent.parent
    local sub_tech_flow = frame.sub_tech_flow
    local random_choice = math.random(#sub_tech_flow.children)
    local sub_tech = sub_tech_flow.children[random_choice]
    local confirm_button = sub_tech.info_flow.py_turd_confirm_button
    gui_events[defines.events.on_gui_click]["py_turd_confirm_button"]({ element = confirm_button, player_index = event.player_index })
end

local new_turd = function(event)
    local skip_gui = event.skip_gui

    local element
    local sub_tech_flow
    local header_flow
    local randomize_button
    if not skip_gui then
        element = event.element
        sub_tech_flow = element.parent.parent.parent
        header_flow = sub_tech_flow.parent.header_flow
        randomize_button = header_flow.py_turd_randomize_button
    end
    local master_tech_name = event.master_tech_name or element.tags.master_tech_name
    local sub_tech_name = event.sub_tech_name or element.tags.sub_tech_name
    local player = event.player or game.get_player(event.player_index) --[[@as LuaPlayer]]
    local force = player.force
    local force_index = force.index

    if not force.technologies[master_tech_name].researched then return end

    if not skip_gui then
        if element.caption[1] == "turd.unavailable" then return end
    end

    local turd_bonuses = storage.turd_bonuses[force_index] or {}
    storage.turd_bonuses[force_index] = turd_bonuses
    local selection = turd_bonuses[master_tech_name] or NOT_SELECTED
    if selection == NOT_SELECTED then
        force.print({ "turd.font", { "turd.selected-alert", { "technology-name." .. master_tech_name }, { "technology-name." .. sub_tech_name }, player.name, player.color.r, player.color.g, player.color.b } })
        turd_bonuses[master_tech_name] = sub_tech_name
        apply_turd_bonus(force, master_tech_name, tech_upgrades[master_tech_name], find_all_assembling_machines(force))
        if not skip_gui then
            randomize_button.visible = false
        end
    else
        storage.turd_reset_remaining[force_index] = storage.turd_reset_remaining[force_index] or 0
        if storage.turd_reset_remaining[force_index] <= 0 and not has_turd_migration(force_index, sub_tech_name) then
            return
        end
        force.print({ "turd.font", { "turd.unselected-alert", { "technology-name." .. master_tech_name }, { "technology-name." .. sub_tech_name }, player.name, player.color.r, player.color.g, player.color.b } })
        turd_bonuses[master_tech_name] = NOT_SELECTED
        if has_turd_migration(force_index, sub_tech_name) then
            storage.turd_migrations[force_index][sub_tech_name] = 0
        else
            storage.turd_reset_remaining[force_index] = storage.turd_reset_remaining[force_index] - 1
        end
        unselect_recipes_for_subtech(tech_upgrades[master_tech_name].sub_techs[selection], force, find_all_assembling_machines(force))
        destroy_all_hidden_beacons(force)
        reapply_turd_bonuses(force)

        local resets_left = storage.turd_reset_remaining[force_index]
        if not skip_gui then
            local reset_label = sub_tech_flow.parent.parent.textbox_frame.py_resets_left
            if resets_left == 0 and reset_label then
                reset_label.destroy()
            elseif resets_left > 0 and reset_label then
                reset_label.caption = { "turd.resets-left", resets_left }
            end
            randomize_button.visible = true
        end
    end

    if not skip_gui then
        for _, sub_tech in pairs(sub_tech_flow.children) do
            local confirm_button = sub_tech.info_flow.py_turd_confirm_button
            update_confirm_button(confirm_button, player)
        end
    end
end
gui_events[defines.events.on_gui_click]["py_turd_confirm_button"] = new_turd

local function clear_new_turd_recipe_notifications()
    local recipe_prototypes = prototypes.recipe
    for _, player in pairs(game.players) do
        for _, tech_upgrade in pairs(tech_upgrades) do
            for _, sub_tech in pairs(tech_upgrade.sub_techs) do
                defunctionize_effect_table(sub_tech)
                for _, effect in pairs(sub_tech.effects) do
                    if effect.type == "unlock-recipe" then
                        if recipe_prototypes[effect.recipe] then
                            player.clear_recipe_notification(effect.recipe)
                        end
                    elseif effect.type == "recipe-replacement" then
                        if recipe_prototypes[effect.new] then
                            player.clear_recipe_notification(effect.new)
                        end
                    end
                end
            end
        end
    end
end

py.on_event(py.events.on_init(), function()
    storage.turd_bonuses = storage.turd_bonuses or {}
    storage.turd_beaconed_machines = storage.turd_beaconed_machines or {}
    storage.turd_unlocked_modules = storage.turd_unlocked_modules or {}
    storage.turd_views = storage.turd_views or {}
    storage.turd_reset_remaining = storage.turd_reset_remaining or {}
    storage.turd_machine_replacements = storage.turd_machine_replacements or {}
    storage.turd_migrations = storage.turd_migrations or {}
    storage.turd_bhoddos = storage.turd_bhoddos or {}

    --on init create the local variable, on migration reset the translations to recalculate them later
    storage.technology_locale = {}
    storage.technology_locale.temp = {}
end)

-- If we don't handle this, a force.reset_technology_effects() will lock all TURD recipes until a technology is researched
py.on_event(defines.events.on_technology_effects_reset, function(event)
    reapply_turd_bonuses(event.force)
end)

local function starts_with(str, start)
    return str:sub(1, #start) == start
end

local function on_researched(event)
    local technology = event.research
    local force = technology.force
    local force_index = force.index

    if tech_upgrades[technology.name] then
        storage.turd_bonuses[force_index] = storage.turd_bonuses[force_index] or {}
        storage.turd_bonuses[force_index][technology.name] = NOT_SELECTED
    elseif starts_with(technology.name, "turd-partial-respec") then
        storage.turd_reset_remaining[force_index] = (storage.turd_reset_remaining[force_index] or 0) + 1
        return
    end

    -- this is for recipe replacement. if a non turd tech unlocks a recipe that is replaced by a turd tech, run reapply_turd_bonuses
    -- TODO: optimize this to not run if the tech doesn't need recipe replacements (maybe a table of all turd replacable recipes is needed)
    if game.tick ~= 0 then reapply_turd_bonuses(force) end
end

local function on_unresearched(event)
    local technology = event.research
    local force = technology.force

    if tech_upgrades[technology.name] then
        force.reset_technology_effects()
    end
end

py.on_event(defines.events.on_research_finished, on_researched)
py.on_event(defines.events.on_research_reversed, on_unresearched)

local on_turd_built = function(event)
    local entity = event.entity
    if just_built_new_machine or not entity.valid or not entity.unit_number then return end
    local force_index = entity.force_index
    local name = entity.name == "entity-ghost" and entity.ghost_name or entity.name

    if storage.turd_unlocked_modules[force_index] then
        local module_name = storage.turd_unlocked_modules[force_index][entity.name]
        if module_name then
            create_hidden_beacon(entity, module_name, prototypes.item)
        end
    end

    if storage.turd_machine_replacements[force_index] and storage.turd_machine_replacements[force_index][name] then
        machine_replacement(name, storage.turd_machine_replacements[force_index][name], { entity })
    elseif turd_machines[name] then -- is a turd building, should be normal
        machine_replacement(name, turd_machines[name], { entity })
    end

    if entity.valid and bhoddos_lib.cultures[entity.name] then
        bhoddos_lib.update_culture_table(entity, "add")
    end
end

py.on_event(py.events.on_built(), on_turd_built)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then return end
    local beacon = storage.turd_beaconed_machines[entity.unit_number]
    storage.turd_beaconed_machines[entity.unit_number] = nil
    if not beacon or not beacon.valid then return end
    beacon.destroy()

    if bhoddos_lib.cultures[entity.name] then
        bhoddos_lib.update_culture_table(entity, "remove")
    end
end)

---@param force_index integer the force requesting this information
---@param entity_name string the entity get the replacement for
---@return string? replacement_entity the name of the entity that replaces the given entity
local get_machine_replacement = function(force_index, entity_name)
    if not storage.turd_machine_replacements[force_index] then return end
    return storage.turd_machine_replacements[force_index][entity_name]
end

remote.add_interface("pywiki_turd_page", {
    create_turd_page = create_turd_page,
    on_search = on_search,
    reapply_turd_bonuses = reapply_turd_bonuses,
    new_turd = new_turd,
    on_turd_built = on_turd_built,
    get_machine_replacement = get_machine_replacement
})
