vim.g.mapleader = " "

-- Put these right at the top of your init.lua
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 5

-- Case-insensitive searching
vim.o.ignorecase = true

-- Makes search case-sensitive if an uppercase letter is used in the search pattern
vim.o.smartcase = true


-- Press 'Space + e' to pop open the error message on the current line
vim.keymap.set('n', '<leader>r', vim.diagnostic.open_float, { desc = "Show code error" })

-- Press '[d' or ']d' to instantly jump between errors in the file
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous error" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next error" })

-- Your lazy.nvim setup code will be down here...
--
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
    { import  = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },

})

vim.keymap.set('n', 'T', require('telescope.builtin').builtin, {})
