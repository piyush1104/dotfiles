" ---- Following has been copied from defaults.vim
set nocompatible "got to be the first

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
set display=truncate

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
" Only xterm can grab the mouse events when using the shift key, for other
" terminals use ":", select text and press Esc.
if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif

" -----

" Note: There are so many default settings that I have not copied. Some of
" them can be very useful, but since I have no idea what they are being used
" for I have removed them. Go through defaults ($VIMRUNTIME/defaults.vim)
" once in a while

" ----

filetype plugin indent on
syntax enable
set encoding=utf8

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
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set laststatus=2 " show status line
set tabpagemax=40
set cursorline
set noerrorbells
set visualbell
set directory=$HOME/.vim/swap//
" set noswapfile
set nobackup
set nowb " no write backup
set autoindent
set nowrap
set linebreak
set sidescrolloff=2
set exrc " enable project specific vimrc
set undodir=$HOME/.vim/undodir/
set undofile

set termguicolors
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

" see - https://github.com/iggredible/Learn-Vim/blob/master/ch02_buffers_windows_tabs.md"
set hidden "using this you can create multiple buffers without VIM telling you to save them first.
set showtabline=2 "to show tab, even if only one tab is opened.

" This shows a grey line to the right
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" set list
" set listchars=tab:▸\ ,eol:¬

let mapleader=" "

" :noh stops highlighting of search
nnoremap <leader><space> :noh<cr>

" The following key maps prevent you to move using arrow keys
" For now, I am going to enable arrow keys for insert mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Helps if wrap is on. By default vim only goes through a line.
nnoremap j gj
nnoremap k gk

" Replace ; semicolon with colon so that we can easily access the command mode
nnoremap ; :

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>w <C-w>v<C-w>l

" Set jj as escape in insert mode. Pretty useful
inoremap jj <esc>

" Settings that you want to get overriden my extension should be written
" before this line
source ~/.vim/plug-in2.vim
" Settings that you want to override the plugin ones. Or you need some thing
" from the plugins (like colorscheme) should be written after this line

" let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
" let $FZF_DEFAULT_OPTS='--reverse'

colorscheme gruvbox
" colorscheme dracula
set background=dark

" source ~/.vim/statusline.vim


nnoremap <leader>p :Files<cr>
nnoremap <leader>; :GFiles<cr>
