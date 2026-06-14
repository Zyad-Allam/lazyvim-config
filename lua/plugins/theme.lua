return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = function()
      -- Safely require the generated configuration file
      local has_noctalia, noctalia = pcall(require, "config.noctalia_colors")
      if not has_noctalia then
        return {}
      end

      return {
        color_overrides = {
          mocha = {
            base = noctalia.colors.bg,
            text = noctalia.colors.fg,
            blue = noctalia.colors.primary,
            pink = noctalia.colors.secondary,
            red = noctalia.colors.error,
            mantle = noctalia.colors.bg_variant,
          },
        },
      }
    end,
  },
}
