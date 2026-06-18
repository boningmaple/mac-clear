local utils = require("mac-clear.utils")

local M = {}

-- Commented groups means use their default value
---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- Default highlight groups
        -- Check `:h highlight-default`
        NonText                          = { fg = colors.on_surface_lowest },
        Normal                           = { bg = colors.surface, fg = colors.on_surface },
        NormalFloat                      = { bg = colors.surface_container_low, fg = colors.on_surface },
        Title                            = { fg = colors.on_surface, bold = true },
        Visual                           = { bg = colors.selection },

        ColorColumn                      = { bg = colors.surface_container_low },
        Conceal                          = { link = "NonText" },
        CurSearch                        = { bg = colors.peach, fg = colors.black },
        -- Cursor
        -- lCursor
        -- CursorIM
        CursorColumn                     = { bg = colors.surface_container },
        CursorLine                       = { link = "CursorColumn" },
        Directory                        = { fg = colors.blue },
        DiffAdd                          = { bg = colors.green, fg = colors.surface },
        DiffChange                       = { bg = colors.yellow, fg = colors.surface },
        DiffDelete                       = { bg = colors.red, fg = colors.surface },
        DiffText                         = { bg = colors.blue, fg = colors.surface },
        -- DiffTextAdd
        -- EndOfBuffer
        -- TermCursor
        OkMsg                            = { fg = colors.green },
        WarningMsg                       = { fg = colors.yellow },
        ErrorMsg                         = { fg = colors.red },
        -- StderrMsg
        -- StdoutMsg
        WinSeparator                     = { link = "Normal" },
        Folded                           = { link = "NormalFloat" },
        FoldColumn                       = { link = "Folded" },
        SignColumn                       = { bg = colors.surface },
        -- IncSearch
        -- Substitute
        LineNr                           = { link = "NonText" },
        -- LineNrAbove
        -- LineNrBelow
        CursorLineNr                     = { fg = colors.on_surface },
        -- CursorLineFold
        -- CursorLineSign
        MatchParen                       = { bg = colors.selection, bold = true },
        ModeMsg                          = { fg = colors.green },
        -- MsgArea
        -- MsgSeparator
        MoreMsg                          = { fg = colors.cyan },
        FloatBorder                      = { link = "NormalFloat" },
        -- FloatShadow
        -- FloatShadowThrough
        FloatTitle                       = { link = "NormalFloat" },
        -- FloatFooter
        -- NormalNC
        Pmenu                            = { bg = colors.surface_container_low, fg = colors.on_surface_low },
        PmenuSel                         = { link = "Visual" },
        PmenuKind                        = { link = "NormalFloat" },
        PmenuKindSel                     = { link = "PmenuSel" },
        PmenuExtra                       = { link = "NormalFloat" },
        PmenuExtraSel                    = { link = "PmenuSel" },
        PmenuSbar                        = { bg = colors.surface_container },
        PmenuThumb                       = { bg = colors.on_surface_low },
        PmenuMatch                       = { fg = colors.on_surface },
        -- PmenuMatchSel
        PmenuBorder                      = { link = "FloatBorder" },
        -- PmenuShadow
        -- PmenuShadowThrough
        -- ComplMatchIns
        -- PreInsert
        -- ComplHint
        -- ComplHintMore
        Question                         = { fg = colors.green },
        QuickFixLine                     = { bg = colors.selection, bold = true },
        Search                           = { bg = colors.golden_yellow, fg = colors.black },
        -- SnippetTabstop
        -- SnippetTabstopActive
        SpecialKey                       = { link = "NonText" },
        SpellBad                         = { sp = colors.red, undercurl = true },
        SpellCap                         = { sp = colors.yellow, undercurl = true },
        SpellLocal                       = { sp = colors.green, undercurl = true },
        SpellRare                        = { sp = colors.cyan, undercurl = true },
        StatusLine                       = { bg = colors.surface_container_low, fg = colors.on_surface },
        StatusLineNC                     = { bg = colors.surface_container_low, fg = colors.on_surface_lowest },
        -- StatusLineTerm
        -- StatusLineTermNC
        TabLine                          = { bg = colors.surface_container_low, fg = colors.on_surface_lowest },
        TabLineFill                      = { link = "TabLine" },
        TabLineSel                       = { link = "Normal" },
        VisualNOS                        = { bg = colors.surface_container },
        -- Whitespace
        -- WildMenu
        WinBar                           = { link = "StatusLine" },
        WinBarNC                         = { link = "StatusLineNC" },

        -- Common syntax highlight groups
        -- Check `:h group-name`
        Comment                          = { fg = colors.on_surface_low },
        Special                          = { fg = colors.peach },
        Keyword                          = { fg = colors.magenta },

        Constant                         = { link = "Special" },
        String                           = { fg = colors.green },
        -- Character
        -- Number
        -- Boolean
        -- Float

        Identifier                       = { fg = colors.on_surface },
        Function                         = { fg = utils.lightDark(theme, colors.blue, colors.blue_bright) },

        Statement                        = { link = "Keyword" },
        -- Conditional
        -- Repeat
        -- Label
        Operator                         = { link = "Statement" },
        Exception                        = { fg = colors.red },

        PreProc                          = { link = "Keyword" },
        -- Include
        -- Define
        -- Macro
        -- PreCondit

        Type                             = { fg = utils.lightDark(theme, colors.yellow, colors.yellow_bright) },
        -- StorageClass
        -- Structure
        -- Typedef

        -- SpecialChar
        Tag                              = { fg = colors.green },
        Delimiter                        = { fg = colors.on_surface },
        -- SpecialComment
        Debug                            = { fg = colors.red },

        Underlined                       = { fg = colors.green, underline = true },

        Ignore                           = { link = "NonText" },

        Error                            = { bg = colors.red, fg = colors.surface },

        Todo                             = { bg = colors.golden_yellow, fg = colors.black, bold = true },

        Added                            = { fg = colors.green },
        Changed                          = { fg = colors.yellow },
        Removed                          = { fg = colors.red },

        -- Diagnostic highlight groups
        -- Check `:h diagnostic-highlights`
        DiagnosticError                  = { fg = colors.red },
        DiagnosticWarn                   = { fg = colors.yellow },
        DiagnosticInfo                   = { fg = colors.blue },
        DiagnosticHint                   = { fg = colors.cyan },
        DiagnosticOk                     = { fg = colors.green },
        -- DiagnosticVirtualTextError
        -- DiagnosticVirtualTextWarn
        -- DiagnosticVirtualTextInfo
        -- DiagnosticVirtualTextHint
        -- DiagnosticVirtualTextOk
        -- DiagnosticVirtualLinesError
        -- DiagnosticVirtualLinesWarn
        -- DiagnosticVirtualLinesInfo
        -- DiagnosticVirtualLinesHint
        -- DiagnosticVirtualLinesOk
        DiagnosticUnderlineError         = { sp = colors.red, undercurl = true },
        DiagnosticUnderlineWarn          = { sp = colors.yellow, undercurl = true },
        DiagnosticUnderlineInfo          = { sp = colors.blue, undercurl = true },
        DiagnosticUnderlineHint          = { sp = colors.blue, undercurl = true },
        DiagnosticUnderlineOk            = { sp = colors.green, undercurl = true },
        -- DiagnosticFloatingError,
        -- DiagnosticFloatingWarn,
        -- DiagnosticFloatingInfo,
        -- DiagnosticFloatingHint,
        -- DiagnosticFloatingOk,
        -- DiagnosticSignError,
        -- DiagnosticSignWarn,
        -- DiagnosticSignInfo,
        -- DiagnosticSignHint,
        -- DiagnosticSignOk,
        DiagnosticDeprecated             = { sp = colors.red, strikethrough = true },
        -- DiagnosticUnnecessary,

        -- Treesitter highlight groups
        -- Check `:h treesitter-highlight-groups`
        ["@variable"]                    = { link = "Identifier" },
        ["@variable.builtin"]            = { link = "Keyword" },
        -- ["@variable.parameter"]
        -- ["@variable.parameter.builtin"]
        ["@variable.member"]             = {},

        -- ["@constant"]
        -- ["@constant.builtin"]
        -- ["@constant.macro"]

        ["@module"]                      = { link = "Identifier" },
        ["@module.builtin"]              = { link = "@module" },
        -- ["@label"]

        -- ["@string"]
        -- ["@string.documentation"]
        -- ["@string.regexp"]
        -- ["@string.escape"]
        -- ["@string.special"]
        -- ["@string.special.symbol"]
        ["@string.special.path"]         = { link = "Underlined" },
        -- ["@string.special.url"]

        -- ["@character"]
        -- ["@character.special"]

        -- ["@boolean"]
        -- ["@number"]
        -- ["@number.float"]

        -- ["@type"]
        ["@type.builtin"]                = { link = "@type" },
        -- ["@type.definition"]

        -- ["@attribute"]
        ["@attribute.builtin"]           = { link = "@attribute" },
        -- ["@property"]

        -- ["@function"]
        ["@function.builtin"]            = { link = "@function" },
        -- ["@function.call"]
        -- ["@function.macro"]

        -- ["@function.mehod"]
        -- ["@function.method.call"]

        -- ["@constructor"]
        -- ["@operator"]

        -- ["@keyword"]
        -- ["@keyword.coroutine"]
        -- ["@keyword.function"]
        -- ["@keyword.operator"]
        -- ["@keyword.import"]
        -- ["@keyword.type"]
        -- ["@keyword.modifier"]
        -- ["@keyword.repeat"]
        -- ["@keyword.return"]
        ["@keyword.debug"]               = { link = "Debug" },
        ["@keyword.exception"]           = { link = "Exception" },

        -- ["@keyword.conditional"]
        -- ["@keyword.conditional.ternary"]

        -- [@keyword.directive]
        -- [@keyword.directive.define]

        -- ["@punctuation.delimiter"]
        -- ["@punctuation.bracket"]
        -- ["@punctuation.special"]

        -- ["@comment"]
        -- ["@comment.documentation"]

        -- ["@comment.error"]
        -- ["@comment.warning"]
        -- ["@comment.todo"]
        -- ["@comment.note"]

        -- ["@markup.strong"]
        -- ["@markup.italic"]
        -- ["@markup.strikethrough"]
        -- ["@markup.underline"]

        -- ["@markup.heading"]
        -- ["@markup.heading.1"]
        -- ["@markup.heading.2"]
        -- ["@markup.heading.3"]
        -- ["@markup.heading.4"]
        -- ["@markup.heading.5"]
        -- ["@markup.heading.6"]

        ["@markup.quote"]                = { link = "Comment" },
        ["@markup.math"]                 = { link = "@keyword" },

        -- ["@markup.link"]
        -- ["@markup.link.label"]
        -- ["@markup.link.url"]

        ["@markup.raw"]                  = { fg = colors.on_surface, bold = true },
        ["@markup.raw.block"]            = { fg = colors.on_surface },

        ["@markup.list"]                 = { fg = colors.on_surface },
        ["@markup.list.checked"]         = { fg = colors.green },
        ["@markup.list.unchecked"]       = { link = "@markup.list" },

        -- ["@diff.plus"]
        -- ["@diff.minus"]
        -- ["@diff.delta"]

        -- ["@tag"]
        ["@tag.builtin"]                 = { link = "@tag" },
        ["@tag.attribute"]               = { fg = colors.red },
        ["@tag.delimiter"]               = { link = "Delimiter" },

        -- ["@spell"]

        -- Lsp semantic highlights
        -- Check `:h lsp-semantic-highlight`
        -- ["@lsp.type.class"]
        -- ["@lsp.type.comment"]
        -- ["@lsp.type.decorator"]
        -- ["@lsp.type.enum"]
        -- ["@lsp.type.enumMember"]
        -- ["@lsp.type.event"]
        -- ["@lsp.type.function"]
        -- ["@lsp.type.interface"]
        -- ["@lsp.type.keyword"]
        -- ["@lsp.type.macro"]
        -- ["@lsp.type.method"]
        -- ["@lsp.type.modifier"]
        -- ["@lsp.type.namespace"]
        -- ["@lsp.type.number"]
        -- ["@lsp.type.operator"]
        -- ["@lsp.type.parameter"]
        -- ["@lsp.type.property"]
        -- ["@lsp.type.regexp"]
        -- ["@lsp.type.string"]
        -- ["@lsp.type.struct"]
        -- ["@lsp.type.type"]
        -- ["@lsp.type.typeParameter"]
        ["@lsp.type.variable"]           = {},

        -- ["@lsp.mod.abstract"]
        -- ["@lsp.mod.async"]
        -- ["@lsp.mod.declaration"]
        -- ["@lsp.mod.defaultLibrary"]
        -- ["@lsp.mod.definition"]
        -- ["@lsp.mod.deprecated"]
        -- ["@lsp.mod.documentation"]
        -- ["@lsp.mod.modification"]
        -- ["@lsp.mod.readonly"]
        -- ["@lsp.mod.static"]

        -- Lsp zig
        ["@lsp.type.escapeSequence.zig"] = { link = "@string.escape" },

        -- blink-cmp, use the default for the rest
        -- Check `:h blink-cmp-config-appearance`
        BlinkCmpMenuBorder               = { link = "PmenuBorder" },
        BlinkCmpLabelMatch               = { link = "PmenuMatch" },
        BlinkCmpKindText                 = { link = "Identifier" },
        BlinkCmpKindMethod               = { link = "Function" },
        BlinkCmpKindFunction             = { link = "Function" },
        BlinkCmpKindConstructor          = { link = "Type" },
        BlinkCmpKindField                = { link = "Identifier" },
        BlinkCmpKindVariable             = { link = "Identifier" },
        BlinkCmpKindProperty             = { link = "Identifier" },
        BlinkCmpKindClass                = { link = "Type" },
        BlinkCmpKindInterface            = { link = "Type" },
        BlinkCmpKindStruct               = { link = "Structure" },
        BlinkCmpKindModule               = { link = "Type" },
        BlinkCmpKindUnit                 = { link = "Type" },
        BlinkCmpKindValue                = { link = "Identifier" },
        BlinkCmpKindEnum                 = { link = "Type" },
        BlinkCmpKindEnumMember           = { link = "Constant" },
        BlinkCmpKindKeyword              = { link = "Keyword" },
        BlinkCmpKindConstant             = { link = "Constant" },
        BlinkCmpKindSnippet              = { link = "Special" },
        BlinkCmpKindColor                = { link = "Identifier" },
        BlinkCmpKindFile                 = { link = "Identifier" },
        BlinkCmpKindReference            = { link = "Identifier" },
        BlinkCmpKindFolder               = { link = "Directory" },
        BlinkCmpKindEvent                = { link = "Type" },
        BlinkCmpKindOperator             = { link = "Operator" },
        BlinkCmpKindTypeParameter        = { link = "Identifier" },

        -- fzf-lua, use the default
        -- Check `:h fzf-lua-highlight-groups`

        -- gitsigns, use the default for the rest
        -- Check `:h gitsigns-highlight-groups`
        GitSignsDeleteLn                 = { link = "DiffDelete" },

        -- nvim-tree, use the default
        -- Check `:h nvim-tree-highlight-groups-default`

        -- which-key, use the default for the rest
        -- Check `:h which-key.nvim-which-key-colors`
        WhichKeyIconPurple               = { fg = colors.magenta },

        -- render-markdown, use the default
        -- Check `:h render-markdown-colors`

        -- aerial.nvim, use the default

        -- nvim-treesitter-context, use the default
        -- Check `:h nvim-treesitter-context-highlights`

        -- lualine.nvim
        LuaLineDiffAdd                   = { link = "Added" },
        LuaLineDiffDelete                = { link = "Removed" },
        LuaLineDiffChange                = { link = "Changed" },

        -- neogit, use the default for the rest
        -- Check: `:h neogit_highlights`
        NeogitBranch                     = { link = "Function" },
        NeogitBranchHead                 = { fg = utils.lightDark(theme, colors.blue, colors.blue_bright), underline = true },
        NeogitRemote                     = { fg = colors.green },
        NeogitFold                       = { link = "Folded" },
        NeogitFoldColumn                 = { link = "FoldColumn" },
        NeogitSignColumn                 = { link = "SignColumn" },
        NeogitTagName                    = { link = "NeogitBranch" },
        NeogitTagDistance                = { fg = colors.on_surface },

        NeogitSectionHeader              = { fg = colors.magenta },

        NeogitChangeModified             = { link = "Changed" },
        NeogitChangeAdded                = { link = "Added" },
        NeogitChangeDeleted              = { link = "Removed" },
        NeogitChangeRenamed              = { link = "NeogitChangeAdded" },
        NeogitChangeUpdated              = { link = "NeogitChangeModified" },
        NeogitChangeCopied               = { link = "NeogitChangeAdded" },
        NeogitChangeNewFile              = { link = "NeogitChangeAdded" },
        NeogitChangeUnmerged             = { link = "NeogitChangeModified" },

        NeogitHunkHeader                 = { bg = colors.on_surface_low, fg = colors.surface },
        NeogitDiffContext                = { bg = colors.surface_container_low },
        NeogitDiffAdd                    = { link = "DiffAdd" },
        NeogitDiffDelete                 = { link = "DiffDelete" },
        NeogitDiffHeader                 = { bg = colors.surface_container_low, fg = colors.magenta },
        NeogitActiveItem                 = { link = "Visual" },

        NeogitHunkHeaderHighlight        = { bg = colors.magenta, fg = colors.surface },
        NeogitDiffContextHighlight       = { bg = colors.surface_container },
        NeogitDiffAddHighlight           = { link = "NeogitDiffAdd" },
        NeogitDiffDeleteHighlight        = { link = "NeogitDiffDelete" },
        NeogitDiffHeaderHighlight        = { bg = colors.surface_container, fg = colors.magenta },
        NeogitHunkHeaderCursor           = { link = "NeogitHunkHeaderHighlight" },
        NeogitDiffContextCursor          = { bg = colors.surface_container, underline = true },
        NeogitDiffAddCursor              = { underline = true },
        NeogitDiffDeleteCursor           = { underline = true },
        NeogitDiffHeaderCursor           = { link = "NeogitDiffHeaderHighlight" },

        NeogitDiffAddInline              = { link = "DiffTextAdd" },
        NeogitDiffDeleteInline           = { link = "DiffTextAdd" },

        NeogitFilePath                   = { fg = colors.magenta, italic = true },
        NeogitCommitViewHeader           = { link = "NeogitHunkHeader" },

        NeogitGraphAuthor                = { fg = colors.peach },
        NeogitGraphBlack                 = { fg = colors.black },
        NeogitGraphBoldBlack             = { fg = colors.black, bold = true },
        NeogitGraphRed                   = { fg = colors.red },
        NeogitGraphBoldRed               = { fg = colors.red, bold = true },
        NeogitGraphGreen                 = { fg = colors.green },
        NeogitGraphBoldGreen             = { fg = colors.green, bold = true },
        NeogitGraphYellow                = { fg = colors.yellow },
        NeogitGraphBoldYellow            = { fg = colors.yellow, bold = true },
        NeogitGraphBlue                  = { fg = colors.blue },
        NeogitGraphBoldBlue              = { fg = colors.blue, bold = true },
        NeogitGraphPurple                = { fg = colors.magenta },
        NeogitGraphBoldPurple            = { fg = colors.magenta, bold = true },
        NeogitGraphCyan                  = { fg = colors.cyan },
        NeogitGraphBoldCyan              = { fg = colors.cyan, bold = true },
        NeogitGraphWhite                 = { fg = colors.white },
        NeogitGraphBoldWhite             = { fg = colors.white, bold = true },
        NeogitGraphGray                  = { fg = colors.on_surface_low },
        NeogitGraphBoldGray              = { fg = colors.on_surface_low, bold = true },
        NeogitGraphOrange                = { fg = colors.peach },
        NeogitGraphBoldOrange            = { fg = colors.peach, bold = true },

        NeogitDiffAdditions              = { link = "Added" },
        NeogitDiffDeletions              = { link = "Removed" },
    }
end

return M
