return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300 -- Wait 300ms after a keypress before showing the menu
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
  }
}
