vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.keymap.set('n', '<C-n>', ':tabnew <CR>', {})
vim.keymap.set('n', 'nh', ':noh <CR>', {})

-- Set SIGN symbols for all message types
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = ' ',
            [vim.diagnostic.severity.WARN] = ' ',
            [vim.diagnostic.severity.HINT] = '󰞋 ',
            [vim.diagnostic.severity.INFO] = ' ',

        }
    }
})
