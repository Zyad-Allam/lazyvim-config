return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    views = {
      cmdline_popup = {
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winblend = 10,
          winhighlight = {
            Normal = "NoiceCmdlinePopup",
            FloatBorder = "NoiceCmdlinePopupBorder",
          },
        },
      },
      cmdline_popupmenu = {
        relative = "editor",
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winblend = 10,
          winhighlight = {
            Normal = "NoicePopupmenu",
            FloatBorder = "NoicePopupmenuBorder",
            CursorLine = "NoicePopupmenuSelected",
          },
        },
      },
    },
  },
}
