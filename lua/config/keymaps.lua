-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })
vim.keymap.set("n", "<C-f>", "/", { noremap = true })
vim.keymap.set("n", "<M-,>", "<cmd>bprev<CR>")
vim.keymap.set("n", "<M-.>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<M-/>", "<cmd>bd<CR>")
vim.keymap.set("n", "<C-a>", "<cmd>normal! ggVG<CR>", { noremap = true })
vim.keymap.set({ "n", "v" }, "V", "^vg_", { noremap = true })
vim.keymap.set({ "n", "v" }, "М", "^vg_", { noremap = true })
vim.keymap.set("n", "vv", "V")
