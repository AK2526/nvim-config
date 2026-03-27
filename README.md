(Note, AI was used to generate the following README.md)

# 🚀 My Neovim Configuration

A modern, fast, and feature-rich Neovim setup tailored for Web Development (React/TS), Python, C/C++, and LaTeX.

## 🛠️ Core Settings

- **Leader Key:** `Space`
- **Line Numbers:** Relative line numbers enabled for easy jumping.
- **Search:** Case-insensitive searching (smartcase enabled).
- **Splits:** New splits open to the right and below.
- **UI:** Cursor stays centered with a 5-line scrolloff.

## 📦 Plugin Manager

- **[lazy.nvim](https://github.com/folke/lazy.nvim)**: A modern plugin manager for Neovim.

## 🎨 Look and Feel

- **Theme:** `tokyonight-night` (Tokyonight)
- **Statusline:** `lualine.nvim`
  - Includes a custom word counter for `.tex`, `.md`, and `.txt` files.
- **Icons:** `nvim-web-devicons` for file-type specific icons.

## ⌨️ Essential Keybindings

| Key | Description |
|-----|-------------|
| `<leader>e` | Toggle Neo-tree (File Explorer) |
| `<leader>ff` | Find Files (Telescope) |
| `<leader>fg` | Live Grep (Search in project) |
| `<leader>fb` | List Open Buffers |
| `<leader>r` | Show Diagnostic/Error floating window |
| `[d` / `]d` | Jump to Previous/Next Diagnostic |

## 🧩 Plugins & Features

### 🔍 Search & Navigation
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: Highly extendable fuzzy finder.
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)**: A full-featured file explorer sidebar.
- **[which-key.nvim](https://github.com/folke/which-key.nvim)**: Displays a popup with available keybindings.

### 💻 Coding & LSP
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Quickstart configs for Neovim LSP.
  - **Servers:** TypeScript (`ts_ls`), Python (`pyright`), C/C++ (`clangd`), LaTeX (`texlab`).
- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: Easily manage and install LSP servers, linters, and formatters.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Advanced syntax highlighting and code folding.
- **[conform.nvim](https://github.com/stevearc/conform.nvim)**: Formatting on save.
  - **Formatters:** Prettier (Web), Black/Isort (Python), Clang-format (C/C++).

### 🤖 AI Assistance
- **[copilot.lua](https://github.com/zbirenbaum/copilot.lua)**: GitHub Copilot integration.
  - `<M-e>`: Accept suggestion
  - `<M-w>`: Accept word
  - `<M-a>`: Accept line
  - `<M-]>` / `<M-[>`: Cycle suggestions
- **[CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)**: Chat with GitHub Copilot directly in Neovim (`:Chat` to toggle).

### ⚡ Autocompletion & Snippets
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Completion engine with support for LSP, buffer, and paths.
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)**: Snippet engine with `friendly-snippets`.
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: Automatically close brackets and quotes.
- **[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)**: Auto-close and auto-rename HTML/JSX tags.

### 📝 Writing (LaTeX)
- **[vimtex](https://github.com/lervag/vimtex)**: Comprehensive LaTeX support.
  - Integrated with **SumatraPDF** for live preview.
  - Configured with `latexmk` for automatic compilation.

---
*Configured with ❤️ for Neovim.*
