local getColors = require("mac-clear.colors").getColors
local macClear = require("mac-clear")

local M = {}

---@param theme? Theme
function M.load(theme)
    local config = macClear.config
    local bg = vim.o.background == "light" and "light" or "dark"
    theme = theme or config.theme or bg

    local colors = vim.tbl_deep_extend(
        "force",
        getColors(theme),
        config.colors_overrides(theme) or {}
    )

    local c = { bg = colors.surface_container_low, fg = colors.on_surface }
    return {
        normal = {
            a = { bg = colors.blue, fg = colors.surface, gui = "bold" },
            c = c,
        },
        insert = {
            a = { bg = colors.green, fg = colors.surface, gui = "bold" },
            c = c,
        },
        visual = {
            a = { bg = colors.magenta, fg = colors.surface, gui = "bold" },
            c = c,
        },
        replace = {
            a = { bg = colors.red, fg = colors.surface, gui = "bold" },
            c = c,
        },
        command = {
            a = { bg = colors.yellow, fg = colors.surface, gui = "bold" },
            c = c,
        },
        terminal = {
            a = { bg = colors.yellow, fg = colors.surface, gui = "bold" },
            c = c,
        },
        inactive = {
            c = { bg = colors.surface_container_low, fg = colors.on_surface_lowest },
        },
    }
end

return M
