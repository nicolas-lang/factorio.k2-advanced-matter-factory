local imgBase = "__nco-K2AdvancedMatterFactory__/graphics"
local advancedMatterConversionTech = {
	type = "technology",
	name = "advanced-matter-conversion",
	mod = "nco-K2AdvancedMatterFactory",
	icon = imgBase .. "/technology/matter-factory.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "advanced-matter-factory"
		}
	},
	prerequisites = {
		"kr-matter-processing",
		"kr-singularity-tech-card"
	},
	order = "a-e-d",
	unit = {
		count = 1500,
		time = 60,
		ingredients = {
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"matter-tech-card", 1},
			{"singularity-tech-card", 1}
		}
	}
}
data:extend({advancedMatterConversionTech})
