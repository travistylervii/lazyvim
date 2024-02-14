-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby--
--vim.keymap.del("n", "<leader>u")

vim.keymap.set({ "n", "v" }, "J", "10j")
vim.keymap.set({ "n", "v" }, "K", "10k", { remap = true, silent = true })
vim.keymap.set({ "n", "v" }, "H", "10h")
vim.keymap.set({ "n", "v" }, "L", "10l")
vim.keymap.set("n", "<leader>mf", "<cmd>Ex<cr>")

vim.keymap.set("i", "<C-b>", "<LEFT>", { desc = "LEFT" })
vim.keymap.set("i", "<C-f>", "<RIGHT>", { desc = "RIGHT" })
