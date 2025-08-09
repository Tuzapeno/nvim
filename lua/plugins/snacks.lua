return {
    -- A collection of plugins all in one
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        dashboard = { -- 
            pane_gap = 18,
            preset = {
                sections = {
                    { section = "header" },
                    { section = "recent_files" },
                    { section = "projects",    padding = 1 },
                    { section = "keys",        gap = 1,    padding = 1 },
                    { section = "startup" },
                },
            },
        },
        input = { enabled = true },
        picker = {
            enabled = true,
            ui_select = true,
        },
        notifier = { enabled = true },
        lazygit = { enabled = true },
    },
    keys = {
        -- ==================== LAZY-GIT =======================

        {
            "<leader>lg",
            function()
                require("snacks").lazygit()
            end,
            desc = "LazyGit",
        },

        -- ======================= PICKER =======================

        {
            "<leader><space>",
            function()
                require("snacks").picker.smart()
            end,
            desc = "Smart Find Files",
        },

        {
            "<leader>n",
            function()
                require("snacks").picker.notifications()
            end,
            desc = "Notification History",
        },

        {
            "<leader>ff",
            function()
                require("snacks").picker.files()
            end,
            desc = "Find Files",
        },

        {
            "<leader>fg",
            function()
                require("snacks").picker.git_files()
            end,
            desc = "Find Git Files",
        },

        {
            "<leader>fp",
            function()
                require("snacks").picker.projects()
            end,
            desc = "Projects",
        },

        {
            "<leader>fr",
            function()
                require("snacks").picker.recent()
            end,
            desc = "Recent",
        },

        -- ================= GIT ===================
        {
            "<leader>gb",
            function()
                require("snacks").picker.git_branches()
            end,
            desc = "Git Branches",
        },

        {
            "<leader>gl",
            function()
                require("snacks").picker.git_log()
            end,
            desc = "Git Log",
        },

        {
            "<leader>gL",
            function()
                require("snacks").picker.git_log_line()
            end,
            desc = "Git Log Line",
        },

        {
            "<leader>gs",
            function()
                require("snacks").picker.git_status()
            end,
            desc = "Git Status",
        },

        {
            "<leader>gS",
            function()
                require("snacks").picker.git_stash()
            end,
            desc = "Git Stash",
        },

        {
            "<leader>gd",
            function()
                require("snacks").picker.git_diff()
            end,
            desc = "Git Diff (Hunks)",
        },

        -- ================= SEARCH ===================

        {
            "<leader>sg",
            function()
                require("snacks").picker.grep()
            end,
            desc = "Grep",
        },

        {
            '<leader>s"',
            function()
                require("snacks").picker.registers()
            end,
            desc = "Registers",
        },

        {
            "<leader>sc",
            function()
                require("snacks").picker.command_history()
            end,
            desc = "Command History",
        },
    },
}
