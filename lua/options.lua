local opt = vim.opt
local cmd = vim.cmd

-- python場所指定
vim.g.python3_host_prog = "C:\\Users\\渡邊唯人(ecbeing)\\.pyenv\\pyenv-win\\shims\\python3"

-- 行番号表示
opt.number = true

-- vimhelpの表示言語
opt.helplang = 'ja', 'en'

-- 選択行の表示
opt.cursorline = true

-- タブとインデント
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- encoding
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.fileencodings = 'ucs-boms','utf-8','enc-jp','cp932'
opt.fileformats = 'dos', 'unix','mac'

-- 曖昧文字幅の固定
opt.ambiwidth = 'double'

-- 制御文字を表示
opt.list = true
opt.listchars = 'tab:>-', 'trail:*', 'nbsp:+'

-- ビープ音を視覚表示に変更
opt.visualbell = true

-- 検索
opt.ignorecase = true
opt.smartcase = true

-- 編集中ファイルが変更されたら自動で読み直す
opt.autoread = true

-- バッファが編集中でもその他ファイルを開けるようにする
opt.hidden = true

-- 入力中のコマンドをステータスに表示
opt.showcmd = true

-- ステータスラインを常に二行表示
opt.laststatus = 2

-- クリップボード連携
-- opt.clipboard = 'unnamedplus'

-- バックスペースの設定
opt.backspace = 'indent', 'eol', 'start'

-- 背景色の設定
opt.background = dark

-- swpファイル出力無効
-- opt.noswapfile = true
cmd('set noswapfile')

-- バックアップファイル出力無効
-- opt.nobackup = true
cmd('set nobackup')

-- シンタックスハイライト
cmd('syntax on')

-- カラースキーム設定
cmd('colorscheme molokai')

-- 256色表示
cmd('set t_Co=256')

