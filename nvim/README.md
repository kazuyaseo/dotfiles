# Neovim config (0.12+)

init.vimから移行された、Lua ベースの小規模な Neovim 設定。

## Layout

```text
~/.config/nvim/
├── init.lua
└── lua/
    └── config/
        ├── options.lua
        ├── keymaps.lua
        ├── plugins.lua
        └── lsp.lua
```

## Requirements

vim.packを使うため、Neovim0.12以上が必要。

## Install

初回起動時に `vim.pack` を使ってプラグインがインストールされ、Mason によって以下の LSP サーバーがインストールされます。

- `intelephense` — PHP / Laravel
- `ts_ls` — JavaScript / TypeScript / React / Next.js
- `basedpyright` — Python
- `lua_ls` — Lua / Neovim config

## Check LSP

LSPが動作しているか確認するためのコマンド集。

```vim
:checkhealth vim.lsp
```

or:

```vim
:LspInfo
```

Mason UI:

```vim
:Mason
```

## Useful built-in LSP mappings in Neovim 0.12

| Key | Action |
|---|---|
| `K` | Hover documentation |
| `gra` | Code action |
| `gri` | Go to implementation |
| `grn` | Rename symbol |
| `grr` | Find references |
| `grt` | Go to type definition |
| `gO` | Document symbols |
| `[d` / `]d` | Previous / next diagnostic |

## Plugin updates

プラグインアップデート時のコマンド

```vim
:lua vim.pack.update()
```

`vim.pack` のロックファイルはコミットする方針で進める。

