ONEDARK_THEME='warmer'

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
