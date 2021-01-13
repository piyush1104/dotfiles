call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

call plug#end()
"Config Section

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

let mapleader = " "

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
" nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeToggle<CR>

 " open new split panes to right and below
 set splitright
 set splitbelow
 " turn terminal to normal mode with escape
 " tnoremap <Esc> <C-\><C-n>
 " start terminal in insert mode
 au BufEnter * if &buftype == 'terminal' | :startinsert | endif
 " open terminal on ctrl+n
 function! OpenTerminal()
   split term://zsh
   resize 10
 endfunction
 nnoremap <c-n> :call OpenTerminal()<CR>



" use alt+hjkl to move between split/vsplit panels
nnoremap <leader>ww <C-w><C-w>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

nnoremap <leader>p :Files<CR>
nnoremap <leader>; :GFiles<CR>
