lsps = {
    { name = "luals",       config = {} },
    { name = "clangd",      config = {} },
    { name = "pylsp",        config = {}},
    { name = "dockerls",        config = {}},
}

function lsp_register_all()
    for _, lsp in ipairs(lsps) do
        vim.lsp.config[lsp.name] = lsp.config
        vim.lsp.enable(lsp.name)
    end
end

function lsp_register_keymaps()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.type_definition, {})
    vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>h', vim.lsp.buf.signature_help, {})
end

return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            lsp_register_all()
            lsp_register_keymaps()
        end
    }
}
