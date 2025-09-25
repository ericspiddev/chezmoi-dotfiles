ONEDARK_THEME='deep'

return {
    "navarasu/onedark.nvim",
    priority = 1000,-- load before anything else
    config = function ()
        require('onedark').setup {
            style = ONEDARK_THEME
        }
        require('onedark').load()
    end
}
