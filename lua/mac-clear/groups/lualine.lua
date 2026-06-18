local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- lualine.nvim
        LuaLineDiffAdd    = { link = "Added" },
        LuaLineDiffDelete = { link = "Removed" },
        LuaLineDiffChange = { link = "Changed" },
    }
end

return M
