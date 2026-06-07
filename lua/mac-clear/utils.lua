local M = {}

---@param theme Theme
---@param light_color string
---@param dark_color string
function M.lightDark(theme, light_color, dark_color)
    return theme == "light" and light_color or dark_color
end

return M
