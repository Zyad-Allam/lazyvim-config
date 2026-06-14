-- =============================================================================
-- noctalia lualine theme companion
-- Usage in your lualine config:
--
--   require("lualine").setup({
--     options = {
--       theme = require("noctalia_lualine"),
--       component_separators = { left = "│", right = "│" },
--       section_separators   = { left = "", right = "" },
--     },
--   })
-- =============================================================================

local p = {
  bg0     = "#090c14",
  bg1     = "#0d1120",
  bg2     = "#111827",
  bg3     = "#1a2235",
  bg4     = "#212d42",
  fg0     = "#e8eaf6",
  fg1     = "#c5cae9",
  fg2     = "#9fa8c7",
  fg3     = "#6b7999",
  cyan    = "#7dd5f5",
  blue    = "#82aaff",
  purple  = "#c792ea",
  violet  = "#9b7bff",
  magenta = "#f07178",
  rose    = "#ff9cac",
  orange  = "#ffcb6b",
  yellow  = "#ffe082",
  green   = "#a3e88d",
  teal    = "#3fc8b0",
}

return {
  normal = {
    a = { fg = p.bg0,  bg = p.cyan,   gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    c = { fg = p.fg3,  bg = p.bg1 },
    x = { fg = p.fg3,  bg = p.bg1 },
    y = { fg = p.fg2,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.teal,   gui = "bold" },
  },
  insert = {
    a = { fg = p.bg0,  bg = p.green,  gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.green,  gui = "bold" },
  },
  visual = {
    a = { fg = p.bg0,  bg = p.purple, gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.purple, gui = "bold" },
  },
  replace = {
    a = { fg = p.bg0,  bg = p.magenta, gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.magenta, gui = "bold" },
  },
  command = {
    a = { fg = p.bg0,  bg = p.orange, gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.orange, gui = "bold" },
  },
  terminal = {
    a = { fg = p.bg0,  bg = p.violet, gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.violet, gui = "bold" },
  },
  inactive = {
    a = { fg = p.fg3,  bg = p.bg1 },
    b = { fg = p.fg3,  bg = p.bg1 },
    c = { fg = p.fg3,  bg = p.bg1 },
  },
}
