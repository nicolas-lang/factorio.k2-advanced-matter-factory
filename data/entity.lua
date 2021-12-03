local pipecoverspictures = _G.pipecoverspictures --just a fix for lua style check
local empty_4way = require("empty_4way")
local imgBase = "__nco-K2AdvancedMatterFactory__/graphics"
local soundBase = "__nco-K2AdvancedMatterFactory__/sound"
local matterFurnace = {
    type = "furnace",
    name = "advanced-matter-factory",
    icon_size = 32,
    icon = imgBase .. "/icons/matter_factory_icon.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {
        mining_time = 1,
        result = "advanced-matter-factory"
    },
    max_health = 3500,
    result_inventory_size = 1,
    source_inventory_size = 1,
    corpse = "small-remnants",
    dying_explosion = "big-explosion",
    resistances = {{
        type = "physical",
        percent = 60
    }, {
        type = "fire",
        percent = 70
    }, {
        type = "impact",
        percent = 70
    }},
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = empty_4way(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{
                type = "input",
                position = {0, -4}
            }}
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = empty_4way(),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{
                type = "output",
                position = {0, 4}
            }}
        },
        off_when_no_fluid_recipe = false
    },
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    fast_replaceable_group = "assembling-machine",
    animation = {
        layers = {{
            filename = imgBase .. "/entity/matter-factory.png",
            priority = "high",
            width = 268,
            height = 268,
            frame_count = 1,
            hr_version = {
                filename = imgBase .. "/entity/hr-matter-factory.png",
                priority = "high",
                width = 536,
                height = 536,
                frame_count = 1,
                scale = 0.5
            }
        }, {
            filename = imgBase .. "/entity/matter-factory-sh.png",
            priority = "high",
            width = 268,
            height = 268,
            frame_count = 1,
            draw_as_shadow = true,
            hr_version = {
                filename = imgBase .. "/entity/hr-matter-factory-sh.png",
                priority = "high",
                width = 536,
                height = 536,
                frame_count = 1,
                draw_as_shadow = true,
                scale = 0.5
            }
        }}
    },
    working_visualisations = {{
        animation = {
            filename = imgBase .. "/entity/matter-factory-working.png",
            width = 268,
            height = 268,
            frame_count = 16,
            line_length = 4,
            animation_speed = 0.5,
            hr_version = {
                filename = imgBase .. "/entity/hr-matter-factory-working.png",
                width = 536,
                height = 536,
                frame_count = 16,
                line_length = 4,
                scale = 0.5,
                animation_speed = 0.5
            }
        },
        light = {
            intensity = 0.9,
            size = 20,
            shift = {2.0, 0.0},
            color = {
                r = 0.5,
                g = 0.1,
                b = 1
            }
        }
    }},
    crafting_categories = {"matter-conversion"},
    vehicle_impact_sound = {
        filename = "__base__/sound/car-metal-impact.ogg",
        volume = 0.65
    },
    working_sound = {
        sound = {{
            filename = soundBase .. "/matter-factory.ogg",
            volume = 1
        }},
        idle_sound = {
            filename = "__base__/sound/idle1.ogg",
            volume = 1
        },
        apparent_volume = 1.25
    },
    crafting_speed = 1.25,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 27.5
    },
    energy_usage = "40MW",
    ingredient_count = 6,
    module_specification = {
        module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    open_sound = {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.75
    },
    close_sound = {
        filename = "__base__/sound/machine-close.ogg",
        volume = 0.75
    }
}

data:extend({matterFurnace})
