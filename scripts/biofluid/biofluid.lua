local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Biofluid = {}
Biofluid.events = {}

Biofluid.events.on_init = function()
	global.biofluid_robots = global.biofluid_robots or {}
end

local biorobot_names = {
	['gobachov'] = true,
	['huzu'] = true,
	['chorkok'] = true,
}
Biofluid.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if biorobot_names[entity.name] then
	end
end