return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = function(_, opts)
    local cmp = require("cmp")

    -- Custom mappings
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback() -- Default behavior (inserts a Tab character)
        end
      end, { "i", "s" }), -- Available in insert and select mode

      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" }), -- Available in insert and select mode

      ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection with Enter
      ["<C-e>"] = cmp.mapping.abort(), -- Abort completion
    })

    return opts -- Ensure options are returned
  end,
}
