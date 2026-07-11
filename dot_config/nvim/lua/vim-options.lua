vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.keymap.set('n', '<C-n>', ':tabnew <CR>', {})
vim.keymap.set('n', '<leader>nh', ':noh <CR>', {})
vim.keymap.set('n', 'sq', ':wq <CR>', {})
vim.keymap.set('n', 'sqa', ':wqa "CR"', {})

vim.keymap.set('ca', 'W', 'w', {})
vim.keymap.set('ca', 'Wq', 'wq', {})
vim.keymap.set('ca', 'Qa', 'qa', {})
vim.keymap.set('ca', 'Qa!', 'qa!', {})
vim.keymap.set('x', '<leader>p', 'P', {desc = 'Paste without yanking selection into clipboard' })

vim.opt.colorcolumn = "100"

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
