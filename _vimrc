set nocompatible
set number

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

filetype plugin indent on
filetype indent on

syntax on

