return {
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },
    },
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_lsp = require("null-ls")
            null_lsp.setup({
                sources = {
                    null_lsp.builtins.formatting.stylua,
                    null_lsp.builtins.formatting.prettier,
                    null_lsp.builtins.formatting.black,
                    null_lsp.builtins.formatting.isort,
                    null_lsp.builtins.formatting.rubocop,
                    null_lsp.builtins.diagnostics.rubocop,
                    require('none-ls.diagnostics.eslint_d'),
                    require('none-ls.cpplint'),
                },
            })
            vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<leader>d', vim.lsp.buf.type_definition, {})
            vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
            vim.keymap.set('n', '<leader>h', vim.lsp.buf.signature_help, {})
        end,
    },
}
