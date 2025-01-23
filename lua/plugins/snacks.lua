return {
  "folke/snacks.nvim",
  -- stylua: ignore
  keys = {
    { "<leader><space>", LazyVim.pick("files", { hidden = true}), desc = "Find Files (Root Dir)" },
    -- find
    { "<leader>ff", LazyVim.pick("files", { hidden = true }), desc = "Find Files (Root Dir)" },
    { "<leader>fF", LazyVim.pick("files", { root = false, hidden = true }), desc = "Find Files (cwd)" },
    -- grep
    -- TODO: Keep trying to find a better way to do this by using hidden = true
    {
      "<leader>sg",
      LazyVim.pick("live_grep", { cmd = "rg --vimgrep --hidden --column --line-number" }),
      desc = "Grep (Root Dir)"
    },
  },
}
