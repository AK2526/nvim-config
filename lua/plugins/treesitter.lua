return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate", -- Automatically updates parsers when the plugin is updated
  config = function()
    require("nvim-treesitter.configs").setup({
      -- These are the parsers Treesitter will make sure are always installed
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",      -- Critical for React
        "python",
        "c",
        "cpp",
        "html",     -- Good to have for web dev
        "css",
        "lua",      -- Critical for Neovim config files
        "vim",
        "vimdoc",
      },

      -- Automatically install missing parsers when you open a new file type
      auto_install = true,

	ignore_install = { "latex" },

      -- Enables Treesitter's incredibly smart syntax highlighting
      highlight = {
        enable = true, 
	disable = { "latex" },
      },
      
      -- Enables smart indentation based on the code structure
      indent = {
        enable = true,
      },
    })
  end,
}
