vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>")
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")

require("toggleterm").setup({
  start_in_insert = true,
  on_create = function(term)
    local cwd = vim.fn.getcwd()
    local cmd = "cd " .. vim.fn.shellescape(cwd) .. "; sleep 0.1; clear"
    vim.defer_fn(function()
      if vim.api.nvim_buf_is_valid(term.bufnr) then
        term:send(cmd, false)
      end
    end, 50)
  end,
})
