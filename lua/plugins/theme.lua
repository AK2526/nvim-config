return {
  "folke/tokyonight.nvim",
  lazy = false,    -- We want the theme to load immediately
  priority = 1000, -- Force it to load before any other plugins
  config = function()
    -- You can change this to "tokyonight-storm", "tokyonight-moon", or "tokyonight-day"
    vim.cmd.colorscheme("tokyonight-night")
  end,
}
