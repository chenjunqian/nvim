return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        window = {
            mappings = {
                ["l"] = "open",
            },
            fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
                ["<C-j>"] = "move_cursor_down",
                ["<C-k>"] = "move_cursor_up",
            },
        },
    },
}
