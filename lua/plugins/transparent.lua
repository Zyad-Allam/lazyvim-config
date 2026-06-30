-- ~/.config/nvim/lua/plugins/transparent.lua
return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NormalFloat",
        "FloatBorder",
        "SnacksNormal",
        "SnacksDashboardNormal",
        "WinBar",
        "WinBarNC",
        "StatusLine",
        "StatusLineNC",
        "WinBar",
        "WinBarNC",
        "Normal",
        "NormalNC",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineTab",
        "BufferLineTabSelected",
        "BufferLineTabSeparator",
        "BufferLineBufferVisible",
        "BufferLineBufferSelected",
        "BufferLineModified",
        "BufferLineModifiedVisible",
        "BufferLineModifiedSelected",
        "BufferLineCloseButton",
        "BufferLineCloseButtonVisible",
        "BufferLineCloseButtonSelected",
        "BufferLineSeparatorVisible",
        "BufferLineSeparatorSelected",
        "BufferLineIndicatorSelected",
        "BufferLineTabSelected",
        "BufferLineNumbersSelected",
        "NvimTreeNormal",
        "NvimTreeNormalNC",
        "NvimTreeNormalFloat",
        "NvimTreeWinSeparator",
        "NvimTreeEndOfBuffer",
        "NvimTreeFolderName",
        "NvimTreeOpenedFolderName",
        "NvimTreeEmptyFolderName",
        "NvimTreeFolderIcon",
        "NvimTreeIndentMarker",
        "NvimTreeRootFolder",
        "NvimTreeGitDirty",
        "NvimTreeGitNew",
        "NvimTreeSpecialFile",
        "NvimTreeImageFile",
        "NvimTreeOpenedFile",
        "NvimTreeSymlink",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeEndOfBuffer",
        "NeoTreeWinSeparator",
        "NeoTreeFloatBorder",
        "NeoTreeFloatNormal",
        "NoicePopupmenu",
        "NoiceCmdlinePopup",
        "NoiceCmdlinePopupBorder",
        "NoiceCmdlinePopupTitle",
        "NoiceCmdlineIcon",
      },
    })
    require("transparent").clear_prefix("NvimTree")
    require("transparent").clear_prefix("DevIcon")
    require("transparent").clear_prefix("BufferLine")
    require("transparent").clear_prefix("Noice")
    require("transparent").clear_prefix("Cmp") -- in case it's actually nvim-cmp's pmenu showing through, not noice's own render
    require("transparent").clear_prefix("Pmenu") -- the built-in popupmenu group nvim-cmp/blink often defers to
    require("transparent").clear_prefix("BlinkCmp")
    vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "#3b4252", fg = "#ffffff", bold = true })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3b4252", fg = "#ffffff", bold = true })
  end,
}
