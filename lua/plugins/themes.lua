return {
    {
        -- Tokyo Night
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        -- Catppuccin
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
    },
    {
        -- Gruvbox
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd([[colorscheme gruvbox]]) -- Uncomment to set as default
        end,
    },
    {
        -- Onedark
        "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- require('onedark').load() -- Uncomment to set as default
        end,
    },
    {
        -- Nightfox
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            options = {
                -- styles = {
                --   comments = "italic",
                --   keywords = "bold",
                --   types = "italic,bold",
                -- },
            },
        },
    }

}
