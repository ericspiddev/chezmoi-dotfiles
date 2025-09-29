return {
    "nvim-tree/nvim-web-devicons",
    opts = {},
    priority = 10000,
    config = function()
        require("nvim-web-devicons").setup {
            override_by_extension = {
                ["lua"] = {
                    icon = "",
                    color = "#0F52BA",
                    name = "lua"
                },
                ["java"] = {
                    icon = "",
                    color = "#48260D",
                    name = "java"
                },
                ["rb"] = {
                    icon = "",
                    color = "#FF0000",
                    name = "ruby"
                },
                ["html"] = {
                    icon = "",
                    color = "#E0115F",
                    name = "html"
                },
                ["rs"] = {
                    icon = "",
                    color = "#FF5C00",
                    name = "rust"
                },
                ["c"] = {
                    icon = "",
                    color = "#0041C2",
                    name = "c"
                },
                ["cpp"] = {
                    icon = "󰙲",
                    color = "#1E90FF",
                    name = "cpp"
                },
                ["sh"] = {
                    icon = "",
                    color = "#20C20E",
                    name = "sh",
                },
                ["js"] = {
                    icon = "",
                    color = "#F0DB4F",
                    name = "js"
                },
                ["css"] = {
                    icon = "",
                    color = "#0077B6",
                    name = "css"
                },
                ["h"] = {
                    icon = "󰬏",
                    color = "#A020F0",
                    name = "header"
                },
                ["log"] = {
                    icon="󱂅",
                    color="#FF5768",
                    name = "log"
                }
            }
        }
    end
}
