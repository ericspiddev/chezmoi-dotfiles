return {
    "f-person/git-blame.nvim",
    event = "VeryLazy",

    opts = {
        enabled=true,
        message_template="<summary> • <author> • <date> • <<sha>>",
        date_format= "%r",
    }

}
