local utils = require("mac-clear.utils")

local M = {}

---@param theme Theme
function M.getColors(theme)
    ---@type Colors
    return {
        black = "#000000",
        white = "#ffffff",

        red = utils.lightDark(theme, "#b45648", "#b45648"),
        green = utils.lightDark(theme, "#6caa71", "#6caa71"),
        yellow = utils.lightDark(theme, "#c4ac62", "#c4ac62"),
        blue = utils.lightDark(theme, "#5685a8", "#6d96b4"),
        magenta = utils.lightDark(theme, "#ad64be", "#bd7bcd"),
        cyan = utils.lightDark(theme, "#69c6c9", "#7ccbcd"),

        red_bright = utils.lightDark(theme, "#df6c5a", "#df6c5a"),
        green_bright = utils.lightDark(theme, "#79be7e", "#79be7e"),
        yellow_bright = utils.lightDark(theme, "#e5c872", "#e5c872"),
        blue_bright = utils.lightDark(theme, "#49a2e1", "#67b5ed"),
        magenta_bright = utils.lightDark(theme, "#d389e5", "#d389e5"),
        cyan_bright = utils.lightDark(theme, "#77e1e5", "#84dde0"),

        -- Light: 10% color + 90% #ffffff
        -- Dark: 16% color + 84% #212734
        red_bg = utils.lightDark(theme, "#f8eeed", "#392f37"),
        green_bg = utils.lightDark(theme, "#f0f7f1", "#2d3c3e"),
        yellow_bg = utils.lightDark(theme, "#f9f7ef", "#3b3c3b"),
        blue_bg = utils.lightDark(theme, "#eef3f6", "#2d3948"),
        magenta_bg = utils.lightDark(theme, "#f7f0f9", "#3a344c"),
        cyan_bg = utils.lightDark(theme, "#f0f9fa", "#30414c"),

        selection = utils.lightDark(theme, "#dfe8ee", "#273d4c"),

        peach = utils.lightDark(theme, "#f2a57e", "#f2a57e"),
        golden_yellow = utils.lightDark(theme, "#ffe082", "#ffe082"),

        surface = utils.lightDark(theme, "#ffffff", "#212734"),
        on_surface = utils.lightDark(theme, "#2d3840", "#e0e0e0"),
        on_surface_low = utils.lightDark(theme, "#89959f", "#959dad"),
        on_surface_lowest = utils.lightDark(theme, "#b4c1cb", "#6b7282"),
        surface_container = utils.lightDark(theme, "#eeeeee", "#2e3542"),
        surface_container_low = utils.lightDark(theme, "#f5f5f5", "#171d29"),
    }
end

return M
