-- External language-server installer.
require("mason").setup()

-- nvim-lspconfig supplies server definitions consumed by Neovim's native
-- vim.lsp.config / vim.lsp.enable APIs.
require("mason-lspconfig").setup({
  ensure_installed = {
    "intelephense", -- PHP / Laravel
    "ts_ls",        -- JavaScript / TypeScript / React / Next.js
    "basedpyright", -- Python
    "lua_ls",       -- Lua / Neovim config
  },
  automatic_enable = true,
})

-- lua_ls: make the Neovim runtime known when editing this config.
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    },
  },
})

-- Diagnostics shown by every attached LSP server.
vim.diagnostic.config({
  severity_sort = true,
  underline = true,
  signs = true,
  virtual_text = true,
  update_in_insert = false,
  float = {
    border = "rounded",
    source = true,
  },
})

-- Neovim 0.12 already provides LSP mappings such as:
--   K   hover
--   gra code action
--   gri implementation
--   grn rename
--   grr references
--   grt type definition
--   gO  document symbols
-- and diagnostic motions such as [d and ]d.
