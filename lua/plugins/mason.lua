return {
    -- Package manager for Neovim that simplifies the installation of LSP servers, DAP servers, linters, and formatters.
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
