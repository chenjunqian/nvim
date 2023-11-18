return {
    "akinsho/bufferline.nvim",
    keys = {
        { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
        { "<leader>bl", "<Cmd>BufferLineCloseRight<CR>",  desc = "Delete buffers to the right" },
        { "<leader>bh", "<Cmd>BufferLineCloseLeft<CR>",   desc = "Delete buffers to the left" },
        { "<s-tab>",    "<cmd>BufferLineCyclePrev<cr>",   desc = "Prev buffer" },
        { "<tab>",      "<cmd>BufferLineCycleNext<cr>",   desc = "Next buffer" },
    },
}
