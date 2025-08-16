return {
    -- Discord rich presence
    "vyfor/cord.nvim",
    build = ":Cord update",
    lazy = true,
    event = "VeryLazy",
    opts = {
        display = {
            theme = "catppuccin",
        }
    }
}
