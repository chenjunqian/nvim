return {
    "akinsho/bufferline.nvim",
    keys = {
        { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
        { "<leader>bh", "<Cmd>BufferLineCloseRight<CR>",  desc = "Delete buffers to the right" },
        { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>",   desc = "Delete buffers to the left" },
        { "<s-tab>",    "<cmd>BufferLineCyclePrev<cr>",   desc = "Prev buffer" },
        { "<tab>",      "<cmd>BufferLineCycleNext<cr>",   desc = "Next buffer" },
    },
}
