return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = { accept = false }, -- Disable internal mapping to use our manual ones below
      },
    })

    local suggestion = require("copilot.suggestion")

    -- Accept the whole suggestion (Alt + Enter or Alt + l)
    vim.keymap.set("i", "<M-e>", function()
      if suggestion.is_visible() then suggestion.accept() end
    end, { desc = "Copilot Accept" })

    -- Accept word-by-word (Alt + w)
    vim.keymap.set("i", "<M-w>", function()
      if suggestion.is_visible() then suggestion.accept_word() end
    end, { desc = "Copilot Accept Word" })

    -- Accept line-by-line (Alt + a)
    vim.keymap.set("i", "<M-a>", function()
      if suggestion.is_visible() then suggestion.accept_line() end
    end, { desc = "Copilot Accept Line" })

    -- Cycle through suggestions (Alt + ] and Alt + [)
    vim.keymap.set("i", "<M-]>", function()
      if suggestion.is_visible() then suggestion.next() end
    end)
    vim.keymap.set("i", "<M-[>", function()
      if suggestion.is_visible() then suggestion.prev() end
    end)
  end,
}

