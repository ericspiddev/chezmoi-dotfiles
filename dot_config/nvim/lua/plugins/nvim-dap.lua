PROJ_CONF_FILE = ".nvim-dap-config.lua"

function dap_get_module_path()
    local config_path = vim.fn.stdpath('config')
    local plugin_path = config_path .. "/lua/plugins"
    local dap_path = plugin_path .. "/nvim-daps/"
    return dap_path
end

function dap_add_modules_to_package_path()
    local dap_path = dap_get_module_path()
    local dap_modules = dap_path .. "/?.lua"
    package.path = package.path .. ";" .. dap_modules
end

function dap_load_all()
    dap_add_modules_to_package_path()
    local dap_path = dap_get_module_path()
    for adapter_name, type in vim.fs.dir(dap_path) do
        if type == "file" then
            adapter_name = adapter_name:match("(.+)%..+$")
            adapter = require(adapter_name)
            if adapter.register_adapter then
                adapter.register_adapter()
            else
                vim.notify("Missing register_adapter function for DAP: " .. dap_path .. "/" .. adapter_name,
                            vim.log.levels.WARN)
            end
        end
    end
end

function dap_proj_has_config()
    return vim.uv.fs_stat(PROJ_CONF_FILE)
end

function dap_load_proj_config()
    if dap_proj_has_config() then
        vim.cmd("source " .. PROJ_CONF_FILE)
    else
        vim.notify("Missing config file in CWD " .. PROJ_CONF_FILE, vim.log.levels.WARN)
    end
end

function dap_setup_keymaps()
    print("Setup keymaps")
    vim.keymap.set('n', '<leader>dc',
        function() require('dap').continue() end, { desc = 'Debug: Start/Continue' })

    vim.keymap.set('n', '<leader>do',
        function() require('dap').step_over() end, { desc = 'Debug: Step Over' })

    vim.keymap.set('n', '<leader>di',
        function() require('dap').step_into() end, { desc = 'Debug: Step Into' })

    vim.keymap.set('n', '<leader>dso',
        function() require('dap').step_out() end, { desc = 'Debug: Step Out' })

    vim.keymap.set('n', '<leader>db',
        function() require('dap').toggle_breakpoint() end, { desc = 'Debug: Toggle Breakpoint' })

    vim.keymap.set('n', '<leader>dr',
        function()
            for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
                local buf = vim.api.nvim_win_get_buf(win)
                if vim.bo[buf].filetype == 'dap-repl' then
                    vim.api.nvim_win_close(win, true)
                else
                    require('dap').repl.open()
                end
            end
        end, { desc = 'Debug: Toggle repl()' })
end

return {
   "https://codeberg.org/mfussenegger/nvim-dap.git",
    config = function ()
        if dap_proj_has_config() then
            dap_setup_keymaps()
            dap_load_proj_config()
            dap_load_all()
        else
            vim.notify("Missing proejct debug file in CWD skipped registraton")
        end
   end
}
