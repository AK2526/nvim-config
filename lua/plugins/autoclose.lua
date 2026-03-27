return {
  -- 1. Autoclose parentheses, brackets, and quotes
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true, -- Use treesitter to check for a pair
      })

      -- Integrate with your nvim-cmp setup from Step 1
      -- This makes it so when you autocomplete a function, it automatically adds the ()
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },

  -- 2. Autoclose and autorename HTML/JSX/TSX tags
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" }, -- It relies on treesitter to parse the code
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          -- Defaults are usually fine, but you can enable/disable specific features here
          enable_close = true,          -- Auto close tags
          enable_rename = true,         -- Auto rename pairs of tags
          enable_close_on_slash = true, -- Auto close on trailing </
        },
      })
    end,
  },
}
