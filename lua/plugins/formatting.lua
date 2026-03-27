return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      -- Map your languages to their specific formatters
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        python = { "isort", "black" }, -- isort sorts imports, black formats the code
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
      -- This triggers the formatting every time you save the file
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 5000,
      },
    })
  end,
}
