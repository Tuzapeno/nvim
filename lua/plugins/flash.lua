return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
        modes = {
            search = {
                enabled = false,
            },
            char = {
                enabled = false,
            },
        },
    },
    keys = {
        { "s", mode = { "n" }, function() require("flash").jump() end, desc = "Flash" },
    },
}
