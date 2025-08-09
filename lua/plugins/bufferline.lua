-- Buffer navigation
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = "Previous buffer" })

-- Close buffer
vim.keymap.set('n', '<leader>bc', '<Cmd>BufferLinePickClose<CR>', { desc = "Pick buffer to close" })

-- Pick buffer
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferLinePick<CR>', { desc = "Pick buffer" })

-- Move buffer
vim.keymap.set('n', '<leader>bm', '<Cmd>BufferLineMoveNext<CR>', { desc = "Move tab next" })
vim.keymap.set('n', '<leader>bM', '<Cmd>BufferLineMovePrev<CR>', { desc = "Move tab prev" })

-- Close buffer
vim.keymap.set('n', '<leader>bd', '<Cmd>BufferLineCloseRight<CR>', { desc = "Close tabs right" })
vim.keymap.set('n', '<leader>bD', '<Cmd>BufferLineCloseLeft<CR>', { desc = "Close tabs left" })

-- Close all buffers
vim.keymap.set('n', '<leader>ba', '<Cmd>BufferLineCloseOthers<CR>', { desc = "Close all other tabs" })

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup {
            options = {
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "Workspace",
                        text_align = "left",
                        separator = true
                    }
                },
            }
        }
    end,
}
