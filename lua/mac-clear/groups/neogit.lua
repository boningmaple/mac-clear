local utils = require("mac-clear.utils")

local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- neogit, use the default for the rest
        -- Check: `:h neogit_highlights`
        NeogitBranch               = { link = "Function" },
        NeogitBranchHead           = { fg = utils.lightDark(theme, colors.blue, colors.blue_bright), underline = true },
        NeogitRemote               = { fg = colors.green },
        NeogitFold                 = { link = "Folded" },
        NeogitFoldColumn           = { link = "FoldColumn" },
        NeogitSignColumn           = { link = "SignColumn" },
        NeogitTagName              = { link = "NeogitBranch" },
        NeogitTagDistance          = { fg = colors.on_surface },

        NeogitSectionHeader        = { fg = colors.magenta },

        NeogitChangeModified       = { link = "Changed" },
        NeogitChangeAdded          = { link = "Added" },
        NeogitChangeDeleted        = { link = "Removed" },
        NeogitChangeRenamed        = { link = "NeogitChangeAdded" },
        NeogitChangeUpdated        = { link = "NeogitChangeModified" },
        NeogitChangeCopied         = { link = "NeogitChangeAdded" },
        NeogitChangeNewFile        = { link = "NeogitChangeAdded" },
        NeogitChangeUnmerged       = { link = "NeogitChangeModified" },

        NeogitHunkHeader           = { bg = colors.on_surface_low, fg = colors.surface },
        NeogitDiffContext          = { bg = colors.surface_container_low },
        NeogitDiffAdd              = { link = "DiffAdd" },
        NeogitDiffDelete           = { link = "DiffDelete" },
        NeogitDiffHeader           = { bg = colors.surface_container_low, fg = colors.magenta },
        NeogitActiveItem           = { link = "Visual" },

        NeogitHunkHeaderHighlight  = { bg = colors.magenta, fg = colors.surface },
        NeogitDiffContextHighlight = { bg = colors.surface_container },
        NeogitDiffAddHighlight     = { link = "NeogitDiffAdd" },
        NeogitDiffDeleteHighlight  = { link = "NeogitDiffDelete" },
        NeogitDiffHeaderHighlight  = { bg = colors.surface_container, fg = colors.magenta },
        NeogitHunkHeaderCursor     = { link = "NeogitHunkHeaderHighlight" },
        NeogitDiffContextCursor    = { bg = colors.surface_container, underline = true },
        NeogitDiffAddCursor        = { underline = true },
        NeogitDiffDeleteCursor     = { underline = true },
        NeogitDiffHeaderCursor     = { link = "NeogitDiffHeaderHighlight" },

        NeogitDiffAddInline        = { link = "DiffTextAdd" },
        NeogitDiffDeleteInline     = { link = "DiffTextAdd" },

        NeogitFilePath             = { fg = colors.magenta, italic = true },
        NeogitCommitViewHeader     = { link = "NeogitHunkHeader" },

        NeogitGraphAuthor          = { fg = colors.peach },
        NeogitGraphBlack           = { fg = colors.black },
        NeogitGraphBoldBlack       = { fg = colors.black, bold = true },
        NeogitGraphRed             = { fg = colors.red },
        NeogitGraphBoldRed         = { fg = colors.red, bold = true },
        NeogitGraphGreen           = { fg = colors.green },
        NeogitGraphBoldGreen       = { fg = colors.green, bold = true },
        NeogitGraphYellow          = { fg = colors.yellow },
        NeogitGraphBoldYellow      = { fg = colors.yellow, bold = true },
        NeogitGraphBlue            = { fg = colors.blue },
        NeogitGraphBoldBlue        = { fg = colors.blue, bold = true },
        NeogitGraphPurple          = { fg = colors.magenta },
        NeogitGraphBoldPurple      = { fg = colors.magenta, bold = true },
        NeogitGraphCyan            = { fg = colors.cyan },
        NeogitGraphBoldCyan        = { fg = colors.cyan, bold = true },
        NeogitGraphWhite           = { fg = colors.white },
        NeogitGraphBoldWhite       = { fg = colors.white, bold = true },
        NeogitGraphGray            = { fg = colors.on_surface_low },
        NeogitGraphBoldGray        = { fg = colors.on_surface_low, bold = true },
        NeogitGraphOrange          = { fg = colors.peach },
        NeogitGraphBoldOrange      = { fg = colors.peach, bold = true },

        NeogitDiffAdditions        = { link = "Added" },
        NeogitDiffDeletions        = { link = "Removed" },
    }
end

return M
