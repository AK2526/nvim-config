return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp", 
  },
  config = function()
    require("mason").setup()

    -- Tell Mason to install these servers automatically
    require("mason-lspconfig").setup({
      ensure_installed = { 
        "ts_ls",
        "pyright",
        "clangd",
        "texlab",
      }, 
    })

    -- Get the capabilities for autocomplete (auto-imports, etc.)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- A list of all the servers we want to activate
    local servers = { "ts_ls", "pyright", "clangd", "texlab" }

    -- The NEW Neovim 0.11+ way to configure and start servers
    for _, lsp in ipairs(servers) do
      -- 1. Configure the server with our autocomplete capabilities
      vim.lsp.config(lsp, {
        capabilities = capabilities,
      })
      -- 2. Enable the server
      vim.lsp.enable(lsp)
    end
  end,
}
