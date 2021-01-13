call plug#begin('~/.vim/plugged')

" General settings
Plug 'tpope/vim-fugitive'

" Commenting installation of fzf as it is already installed system wide
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'stsewd/fzf-checkout.vim'
Plug 'mhinz/vim-signify'

" defx plugin requires you to do so.
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Themes
Plug 'gruvbox-community/gruvbox', {'as': 'gruvbox_community'}
Plug 'dracula/vim', { 'as': 'dracula' }


call plug#end()
