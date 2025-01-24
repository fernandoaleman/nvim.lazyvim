-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("n", "<leader><space>", "<C-^>", { desc = "Toggle between the last two files" })

-- visual
vim.keymap.set("v", "<", "<gv", { desc = "Stay in right indentation mode" }) -- right indentation
vim.keymap.set("v", ">", ">gv", { desc = "Stay in left indentation mode" }) -- left indentation
