if &compatible
  set nocompatible
endif

" Reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
" 無ければdeinをgit cloneしてくる
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

" プラグイン読み込み＆キャッシュ作成
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
"  call dein#load_toml('~/.config/nvim/dein.toml')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/deinlazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if dein#check_install()
  call dein#install()
endif
" }}}

" settings
filetype plugin indent on
set termguicolors
colorscheme gruvbox
" set background=dark
set number
set clipboard+=unnamedplus
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set list
" 不可視文字の設定が上手く反映されない謎
" set lcs=tab:>-,trail:*
"set showtabline=2
set laststatus=2
set nowritebackup
set nobackup
set noswapfile
" jediの補完時に出るdocstringを潰す
set completeopt-=preview
