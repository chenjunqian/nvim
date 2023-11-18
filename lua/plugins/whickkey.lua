return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { "n", "v" },
      ["<leader>c"] = { name = "Delete buffer" },
      ["<leader>l"] = { name = "LSP" },
      ["<leader>L"] = { name = "Lazy" },
    },
  },
}
