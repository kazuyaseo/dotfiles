-- Neovim 0.12+ built-in plugin manager.
vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
}, {
  confirm = false,
  load = true,
})

require("gitsigns").setup({
  current_line_blame = false,
})
