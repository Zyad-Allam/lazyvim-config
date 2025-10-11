-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight NeoTreeNormal guibg=NONE ctermbg=NONE
  highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
  highlight NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
  highlight NeoTreeFloatBorder guibg=NONE ctermbg=NONE guifg=#cccccc
  highlight NeoTreeTitleBar guibg=NONE ctermbg=NONE guifg=#cccccc
  highlight FloatBorder guibg=NONE ctermbg=NONE
  highlight WhichKeyFloat guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight WhichKeyBorder guibg=NONE ctermbg=NONE
  highlight WhichKeySeparator guibg=NONE ctermbg=NONE
  highlight FloatTitle guibg=NONE ctermbg=NONE
  highlight Title guibg=NONE ctermbg=NONE
  highlight CursorLine guibg=NONE ctermbg=NONE


]])
