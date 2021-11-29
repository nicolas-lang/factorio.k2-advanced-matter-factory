local imgBase = "__nco-K2AdvancedMatterFactory__/graphics"
local matterFurnace = {
    type = "item",
    name = "advanced-matter-factory",
    stack_size = 20,
    icon_size = 32,
    icon = imgBase .. "/icons/matter_factory_icon.png",
    subgroup = "production-machine",
    order = "i[matter]-b[advanced-matter-factory]",
    place_result = "advanced-matter-factory"
}
data:extend({matterFurnace})
