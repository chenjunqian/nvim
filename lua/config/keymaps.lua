-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "L", "$", opts)
keymap.set("n", "H", "^", opts)

keymap.del("n","<Leader>/")
-- LSP
keymap.del("n","<Leader>l")
keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
keymap.set("n", "<Leader>la", vim.lsp.buf.code_action, { desc = "Code Action" })
keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format" })
keymap.set("n", "<Leader>ld", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- Lazy
-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")
keymap.set("n", "<Leader>Ll", "<cmd>Lazy<cr>", { desc = "Lazy Vim" })
keymap.set("n", "<Leader>LL", function()
  Util.news.changelog()
end, { desc = "LazyVim Changelog" })

-- floating terminal
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
keymap.set("n", "<leader>fT", function()
  Util.terminal()
end, { desc = "Terminal (cwd)" })
keymap.set("n", "<c-\\>", lazyterm, { desc = "Terminal (root dir)" })
keymap.set("t", "<c-\\>", "<cmd>close<cr>", { desc = "Close Terminal" })
keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })
