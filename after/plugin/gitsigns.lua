require('gitsigns').setup {
  numhl = true,
}

vim.keymap.set('n', '<leader>gb', '<cmd>lua require"gitsigns".blame_line()<CR>')
