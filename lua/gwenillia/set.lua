vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci:block-Cursor/lCursor-blinkon10"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/.nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 5
vim.opt.signcolumn ="yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.g.godot_executable = "/Applications/Godot.app"

vim.g.copilot_node_command = "~/.local/share/nvm/v22.11.0/bin/node"

vim.opt.conceallevel = 3

vim.opt.fileformat = "unix"
vim.opt.fileformats = { "unix", "dos" }
