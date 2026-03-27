return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- Sources for nvim-cmp
    "hrsh7th/cmp-nvim-lsp",   -- LSP suggestions (critical for auto-imports later)
    "hrsh7th/cmp-buffer",     -- Suggestions from the current file
    "hrsh7th/cmp-path",       -- File path suggestions
    
    -- Snippet Engine (Required by cmp)
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",     -- Links LuaSnip to cmp
    "rafamadriz/friendly-snippets", -- Pre-made snippets for React, JS, etc.
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    -- Load the friendly-snippets collection
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      -- Tell cmp to use LuaSnip for expanding snippets
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      -- Basic keybindings
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(), -- Trigger autocomplete menu manually
        ['<C-e>'] = cmp.mapping.abort(),        -- Close the menu
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Hit Enter to accept the suggestion
      }),
      -- Where to get the autocomplete data from, in order of priority
      sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- We will set this up in Step 2!
        { name = 'luasnip' }, 
        { name = 'buffer' },
        { name = 'path' },
      })
    })
  end,
}
