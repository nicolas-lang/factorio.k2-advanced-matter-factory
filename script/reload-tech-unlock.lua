-------------------------------------------------------------------------------------
--Enable Recipes if tech researched
-------------------------------------------------------------------------------------
local function reload_tech_unlock(technology_name)
	log("reload_tech_unlock:" .. technology_name)
	for _, force in pairs(game.forces) do
		if force.technologies[technology_name] then
			local unlock_state = false
			if force.technologies[technology_name].researched then
				unlock_state = true
			end
			for _, effect in pairs(force.technologies[technology_name].effects) do
				if effect.type == "unlock-recipe" then
					force.recipes[effect.recipe].enabled = unlock_state
					log(effect.recipe .. " enabled: " .. tostring(unlock_state))
				end
			end
		else
			log("tech not found")
		end
	end
end
-------------------------------------------------------------------------------------
local function script_on_configuration_changed()
	reload_tech_unlock("advanced-matter-conversion")
end
--
local function event_on_force_created()
	reload_tech_unlock("advanced-matter-conversion")
end
-------------------------------------------------------------------------------------
script.on_configuration_changed(script_on_configuration_changed)
script.on_event(defines.events.on_force_created, event_on_force_created)
