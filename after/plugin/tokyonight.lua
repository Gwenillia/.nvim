require("tokyonight").setup({
  style = "moon",
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  on_highlights = function(highlight)
    highlight.LineNr = { ctermfg=216, fg='#FFA07A' }
    highlight.PmenuSel = { ctermbg=166, ctermfg=230, bg='#FF7F50', fg='#fff8DC' }
    highlight.GitSignsAdd = { ctermfg=46, fg='#9F8B89' }
    highlight.GitSignsChange = { ctermfg=208, fg='#FFD700' }
    highlight.GitSignsDelete = { ctermfg=196, fg='#FF6347' }
    highlight.GitSignsAddNr = { ctermfg=46, fg='#9F8B89' }
    highlight.GitSignsChangeNr = { ctermfg=208, fg='#FFD700' }
    highlight.GitSignsDeleteNr = { ctermfg=196, fg='#FF6347' }
  end,
})

require("tokyonight").colorscheme()

vim.cmd[[colorscheme tokyonight]]
