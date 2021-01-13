" This file has been copied from $VIMRUNTIME/vimrc_example.vim
"
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Jan 26
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Custom vim configs

filetype plugin indent on
syntax on
set encoding=utf8
" set clipboard=unnamedplus
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif


set hlsearch " highlight the search
set incsearch " incremental search
set relativenumber " show relative numbers
set ignorecase
set smartcase
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent


" from the book
" show status line
set laststatus=2
set tabpagemax=40
set cursorline
set noerrorbells
set visualbell
set directory=$HOME/.vim/swap//
" set noswapfile
set nobackup
set nowb " no write backup
set autoindent
filetype plugin indent on
set nowrap
set linebreak
set sidescrolloff=3
" enable project specific vimrc
set exrc
set undodir=$HOME/.vim/undodir/
set undofile

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


nnoremap <leader><space> :noh<cr> " noh stops highlighting of search
" set list
" set listchars=tab:▸\ ,eol:¬

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>w <C-w>v<C-w>l

" Settings that you want to get overriden my extension should be written
" before this line
source ~/.vim/plug-in.vim
" Settings that you want to override the plugin ones. Or you need some thing
" from the plugins (like colorscheme) should be written after this line

" let g:github_colors_soft = 1
colorscheme gruvbox
syntax enable
set background=dark

" colorscheme solarized

" source ~/.vim/statusline.vim


" see - https://github.com/iggredible/Learn-Vim/blob/master/ch02_buffers_windows_tabs.md"
set hidden "using this you can create multiple buffers without VIM telling you to save them first.

set showtabline=2 " to show tab, even if only one tab is opened.
