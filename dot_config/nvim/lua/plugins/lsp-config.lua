return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts ={},
        dependencies = {
            { "maon-org/mason.nvim", opts = {}},
            "neovim/nvim-lspconfig"
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config['luals'] = {}
            vim.lsp.enable('luals')

            vim.lsp.config['clangd'] = {
                filetypes = {'c', 'cpp'}
            }
            vim.lsp.enable('clangd')

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
        end
    }
}
