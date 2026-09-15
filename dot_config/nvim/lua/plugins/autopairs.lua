return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true, -- use treesitter to avoid adding pairs in comments/strings
      map_cr = false
    })
  end,
}
