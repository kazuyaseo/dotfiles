-- Basic Settings

-- シンタックスハイライトON
vim.cmd("syntax on")

-- デフォルトエンコーディングをUTF-8
vim.opt.encoding = "utf-8"

-- 行番号表示
vim.opt.number = true

-- 行カーソル強調表示
vim.opt.cursorline = true

-- 関係する括弧を強調表示
vim.opt.showmatch = true

-- カーソル位置の表示
vim.opt.ruler = true

-- 不可視文字の可視化
vim.opt.list = true

-- 不可視文字の可視化形式を指定
vim.opt.listchars = {
    tab = "»-",
    trail = ".",
    extends = "»",
    precedes = "«",
    nbsp = "%",
}

-- tsファイル読み込み時のsyntax highlight対応
vim.opt.regexpengine = 0


-- TAB設定

-- タブを自動的にスペースに置き換える
vim.opt.expandtab = true

-- タブ幅
vim.opt.tabstop = 4

-- 自動インデントのスペース数
vim.opt.shiftwidth = 4

-- タブ一つで挿入されるスペースの数
-- 0でtabstopと同じ
vim.opt.softtabstop = 0


-- 検索設定

-- 大文字小文字を区別しない
vim.opt.ignorecase = true

-- 大文字を含む場合は大文字小文字を区別する
vim.opt.smartcase = true

-- インクリメンタルサーチ
vim.opt.incsearch = true

-- ファイル末尾まで検索したら先頭に戻る
vim.opt.wrapscan = true

-- 検索マッチテキストをハイライト
vim.opt.hlsearch = true


-- コマンド

-- コマンドの補完
vim.opt.wildmenu = true

-- 履歴数
vim.opt.history = 5000


-- ステータス

vim.opt.laststatus = 2

-- vim.opt.statusline = "%F%r%h%="

