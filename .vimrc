" spaces & tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
set autoindent


" Spell checking
set nospell
nnoremap <C-E> :setlocal spell! spelllang=en<CR>
nnoremap <C-G> :setlocal spell! spelllang=de<CR>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" set leader Key
let mapleader =" "
" set local leader to \
let maplocalleader = "\\"

" buffer navigation

nnoremap <C-P> :bprev<CR>
" map esc to jk
inoremap jk <esc>

call plug#begin('~/.config/nvim/plugged')
    " highligth
    Plug 'pearofducks/ansible-vim'
    " Quick  Comment
    Plug 'tpope/vim-commentary'
    " Bar airline things
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Colorschemes
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    " Ansible snippets
    Plug 'phenomenes/ansible-snippets'
call plug#end()



