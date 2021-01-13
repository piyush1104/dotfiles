" This file has been copied from vim-plug example file. see their github repo
" 	-Piyush

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Use this plugin some time later
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'junegunn/vim-github-dashboard'

" Multiple Plug commands can be written in a single line using | separators
Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" new manual plugins
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " It installs the fzf itself.
Plug 'junegunn/fzf.vim' " It installs the fzf plugin for vim
" Plug 'cormacrelf/vim-colors-github'
" Plug 'altercation/vim-colors-solarized'

" Got from some youtube guy
Plug 'morhetz/gruvbox'


" Initialize plugin system
call plug#end()

