return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
    },
    keys = {
      { "<leader><leader>", "<C-^>", desc = "Toggle between the last two files" },
      { "<leader>ff", LazyVim.pick("find_files"), desc = "Find Files" },
      { "<leader>fs", LazyVim.pick("live_grep"), desc = "Grep" },
    },
  },
}
