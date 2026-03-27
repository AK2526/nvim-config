return {
  "CopilotC-Nvim/CopilotChat.nvim",
  -- Tells Lazy to load when you type either of these
  cmd = { "Chat", "CopilotChat" }, 
  dependencies = {
    { "zbirenbaum/copilot.lua" },
    { "nvim-lua/plenary.nvim" },
  },
  opts = {
    model = "gpt-4o",
    window = {
      layout = 'float',
      width = 0.8,
      height = 0.8,
    },
    -- Could add auto_follow_cursor = false
    question_header = "## User",
    answer_header = "## Copilot",
    error_header = "## Error",

    allow_remote_shell = true,
     
    fix_pauses = true,
    show_help = true,

  },
  config = function(_, opts)
    local chat = require("CopilotChat")
    chat.setup(opts)

    -- Commands MUST start with an Uppercase letter in Neovim
    vim.api.nvim_create_user_command("Chat", function()
      chat.toggle()
    end, { desc = "Toggle Copilot Chat" })
  end,
}
