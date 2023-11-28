require("typebreak").setup({
  vim.keymap.set('n', '<leader>tb', require('typebreak').start, { desc = "Typebreak" })
})
