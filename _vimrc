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

filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  call neobundle#end()
endif

" neosnippet
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" unite: 最近使ったファイルを表示する
NeoBundle 'Shougo/unite.vim'
" マルチカーソル
NeoBundle 'terryma/vim-multiple-cursors'
" ScalaのSyntax
NeoBundle 'derekwyatt/vim-scala'

filetype plugin indent on
filetype indent on

syntax on

" vim起動時に未インストールのプラグインをインストールする
NeoBundleCheck
