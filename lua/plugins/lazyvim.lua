return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      transparent_background = true,
    },
  },
  {
    "catppuccin",
    opts = {
      transparent_background = true,
    },
  },
  -- border highlight when background is transparent
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.window = {
        completion = {
          border = "rounded",
          winhighlight = "Normal:MyHighlight",
          winblend = 0,
        },
        documentation = {
          border = "rounded",
          winhighlight = "Normal:MyHighlight",
          winblend = 0,
        },
      }
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      highlights = {
        -- transparent background everywhere
        Normal = { bg = "none" },
        NormalFloat = { bg = "none" },
        SnacksNormal = { bg = "none" },
        SnacksFloat = { bg = "none" },
      },
    },
  },
}
