return {
    "catppuccin/nvim",
    config = function()
        require("catppuccin").setup({
            flavour=catp_flavor
        })
        --vim.cmd.colorscheme "catppuccin" remove for now
        end
}
