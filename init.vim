:set mouse
:set number
:set relativenumber
:set smarttab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set autoindent

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'

call plug#end()

" NERDTree setup
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>m :NERDTreeToggle<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Choose color
:colorscheme bubblegum-256-dark
