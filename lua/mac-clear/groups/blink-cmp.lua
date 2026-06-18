local M = {}

---@param theme Theme
---@param colors Colors
function M.getGroups(theme, colors)
    return {
        -- blink-cmp, use the default for the rest
        -- Check `:h blink-cmp-config-appearance`
        BlinkCmpMenuBorder        = { link = "PmenuBorder" },
        BlinkCmpLabelMatch        = { link = "PmenuMatch" },
        BlinkCmpKindText          = { link = "Identifier" },
        BlinkCmpKindMethod        = { link = "Function" },
        BlinkCmpKindFunction      = { link = "Function" },
        BlinkCmpKindConstructor   = { link = "Type" },
        BlinkCmpKindField         = { link = "Identifier" },
        BlinkCmpKindVariable      = { link = "Identifier" },
        BlinkCmpKindProperty      = { link = "Identifier" },
        BlinkCmpKindClass         = { link = "Type" },
        BlinkCmpKindInterface     = { link = "Type" },
        BlinkCmpKindStruct        = { link = "Structure" },
        BlinkCmpKindModule        = { link = "Type" },
        BlinkCmpKindUnit          = { link = "Type" },
        BlinkCmpKindValue         = { link = "Identifier" },
        BlinkCmpKindEnum          = { link = "Type" },
        BlinkCmpKindEnumMember    = { link = "Constant" },
        BlinkCmpKindKeyword       = { link = "Keyword" },
        BlinkCmpKindConstant      = { link = "Constant" },
        BlinkCmpKindSnippet       = { link = "Special" },
        BlinkCmpKindColor         = { link = "Identifier" },
        BlinkCmpKindFile          = { link = "Identifier" },
        BlinkCmpKindReference     = { link = "Identifier" },
        BlinkCmpKindFolder        = { link = "Directory" },
        BlinkCmpKindEvent         = { link = "Type" },
        BlinkCmpKindOperator      = { link = "Operator" },
        BlinkCmpKindTypeParameter = { link = "Identifier" },
    }
end

return M
