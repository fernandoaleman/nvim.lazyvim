local util = require("lspconfig.util")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      solargraph = {
        capabilities = capabilities,
        cmd = { vim.fn.trim(vim.fn.system("asdf which solargraph")) },
        filetypes = { "ruby" },
        root_dir = util.root_pattern("Gemfile", ".git", vim.fn.getcwd()),
        settings = {
          solargraph = {
            autoformat = true,
            completion = true,
            diagnostic = true,
            folding = true,
            references = true,
            rename = true,
            symbols = true,
          },
        },
      },
    },
  },
}
