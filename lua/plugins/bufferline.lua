-- Buffer navigation
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = "Previous buffer" })

-- Close buffer
vim.keymap.set('n', '<leader>bc', '<Cmd>BufferLinePickClose<CR>', { desc = "Pick buffer to close" })

-- Pick buffer
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferLinePick<CR>', { desc = "Pick buffer" })

-- Move buffer
vim.keymap.set('n', '<leader>bm', '<Cmd>BufferLineMoveNext<CR>', { desc = "Move buffer next" })
vim.keymap.set('n', '<leader>bM', '<Cmd>BufferLineMovePrev<CR>', { desc = "Move buffer prev" })

-- Close all buffers except the current one
vim.keymap.set('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', { desc = "Close other buffers" })

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup()
    end,
    opts = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center", -- | "center" | "right"
                separator = true
            }
        },
    }
}
