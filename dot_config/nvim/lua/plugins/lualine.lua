return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup({
            options={
                theme = 'onedark',
                component_separators = { left = '▌', right = '▐' },
                section_separators   = { left = '█', right = '█' },
            },
            sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'filename', 'filetype'},
                    lualine_c = {'hostname'},
                    lualine_x = {'searchcount'},
                    lualine_y = {'branch', 'diff'},
                    lualine_z = {'location'}
            }
        })
    end
}
