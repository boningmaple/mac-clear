local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    -- Rules:
    -- 1. Keep Neovim groups first
    -- 2. Third party plugins can only link to Neovim or their own groups
    return vim.tbl_extend(
        "error",
        require("mac-clear.groups.neovim").getGroups(theme, colors),
        require("mac-clear.groups.blink-cmp").getGroups(theme, colors),
        require("mac-clear.groups.fzf-lua").getGroups(theme, colors),
        require("mac-clear.groups.gitsigns").getGroups(theme, colors),
        require("mac-clear.groups.diffview").getGroups(theme, colors),
        require("mac-clear.groups.lualine").getGroups(theme, colors),
        require("mac-clear.groups.nvim-tree").getGroups(theme, colors),
        require("mac-clear.groups.which-key").getGroups(theme, colors),
        require("mac-clear.groups.render-markdown").getGroups(theme, colors),
        require("mac-clear.groups.aerial").getGroups(theme, colors),
        require("mac-clear.groups.nvim-treesitter-context").getGroups(theme, colors),
        require("mac-clear.groups.neogit").getGroups(theme, colors)
    )
end

return M
