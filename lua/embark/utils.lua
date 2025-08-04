local M = {}

M.black = "#000000"
M.white = "#FFFFFF"

---@param c string
local function rgb(c)
    local base = 16

    local r = tonumber(c:sub(2, 3), base)
    local g = tonumber(c:sub(4, 5), base)
    local b = tonumber(c:sub(6, 7), base)

    ---@class RGB
    return { r, g, b }
end

---@param color1 string
---@param color2 string
---@param amount number
function M.blend(color1, color2, amount)
    local c1 = rgb(color1)
    local c2 = rgb(color2)

    local blend_channel = function(i)
        local ret = (1 - amount) * c1[i] + amount * c2[i]
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format("#%02x%02x%02x",
                         blend_channel(1),
                         blend_channel(2),
                         blend_channel(3))
end

---@param c string
---@param amount number
function M.darken(c, amount)
    return M.blend(c, M.black, amount)
end

---@param c string
---@param amount number
function M.lighten(c, amount)
    return M.blend(c, M.white, amount)
end

return M
