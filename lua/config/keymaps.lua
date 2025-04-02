-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Select all
vim.keymap.set({ "n", "v" }, "<M-S-a>", "<Esc>ggVG", { desc = "Select all" })

-- Copy to system clipboard +
vim.keymap.set({ "v" }, "<M-S-c>", '"+y', { desc = "Copy to system clipboard '\"+'" })

-- Map ctrl+shift+h/j/k/l to move between windows
vim.keymap.set({ "n", "t" }, "<C-S-h>", "<C-W>h", { desc = "Move to left window" })
vim.keymap.set({ "n", "t" }, "<C-S-j>", "<C-W>j", { desc = "Move to below window" })
vim.keymap.set({ "n", "t" }, "<C-S-k>", "<C-W>k", { desc = "Move to above window" })
vim.keymap.set({ "n", "t" }, "<C-S-l>", "<C-W>l", { desc = "Move to right window" })
