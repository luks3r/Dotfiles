" vim:fileencoding=utf-8:ft=conf:foldmethod=marker

" Pre-setup {{{
if &compatible
  set nocompatible " Be iMproved
endif

set runtimepath+=/usr/share/vim/vimfiles
" }}}

" Plugins {{{
call dein#begin(expand('~/.cache/dein'))

" Init {{{
" Let dein manage dein
call dein#add(expand('~/.cache/dein'))
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
" }}}

" Common {{{

" Sensible Defaults
call dein#add('tpope/vim-sensible')

" Indent Guides
call dein#add('nathanaelkane/vim-indent-guides')

" Multiple Cursors
call dein#add('mg979/vim-visual-multi')

" File Browser
call dein#add('scrooloose/nerdtree')

" Nerd Commenter
call dein#add('scrooloose/nerdcommenter')

" Syntastic
call dein#add('scrooloose/syntastic')

" Dein UI
call dein#add('wsdjeg/dein-ui.vim')

" Denops
call dein#add('vim-denops/denops.vim')

" Auto-completions
call dein#add('Shougo/ddc.vim')

" Buffer Line
call dein#add('bling/vim-bufferline')

" Airline
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" Syntax checker
call dein#add('dense-analysis/ale')


" }}}

" Support {{{

call dein#add('mechatroner/rainbow_csv')
call dein#add('luochen1990/rainbow')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('ntpeters/vim-better-whitespace')

" }}}

call dein#end()

" Install not installed plugins
if dein#check_install()
 call dein#install()
endif

" }}}

" Config {{{

" Basic {{{

set number
set relativenumber
set ts=2 sw=2 et
filetype plugin indent on
syntax enable


" }}}

" Plugin {{{

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" }}}

" Folding {{{2

set fillchars=fold:= " Whitespace here

" }}}2

" Theme {{{

let g:airline_theme='molokai'

" }}}

" }}}
