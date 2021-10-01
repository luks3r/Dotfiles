" vim:fileencoding=utf-8:ft=conf:foldmethod=marker

" Basic {{{

" Basic syntax highlighting
syntax enable

" Detect different filetypes
filetype on

" Smart tab
set smarttab

" Auto indent
set autoindent

" Numbers and relative number
set number relativenumber

" Backspace through anything
set backspace=indent,eol,start

" Set clipboard to system clipboard to allow proper copying and pasting
set clipboard=unnamedplus

" No compatible with vi
if &compatible
  set nocompatible
endif

" Switch between case sensitive and insensitive automatically during search
set smartcase

" Automatically change directory
set autochdir

" Completion in command mode
set wildmode=longest,list,full

" Set splits to open below and on the right side
set splitbelow splitright

" }}}

" Plugins {{{

" Init {{{

set runtimepath+=/usr/share/vim/vimfiles

call dein#begin(expand('~/.cache/dein'))

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

" Rainbow CSV
call dein#add('mechatroner/rainbow_csv')

" Rainbow brackets
call dein#add('luochen1990/rainbow')

" Git helper
call dein#add('tpope/vim-fugitive')

" Surrond helpers
call dein#add('tpope/vim-surround')

" Fuzzy search
call dein#add('ctrlpvim/ctrlp.vim')

" Whitespace hightligth & strip
call dein#add('ntpeters/vim-better-whitespace')

" }}}

" Style {{{

" Iceberg theme
call dein#add('cocopon/iceberg.vim')

" }}}

" Post-install {{{

call dein#end()

" Install not installed plugins
if dein#check_install()
 call dein#install()
endif

" }}}

" }}}

" Config {{{

" Plugin {{{

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" }}}

" Style {{{

" Support for 256 colors
set t_Co=256

" Use dark background
set background=dark

" Set color scheme
colorscheme iceberg

" }}}

" }}}
