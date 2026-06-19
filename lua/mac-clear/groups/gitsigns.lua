local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- gitsigns, use the default for the rest
        -- Check `:h gitsigns-highlight-groups`
        GitSignsDeleteLn     = { link = "DiffDelete" },
        GitSignsAddInline    = { link = "DiffTextAdd" },
        GitSignsDeleteInline = { bg = colors.red, fg = colors.surface },
        GitSignsChangeInline = { bg = colors.yellow, fg = colors.surface },
    }
end

return M
