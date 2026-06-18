local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- gitsigns, use the default for the rest
        -- Check `:h gitsigns-highlight-groups`
        GitSignsDeleteLn = { link = "DiffDelete" },
    }
end

return M
