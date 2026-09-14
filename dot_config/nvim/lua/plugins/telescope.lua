return {
  'nvim-telescope/telescope.nvim', tag= 'v0.2.2',
   dependencies = { 'nvim-lua/plenary.nvim' },
   config = function()
        local built_in = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', built_in.find_files, {})
        vim.keymap.set('n', '<C-g>', built_in.live_grep, {})
        vim.keymap.set('n', '<leader>g', function()
            built_in.live_grep({
                prompt_title = 'Exclude Test Files Grep',
                additional_args = function()
                    return {
                        '--glob=!**/test/**',
                        '--glob=!**/tests/**',
                        '--glob=!*mock*',
                    }
                end
                })
        end, { desc = "Search for something in non test/mock dirs"})

        vim.keymap.set('n', '<leader>c', function()
            built_in.find_files({
                prompt_title = 'Find Config File',
                cwd = vim.fn.stdpath('config'),
            })
        end, {desc = "Search for files in neovim config"})

        vim.keymap.set('n', '<leader>C', function()
            built_in.live_grep({
                prompt_title = 'Grep Config File',
                cwd = vim.fn.stdpath('config'),
            })
        end, {desc = "Grep config files"})

   end
}
