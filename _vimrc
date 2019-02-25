" ========== 表示 ==========
" 行数を表示する
set number
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" 入力中のコマンドを表示する(効かなくなってしまった)
set wildmenu

"========== Tab ==========
" タブ入力を複数のスペースに置き換える
set expandtab
" タブ文字の表示幅
set tabstop=2
" vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

"========== 検索 ==========
" 検索結果をハイライトする
set hlsearch
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch


"========== その他 ==========
"保存しなくてもbufferの切り替えができる
set hidden
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" deleteが聞かない対策
set backspace=indent,eol,start

filetype off

syntax on

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " ディレクトリツリー
  call dein#add('scrooloose/nerdtree')
  " マルチカーソル
  call dein#add('terryma/vim-multiple-cursors')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" key map --------------------------------
" Toggle NERDTree
map <C-t> :NERDTreeToggle<CR>
" move left Tab
"map <C-[> gT " 有効にすると起動時に置換モードになってしまう
" move right Tab
map <C-]> gt

