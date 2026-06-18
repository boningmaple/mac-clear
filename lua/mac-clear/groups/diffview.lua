local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- diffview, use the default for the rest
        diffAdded = { link = "Added" },
        diffRemoved = { link = "Removed" },
        diffChanged = { link = "Changed" },
    }
end

return M
