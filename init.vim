syntax on
set nu ru et
set hlsearch
set ts=2 sts=2 sw=2
set cursorline
set autochdir

set nocompatible   " be improved, required
filetype off       " required

let mapleader = " " 

" store the plugins in plugged dir
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'aditya-azad/candle-grey'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'preservim/vim-colors-pencil'
Plug 'nikolvs/vim-sunbather'
Plug 'mcchrish/zenbones.nvim'
Plug 'rktjmp/lush.nvim' 
call plug#end()

" select the color scheme
" colorscheme gruvbox
" colorscheme candle-grey
" colorscheme pencil
" background=dark
" colorscheme sunbather
set termguicolors
set background=light " or dark
colorscheme zenbones

" Mirror the NERDTree before showing it. This makes it the same on all tabs.
map <silent> <C-n> :NERDTreeFocus<CR>

xnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>d "_d

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:rustfmt_autosave=1

" let g:go_debug=['lsp']
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'rightbelow 10new',
\ }

luafile /home/chris/.config/nvim/luainit.lua
