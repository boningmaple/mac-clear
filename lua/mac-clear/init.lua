local M = {}

---@type Config
M.config = {
    colors_overrides = function() end,
    groups_overrides = function() end,
    lualine_overrides = function() end,
}

---@param config? Config
function M.setup(config)
    M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

---@param config? Config
function M.load(config)
    vim.cmd("hi clear")

    config = vim.tbl_deep_extend("force", M.config, config or {})

    local bg = vim.o.background == "light" and "light" or "dark"
    local theme = config.theme or bg

    vim.g.colors_name = config.theme and ("mac-clear-" .. theme) or "mac-clear"

    local colors = vim.tbl_extend(
        "force",
        require("mac-clear.colors").getColors(theme),
        config.colors_overrides(theme) or {}
    )
    local groups = vim.tbl_extend(
        "force",
        require("mac-clear.groups").getGroups(theme, colors),
        config.groups_overrides(theme, colors) or {}
    )
    for group, spec in pairs(groups) do
        vim.api.nvim_set_hl(0, group, spec)
    end
end

return M
