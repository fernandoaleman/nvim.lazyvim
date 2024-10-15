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
      { "<leader>fs", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    },
  },
}
