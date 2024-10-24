-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Files
vim.api.nvim_del_keymap("n", "<leader><leader>")
vim.api.nvim_set_keymap("n", "<leader><leader>", "<C-^>", { desc = "Toggle between the last two files" })
