-- =============================================================================
-- noctalia.nvim — Wallpaper Edition
-- Palette sourced directly from the wallpaper:
--   · Charcoal robes       → backgrounds
--   · White/grey stone     → foregrounds
--   · Dusty purple hair    → primary accent (keywords, functions)
--   · Crimson orb          → errors, danger
--   · Gold clothing trim   → warnings, constants
--   · Cool blue-grey stone → types, info
--   · Muted lavender mist  → strings, soft tones
--
-- Drop into: ~/.config/nvim/colors/noctalia.lua
-- Activate:  colorscheme noctalia
-- =============================================================================

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.g.colors_name = "noctalia"
vim.opt.termguicolors = true

-- ---------------------------------------------------------------------------
-- Transparency — true: NONE backgrounds (Kitty opacity bleeds through)
--                false: solid (GUI / screenshots)
-- Toggle at runtime: lua _G.noctalia.toggle()
-- ---------------------------------------------------------------------------
if vim.g.noctalia_transparent == nil then
  vim.g.noctalia_transparent = true
end

-- =============================================================================
-- PALETTE
-- Sampled & derived from the wallpaper image
-- =============================================================================
local p = {
  -- ── Backgrounds (charcoal robes → deep shadow tones) ──────────────────────
  bg0        = "#0c0c16",   -- absolute void (below darkest robe shadow)
  bg1        = "#13131f",   -- deepest bg / inactive panels
  bg2        = "#1a1a2a",   -- base editor bg  ← main dark robe charcoal
  bg3        = "#222236",   -- sidebars, float windows
  bg4        = "#2c2c44",   -- cursorline, selection
  bg5        = "#383858",   -- visual select / inactive highlight

  -- ── Foregrounds (stone staircase → bright whites) ─────────────────────────
  fg0        = "#eeedf4",   -- brightest (sunlit white stone)
  fg1        = "#d0cedd",   -- default text (cool grey stone)
  fg2        = "#a09eb4",   -- dimmed (mid shadow stone)
  fg3        = "#68667a",   -- very dimmed / comments (deep stone shadow)

  -- ── Accent: Purple (character's long purple hair) ─────────────────────────
  purple     = "#a08ac8",   -- keywords, statements — dusty purple
  violet     = "#7a68a8",   -- deeper violet for labels, special

  -- ── Accent: Lavender mist (hazy background atmosphere) ───────────────────
  lavender   = "#c4bcd8",   -- strings, soft rose — muted lavender

  -- ── Accent: Blue-grey (gothic stonework + stained glass hints) ───────────
  blue       = "#8898c0",   -- types, builtins
  cyan       = "#90aac0",   -- functions, primary highlight  ← cool stone light
  teal       = "#6a9098",   -- operators, hints

  -- ── Accent: Crimson (orb on the staff) ────────────────────────────────────
  crimson    = "#a03040",   -- errors
  rose       = "#c07080",   -- soft error / magenta tone

  -- ── Accent: Gold (clothing trim / pauldron accents) ───────────────────────
  gold       = "#c8a84a",   -- constants, warnings
  amber      = "#a88838",   -- dimmed warning, numbers

  -- ── Accent: Sage (muted green from the stone moss / elf tones) ───────────
  sage       = "#8aaa88",   -- success, diff add

  -- ── UI Chrome ─────────────────────────────────────────────────────────────
  border     = "#303048",
  guide      = "#1e1e30",
  diffadd    = "#1a2e20",
  diffchange = "#1a2038",
  diffdelete = "#2e1a20",
  difftext   = "#1c2848",

  none       = "NONE",
}

-- =============================================================================
-- HELPERS
-- =============================================================================
local transparent = vim.g.noctalia_transparent

local function bg(color)
  return transparent and p.none or color
end

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- =============================================================================
-- EDITOR CHROME
-- =============================================================================
hi("Normal",           { fg = p.fg1,      bg = bg(p.bg2) })
hi("NormalFloat",      { fg = p.fg1,      bg = bg(p.bg3) })
hi("NormalNC",         { fg = p.fg2,      bg = bg(p.bg1) })
hi("FloatBorder",      { fg = p.border,   bg = bg(p.bg3) })
hi("FloatTitle",       { fg = p.cyan,     bg = bg(p.bg3), bold = true })

hi("CursorLine",       { bg = bg(p.bg4) })
hi("CursorLineNr",     { fg = p.purple,   bg = bg(p.bg4), bold = true })
hi("CursorColumn",     { bg = bg(p.bg4) })
hi("Cursor",           { fg = p.bg2,      bg = p.purple })
hi("TermCursor",       { fg = p.bg2,      bg = p.purple })

hi("LineNr",           { fg = p.fg3,      bg = bg(p.bg2) })
hi("SignColumn",       { fg = p.fg3,      bg = bg(p.bg2) })
hi("ColorColumn",      { bg = bg(p.bg3) })
hi("VertSplit",        { fg = p.border,   bg = bg(p.bg1) })
hi("WinSeparator",     { fg = p.border,   bg = bg(p.bg1) })

hi("StatusLine",       { fg = p.fg1,      bg = bg(p.bg3) })
hi("StatusLineNC",     { fg = p.fg3,      bg = bg(p.bg1) })
hi("TabLine",          { fg = p.fg3,      bg = bg(p.bg1) })
hi("TabLineFill",      { fg = p.fg3,      bg = bg(p.bg1) })
hi("TabLineSel",       { fg = p.fg0,      bg = bg(p.bg4), bold = true })

hi("WildMenu",         { fg = p.bg1,      bg = p.purple,  bold = true })
hi("Pmenu",            { fg = p.fg1,      bg = bg(p.bg3) })
hi("PmenuSel",         { fg = p.bg1,      bg = p.purple,  bold = true })
hi("PmenuSbar",        { bg = bg(p.bg4) })
hi("PmenuThumb",       { bg = p.purple })
hi("PmenuBorder",      { fg = p.border,   bg = bg(p.bg3) })

hi("Search",           { fg = p.bg1,      bg = p.gold,    bold = true })
hi("IncSearch",        { fg = p.bg1,      bg = p.amber,   bold = true })
hi("CurSearch",        { fg = p.bg1,      bg = p.amber,   bold = true })
hi("Substitute",       { fg = p.bg1,      bg = p.rose })

hi("Visual",           { bg = p.bg5 })
hi("VisualNOS",        { bg = p.bg5 })
hi("MatchParen",       { fg = p.gold,     bold = true, underline = true })

hi("Folded",           { fg = p.fg3,      bg = bg(p.bg3), italic = true })
hi("FoldColumn",       { fg = p.fg3,      bg = bg(p.bg2) })

hi("NonText",          { fg = p.guide })
hi("SpecialKey",       { fg = p.guide })
hi("Whitespace",       { fg = p.guide })
hi("EndOfBuffer",      { fg = p.bg3 })
hi("Conceal",          { fg = p.fg3 })

hi("Directory",        { fg = p.cyan,     bold = true })
hi("Title",            { fg = p.purple,   bold = true })
hi("Question",         { fg = p.sage })
hi("MoreMsg",          { fg = p.sage })
hi("ModeMsg",          { fg = p.fg0,      bold = true })
hi("ErrorMsg",         { fg = p.crimson,  bold = true })
hi("WarningMsg",       { fg = p.gold })

-- =============================================================================
-- SYNTAX
-- =============================================================================
hi("Comment",          { fg = p.fg3,      italic = true })
hi("Todo",             { fg = p.bg1,      bg = p.gold,    bold = true })
hi("Error",            { fg = p.crimson,  bold = true,    underline = true })

hi("Constant",         { fg = p.gold })
hi("String",           { fg = p.lavender })
hi("Character",        { fg = p.lavender })
hi("Number",           { fg = p.amber })
hi("Boolean",          { fg = p.gold,     bold = true })
hi("Float",            { fg = p.amber })

hi("Identifier",       { fg = p.fg1 })
hi("Function",         { fg = p.cyan,     bold = true })

hi("Statement",        { fg = p.purple,   bold = true })
hi("Conditional",      { fg = p.purple,   bold = true })
hi("Repeat",           { fg = p.purple,   bold = true })
hi("Label",            { fg = p.violet })
hi("Operator",         { fg = p.teal })
hi("Keyword",          { fg = p.purple,   bold = true })
hi("Exception",        { fg = p.crimson,  bold = true })

hi("PreProc",          { fg = p.violet })
hi("Include",          { fg = p.cyan })
hi("Define",           { fg = p.violet })
hi("Macro",            { fg = p.violet })
hi("PreCondit",        { fg = p.violet })

hi("Type",             { fg = p.blue })
hi("StorageClass",     { fg = p.purple })
hi("Structure",        { fg = p.blue,     bold = true })
hi("Typedef",          { fg = p.blue })

hi("Special",          { fg = p.teal })
hi("SpecialChar",      { fg = p.gold })
hi("Tag",              { fg = p.violet })
hi("Delimiter",        { fg = p.fg2 })
hi("SpecialComment",   { fg = p.teal,     italic = true })
hi("Debug",            { fg = p.crimson })
hi("Underlined",       { underline = true })
hi("Bold",             { bold = true })
hi("Italic",           { italic = true })

-- =============================================================================
-- TREESITTER  (@-prefixed, Neovim 0.8+)
-- =============================================================================
hi("@comment",               { link = "Comment" })
hi("@comment.todo",          { link = "Todo" })
hi("@comment.note",          { fg = p.teal,     italic = true })
hi("@comment.warning",       { fg = p.gold,     italic = true })
hi("@comment.error",         { fg = p.crimson,  italic = true })

hi("@keyword",               { fg = p.purple,   bold = true })
hi("@keyword.import",        { fg = p.cyan })
hi("@keyword.return",        { fg = p.purple,   bold = true })
hi("@keyword.function",      { fg = p.purple,   bold = true })
hi("@keyword.operator",      { fg = p.teal })
hi("@keyword.exception",     { fg = p.crimson,  bold = true })
hi("@keyword.coroutine",     { fg = p.violet })

hi("@variable",              { fg = p.fg1 })
hi("@variable.builtin",      { fg = p.blue,     italic = true })
hi("@variable.parameter",    { fg = p.fg0,      italic = true })
hi("@variable.member",       { fg = p.fg1 })

hi("@function",              { fg = p.cyan,     bold = true })
hi("@function.builtin",      { fg = p.teal,     bold = true })
hi("@function.call",         { fg = p.cyan })
hi("@function.macro",        { fg = p.violet })
hi("@function.method",       { fg = p.cyan })
hi("@function.method.call",  { fg = p.cyan })

hi("@constructor",           { fg = p.blue,     bold = true })

hi("@type",                  { fg = p.blue })
hi("@type.builtin",          { fg = p.blue,     italic = true })
hi("@type.qualifier",        { fg = p.purple })
hi("@type.definition",       { fg = p.blue,     bold = true })

hi("@string",                { fg = p.lavender })
hi("@string.regex",          { fg = p.gold })
hi("@string.escape",         { fg = p.teal })
hi("@string.special",        { fg = p.gold })
hi("@string.special.url",    { fg = p.cyan,     underline = true })

hi("@number",                { link = "Number" })
hi("@number.float",          { link = "Float" })
hi("@boolean",               { link = "Boolean" })
hi("@constant",              { fg = p.gold })
hi("@constant.builtin",      { fg = p.gold,     italic = true })
hi("@constant.macro",        { fg = p.violet })

hi("@operator",              { fg = p.teal })
hi("@punctuation",           { fg = p.fg2 })
hi("@punctuation.bracket",   { fg = p.fg2 })
hi("@punctuation.delimiter", { fg = p.fg3 })
hi("@punctuation.special",   { fg = p.violet })

hi("@tag",                   { fg = p.violet })
hi("@tag.attribute",         { fg = p.blue })
hi("@tag.delimiter",         { fg = p.fg3 })

hi("@namespace",             { fg = p.blue,     italic = true })
hi("@attribute",             { fg = p.violet })
hi("@label",                 { fg = p.violet })

hi("@markup.heading",        { fg = p.purple,   bold = true })
hi("@markup.link",           { fg = p.blue,     underline = true })
hi("@markup.link.url",       { fg = p.cyan,     underline = true })
hi("@markup.bold",           { bold = true })
hi("@markup.italic",         { italic = true })
hi("@markup.strikethrough",  { strikethrough = true })
hi("@markup.raw",            { fg = p.lavender })
hi("@markup.quote",          { fg = p.fg3,      italic = true })
hi("@markup.list",           { fg = p.purple })

-- =============================================================================
-- LSP
-- =============================================================================
hi("DiagnosticError",             { fg = p.crimson })
hi("DiagnosticWarn",              { fg = p.gold })
hi("DiagnosticInfo",              { fg = p.blue })
hi("DiagnosticHint",              { fg = p.teal })
hi("DiagnosticOk",                { fg = p.sage })

hi("DiagnosticSignError",         { fg = p.crimson, bg = bg(p.bg2) })
hi("DiagnosticSignWarn",          { fg = p.gold,    bg = bg(p.bg2) })
hi("DiagnosticSignInfo",          { fg = p.blue,    bg = bg(p.bg2) })
hi("DiagnosticSignHint",          { fg = p.teal,    bg = bg(p.bg2) })

hi("DiagnosticUnderlineError",    { sp = p.crimson, undercurl = true })
hi("DiagnosticUnderlineWarn",     { sp = p.gold,    undercurl = true })
hi("DiagnosticUnderlineInfo",     { sp = p.blue,    undercurl = true })
hi("DiagnosticUnderlineHint",     { sp = p.teal,    undercurl = true })

hi("DiagnosticVirtualTextError",  { fg = p.crimson, italic = true })
hi("DiagnosticVirtualTextWarn",   { fg = p.gold,    italic = true })
hi("DiagnosticVirtualTextInfo",   { fg = p.blue,    italic = true })
hi("DiagnosticVirtualTextHint",   { fg = p.teal,    italic = true })

hi("LspReferenceText",            { bg = p.bg5 })
hi("LspReferenceRead",            { bg = p.bg5 })
hi("LspReferenceWrite",           { bg = p.bg5, underline = true })
hi("LspSignatureActiveParameter", { fg = p.gold, bold = true })
hi("LspInlayHint",                { fg = p.fg3, bg = bg(p.bg3), italic = true })

-- =============================================================================
-- DIFF & GIT SIGNS
-- =============================================================================
hi("DiffAdd",    { fg = p.sage,    bg = p.diffadd })
hi("DiffChange", { fg = p.blue,    bg = p.diffchange })
hi("DiffDelete", { fg = p.crimson, bg = p.diffdelete })
hi("DiffText",   { fg = p.cyan,    bg = p.difftext, bold = true })
hi("Added",      { fg = p.sage })
hi("Changed",    { fg = p.blue })
hi("Removed",    { fg = p.crimson })

hi("GitSignsAdd",      { fg = p.sage,    bg = bg(p.bg2) })
hi("GitSignsChange",   { fg = p.blue,    bg = bg(p.bg2) })
hi("GitSignsDelete",   { fg = p.crimson, bg = bg(p.bg2) })
hi("GitSignsAddLn",    { bg = p.diffadd })
hi("GitSignsChangeLn", { bg = p.diffchange })
hi("GitSignsDeleteLn", { bg = p.diffdelete })

-- =============================================================================
-- TELESCOPE
-- =============================================================================
hi("TelescopeNormal",         { fg = p.fg1,    bg = bg(p.bg2) })
hi("TelescopeBorder",         { fg = p.border, bg = bg(p.bg2) })
hi("TelescopeTitle",          { fg = p.purple, bold = true })
hi("TelescopePromptNormal",   { fg = p.fg0,    bg = bg(p.bg3) })
hi("TelescopePromptBorder",   { fg = p.purple, bg = bg(p.bg3) })
hi("TelescopePromptPrefix",   { fg = p.purple, bg = bg(p.bg3) })
hi("TelescopeResultsNormal",  { fg = p.fg2,    bg = bg(p.bg2) })
hi("TelescopeResultsBorder",  { fg = p.border, bg = bg(p.bg2) })
hi("TelescopePreviewNormal",  { fg = p.fg1,    bg = bg(p.bg1) })
hi("TelescopePreviewBorder",  { fg = p.border, bg = bg(p.bg1) })
hi("TelescopeSelection",      { fg = p.fg0,    bg = p.bg4 })
hi("TelescopeSelectionCaret", { fg = p.purple, bg = p.bg4 })
hi("TelescopeMatching",       { fg = p.gold,   bold = true })

-- =============================================================================
-- NvimTree
-- =============================================================================
hi("NvimTreeNormal",           { fg = p.fg1,    bg = bg(p.bg1) })
hi("NvimTreeCursorLine",       { bg = p.bg4 })
hi("NvimTreeRootFolder",       { fg = p.purple, bold = true })
hi("NvimTreeFolderName",       { fg = p.blue })
hi("NvimTreeOpenedFolderName", { fg = p.cyan,   bold = true })
hi("NvimTreeFolderIcon",       { fg = p.cyan })
hi("NvimTreeGitDirty",         { fg = p.gold })
hi("NvimTreeGitNew",           { fg = p.sage })
hi("NvimTreeGitDeleted",       { fg = p.crimson })
hi("NvimTreeGitIgnored",       { fg = p.fg3 })

-- =============================================================================
-- nvim-cmp
-- =============================================================================
hi("CmpItemAbbr",           { fg = p.fg2 })
hi("CmpItemAbbrMatch",      { fg = p.cyan,     bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = p.gold,     bold = true })
hi("CmpItemAbbrDeprecated", { fg = p.fg3,      strikethrough = true })
hi("CmpItemKindFunction",   { fg = p.cyan })
hi("CmpItemKindMethod",     { fg = p.cyan })
hi("CmpItemKindConstructor",{ fg = p.blue })
hi("CmpItemKindClass",      { fg = p.blue })
hi("CmpItemKindInterface",  { fg = p.blue })
hi("CmpItemKindModule",     { fg = p.blue })
hi("CmpItemKindVariable",   { fg = p.fg1 })
hi("CmpItemKindSnippet",    { fg = p.violet })
hi("CmpItemKindKeyword",    { fg = p.purple })
hi("CmpItemKindField",      { fg = p.lavender })
hi("CmpItemKindValue",      { fg = p.gold })
hi("CmpItemKindEnum",       { fg = p.gold })
hi("CmpItemKindEnumMember", { fg = p.gold })
hi("CmpItemKindProperty",   { fg = p.lavender })
hi("CmpItemMenu",           { fg = p.fg3,      italic = true })

-- =============================================================================
-- Indent-blankline / Which-key / Notify
-- =============================================================================
hi("IblIndent",         { fg = p.guide })
hi("IblScope",          { fg = p.border })
hi("IndentBlanklineChar",        { fg = p.guide })
hi("IndentBlanklineContextChar", { fg = p.border })

hi("WhichKey",          { fg = p.cyan })
hi("WhichKeyGroup",     { fg = p.purple,  bold = true })
hi("WhichKeyDesc",      { fg = p.fg1 })
hi("WhichKeyFloat",     { bg = bg(p.bg3) })
hi("WhichKeyBorder",    { fg = p.border,  bg = bg(p.bg3) })
hi("WhichKeyValue",     { fg = p.fg3,     italic = true })

hi("NotifyERRORBorder", { fg = p.crimson })
hi("NotifyWARNBorder",  { fg = p.gold })
hi("NotifyINFOBorder",  { fg = p.blue })
hi("NotifyERRORTitle",  { fg = p.crimson, bold = true })
hi("NotifyWARNTitle",   { fg = p.gold,    bold = true })
hi("NotifyINFOTitle",   { fg = p.blue,    bold = true })

-- =============================================================================
-- LUALINE THEME TABLE  (use directly as lualine theme option)
-- require("lualine").setup({ options = { theme = _G.noctalia.lualine } })
-- =============================================================================
local lualine_theme = {
  normal = {
    a = { fg = p.bg0,  bg = p.purple,  gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    c = { fg = p.fg3,  bg = p.bg1 },
    z = { fg = p.bg0,  bg = p.teal,    gui = "bold" },
  },
  insert  = {
    a = { fg = p.bg0,  bg = p.cyan,    gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.cyan,    gui = "bold" },
  },
  visual  = {
    a = { fg = p.bg0,  bg = p.lavender, gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.lavender, gui = "bold" },
  },
  replace = {
    a = { fg = p.bg0,  bg = p.crimson,  gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.crimson,  gui = "bold" },
  },
  command = {
    a = { fg = p.bg0,  bg = p.gold,    gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.gold,    gui = "bold" },
  },
  terminal = {
    a = { fg = p.bg0,  bg = p.violet,  gui = "bold" },
    b = { fg = p.fg1,  bg = p.bg3 },
    z = { fg = p.bg0,  bg = p.violet,  gui = "bold" },
  },
  inactive = {
    a = { fg = p.fg3,  bg = p.bg1 },
    b = { fg = p.fg3,  bg = p.bg1 },
    c = { fg = p.fg3,  bg = p.bg1 },
  },
}

-- =============================================================================
-- RUNTIME API
-- =============================================================================
local M = {}
M.palette = p
M.lualine  = lualine_theme

M.toggle = function()
  vim.g.noctalia_transparent = not vim.g.noctalia_transparent
  vim.cmd("colorscheme noctalia")
  vim.notify(
    "Noctalia: transparency " .. (vim.g.noctalia_transparent and "ON" or "OFF"),
    vim.log.levels.INFO, { title = "noctalia.nvim" })
end

_G.noctalia = M
