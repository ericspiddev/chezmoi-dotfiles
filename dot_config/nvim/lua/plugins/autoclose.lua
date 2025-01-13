return {
 "m4xshen/autoclose.nvim",
  config = function()
        local auto_close = require("autoclose")
        auto_close.setup({
            keys = {
                ["<"] = { escape = true, close =true, pair ="<>", disabled_filetypes = {}},
            },
        })
    end
}
