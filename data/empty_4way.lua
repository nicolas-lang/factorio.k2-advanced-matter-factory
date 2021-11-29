return function()
    local imgBase = "__nco-K2AdvancedMatterFactory__/graphics"
    local empty = {
        filename = imgBase .. "/entity/empty.png",
        priority = "high",
        width = 1,
        height = 1,
        scale = 0.5,
        shift = {0, 0}
    }
    return {
        north = empty,
        east = empty,
        south = empty,
        west = empty
    }
end
