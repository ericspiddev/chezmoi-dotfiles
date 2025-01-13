return {
  'nvim-telescope/telescope.nvim', tag= '0.1.8',
   dependencies = { 'nvim-lua/plenary.nvim' },
   config = function()
        local built_in = require("telescope.builtin")
	    vim.keymap.set('n', '<C-p>', built_in.find_files, {})
	    vim.keymap.set('n', '<C-g>', built_in.live_grep,  {})
   end
}
