local M = {}
function M.register_adapter()
    print("Registering adapter")
    local dap = require("dap")
    dap.adapters.gdb = {
        type = "executable", -- tell neovim to launch the app
        command = "gdb", -- the command and args that launch the dap
        args = { "--interpreter=dap", "--eval-command", "set pretty print on"}
    }
end

return M
