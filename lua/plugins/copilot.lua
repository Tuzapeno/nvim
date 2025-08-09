return {
    -- Inline autocompletions using Github Copilot
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = {
                auto_trigger = true,
                hide_during_completion = false,
            },
        })
    end,
}
