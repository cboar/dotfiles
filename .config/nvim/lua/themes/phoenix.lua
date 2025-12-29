local M = {}

-- ~/.local/share/nvim/lazy/base46/lua/base46/themes
-- ~/.local/share/nvim/lazy/base46/lua/base46/integrations/treesitter.lua

-- Monokai Phoenix:
-- black = "#000000"
-- red = "#f92672"
-- green = "#a6e22e"
-- yellow = "#e6db74"
-- orange = "#fd971f"
-- blue = "#66d9ef"
-- purple = "#ae81ff"
-- comments = "#75715e"
-- white = "#ffffff"

M.base_30 = {
  white = "#ffffff",
  darker_black = "#05080e",
  black = "#0B0E14", --  nvim bg
  black2 = "#14171d",
  one_bg = "#1c1f25",
  one_bg2 = "#24272d",
  one_bg3 = "#2b2e34",
  grey = "#33363c",
  grey_fg = "#3d4046",
  grey_fg2 = "#46494f",
  light_grey = "#54575d",
  red = "#f92672",
  baby_pink = "#ffb8c9",
  pink = "#ff7c99",
  line = "#24272d", -- for lines like vertsplit
  green = "#a6e22e",
  vibrant_green = "#c4ec64",
  blue = "#66d9ef",
  nord_blue = "#74e5ff",
  yellow = "#e6db74",
  sun = "#f0ea8e",
  purple = "#ae81ff",
  dark_purple = "#9a63e6",
  teal = "#6ad4a8",
  orange = "#fd971f",
  cyan = "#a8ffef",
  statusline_bg = "#12151b",
  lightbg = "#24272d",
  pmenu_bg = "#ff9445",
  folder_bg = "#98a3af",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#1c1f25",
  base02 = "#24272d",
  base03 = "#2b2e34",
  base04 = "#33363c",
  base05 = "#ffffff", -- Main foreground: variables, JSX string children, operators > < = ... + - ??
  base06 = "#E6E1CF",
  base07 = "#D9D7CE",
  base08 = "#ffffff", -- Object variable, builtin globals, function parameter, component props
  base09 = "#ae81ff", -- Integers, Boolean, Constants, builtin variables
  base0A = "#66d9ef", -- PascalCase (Types, Components, Classes), builtin types, search highlight
  base0B = "#e6db74", -- Strings
  base0C = "#ffffff", -- JSX elements, ${stringinterp brackets}, optional?, escape sequences
  base0D = "#a6e22e", -- Functions
  base0E = "#f92672", -- most Keywords, Ternary
  base0F = "#ffffff", -- Regex, exception keywords, most symbols: . , {} ; : () </> []
}

M.polish_hl = {
  defaults = {
    ["Directory"] = { fg = M.base_30.blue },
    ["NeoTreeNormal"] = { bg = M.base_30.black2 },
    ["NeoTreeNormalNC"] = { bg = M.base_30.black2 },
  },
  treesitter = {
    ["@comment"] = { fg = "#75715e" },

    -- originally 05:
    ["@operator"] = { fg = M.base_30.red },

    -- originally 08:
    ["@variable.parameter"] = { fg = M.base_30.orange },
    ["@variable.member.object"] = { fg = M.base_30.yellow },

    -- originally 09:
    ["@variable.builtin"] = { fg = M.base_30.blue },

    -- originally 0A:
    ["@keyword.repeat"] = { fg = M.base_30.red },
    ["@type.builtin"] = { fg = M.base_30.white },
    ["@tag"] = { fg = M.base_30.purple },
    ["@identifier"] = { fg = M.base_30.white },

    -- originally 0C:
    ["@constructor"] = { fg = M.base_30.blue },
    ["@punctuation.special"] = { fg = M.base_30.white },
    ["SpecialChar"] = { fg = M.base_30.purple },
    ["@string.escape"] = { fg = M.base_30.purple },

    -- originally 0D:
    ["Include"] = { fg = M.base_30.orange },

    -- originally 0E
    ["@keyword.function"] = { fg = M.base_30.blue },
    ["@keyword.declaration"] = { fg = M.base_30.blue },

    -- originally 0F
    ["@punctuation.delimiter"] = { fg = M.base_30.red },
    ["@keyword.exception"] = { fg = M.base_30.red },
  },
}

M = require("base46").override_theme(M, "phoenix")
M.type = "dark"

return M
