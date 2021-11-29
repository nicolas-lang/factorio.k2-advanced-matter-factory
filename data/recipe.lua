local imgBase = "__nco-K2AdvancedMatterFactory__/graphics"
local matterFurnace = {
    type = "recipe",
    name = "advanced-matter-factory",
    subgroup = "production-machine",
    energy_required = 1200,
    enabled = true,
    ingredients = {
		 {"kr-matter-plant", 1},
		 {"kr-matter-assembler", 5},
		 {"matter-stabilizer", 15}
		},
    result = "advanced-matter-factory"
}
data:extend({matterFurnace})
