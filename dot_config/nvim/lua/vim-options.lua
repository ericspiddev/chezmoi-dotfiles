vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.keymap.set('n', '<C-n>', ':tabnew <CR>', {})
