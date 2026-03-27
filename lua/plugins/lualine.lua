return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Required for the file icons
  config = function()
    
    -- We build a tiny custom function that asks Neovim to count the words
    local function get_words()
      -- We only want the word counter to show up when you are writing documents, not code!
      local ft = vim.bo.filetype
      if ft == "tex" or ft == "markdown" or ft == "txt" or ft == "text" then
        return tostring(vim.fn.wordcount().words) .. " words"
      else
        return ""
      end
    end

    require("lualine").setup({
      options = {
        theme = "auto",       -- Automatically matches whatever color scheme you are using
        globalstatus = true,  -- Keeps a single, clean status bar at the bottom even if you open side-panels
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        -- We drop your custom 'get_words' function right into the X section
        lualine_x = { get_words, 'encoding', 'fileformat', 'filetype' }, 
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
    })
  end,
}
