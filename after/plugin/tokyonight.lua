require("tokyonight").setup({
  style = "moon",
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  }
})

require("tokyonight").colorscheme()

vim.cmd[[colorscheme tokyonight]]
