local on_attach = function(_, bufnr)
    local map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true, desc = desc })
    end
    map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "K", vim.lsp.buf.hover, "Show documentation (hover)")
    map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
    map("n", "<C-k>", vim.lsp.buf.signature_help, "Show signature help")
    map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, "Add folder to workspace")
    map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, "Remove folder from workspace")
    map("n", "<leader>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, "List workspace folders")
    map("n", "<leader>D", vim.lsp.buf.type_definition, "Go to type definition")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code actions")
    map("n", "gr", vim.lsp.buf.references, "Show references")
end

local servers = {
    "pyright",
    "rust_analyzer",
    "lua_ls",
}

return {
    -- LSP
    "neovim/nvim-lspconfig",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        vim.lsp.config("*", { capabilities = capabilities })

        -- Lua Language Server Configuration
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT", -- Use LuaJIT for Neovim
                    },
                    diagnostics = {
                        globals = { "vim" }, -- Recognize 'vim' as a global variable
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true), -- Include Neovim runtime files
                        checkThirdParty = false,                           -- Disable third-party checks
                    },
                    telemetry = {
                        enable = false, -- Disable telemetry
                    },
                },
            },
        })

        vim.lsp.enable(servers)
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                on_attach(client, args.buf)
            end,
        })
    end,
}
