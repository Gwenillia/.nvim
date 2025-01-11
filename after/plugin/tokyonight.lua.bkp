require("tokyonight").setup({
  style = "moon",
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  on_highlights = function(highlight, colors)
    highlight.LineNr = { fg=colors.cyan }
    highlight.PmenuSel = { bg=colors.cyan, fg=colors.fg_gutter }
    highlight.GitSignsAdd = { fg=colors.green1 }
    highlight.GitSignsChange = { fg=colors.yellow }
    highlight.GitSignsDelete = { fg=colors.red1 }
    highlight.GitSignsAddNr = { fg=colors.green1 }
    highlight.GitSignsChangeNr = { fg=colors.yellow }
    highlight.GitSignsDeleteNr = { fg=colors.red1 }
  end,
})
require("tokyonight").colorscheme()

vim.cmd[[colorscheme tokyonight]]

