local util = require("lspconfig.util")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rubocop = {
        capabilities = capabilities,
        cmd = { os.getenv("HOME") .. "/.asdf/shims/rubocop" },
        root_dir = util.root_pattern("Gemfile", ".git", vim.fn.getcwd()),
        settings = {
          rubocop = {
            autocorrect = true,
            useBundler = false,
          },
        },
      },
      solargraph = {
        capabilities = capabilities,
        cmd = { os.getenv("HOME") .. "/.asdf/shims/solargraph", "stdio" },
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
