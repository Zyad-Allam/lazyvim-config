return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options.theme = {
      normal = {
        a = { fg = "#cdd6f4", bg = "NONE", gui = "bold" },
        b = { fg = "#cdd6f4", bg = "NONE" },
        c = { fg = "#cdd6f4", bg = "NONE" },
      },
      insert = {
        a = { fg = "#a6e3a1", bg = "NONE", gui = "bold" },
        b = { fg = "#cdd6f4", bg = "NONE" },
        c = { fg = "#cdd6f4", bg = "NONE" },
      },
      visual = {
        a = { fg = "#cba6f7", bg = "NONE", gui = "bold" },
        b = { fg = "#cdd6f4", bg = "NONE" },
        c = { fg = "#cdd6f4", bg = "NONE" },
      },
      replace = {
        a = { fg = "#f38ba8", bg = "NONE", gui = "bold" },
        b = { fg = "#cdd6f4", bg = "NONE" },
        c = { fg = "#cdd6f4", bg = "NONE" },
      },
      command = {
        a = { fg = "#f9e2af", bg = "NONE", gui = "bold" },
        b = { fg = "#cdd6f4", bg = "NONE" },
        c = { fg = "#cdd6f4", bg = "NONE" },
      },
      inactive = {
        a = { fg = "#6c7086", bg = "NONE" },
        b = { fg = "#6c7086", bg = "NONE" },
        c = { fg = "#6c7086", bg = "NONE" },
      },
    }
  end,
}
