local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- which-key, use the default for the rest
        -- Check `:h which-key.nvim-which-key-colors`
        WhichKeyIconPurple = { fg = colors.magenta },
    }
end

return M
