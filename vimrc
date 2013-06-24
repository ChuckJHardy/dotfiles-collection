let mapleader = ","

if executable('/bin/zsh')
  set shell=/bin/zsh
endif

set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-sensible'
Bundle 'epmatsw/ag.vim'
Bundle 'skalnik/vim-vroom'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'altercation/vim-colors-solarized'

set term=xterm-256color
set background=dark

try
  colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
endtry

set number
set hlsearch
set colorcolumn=80
set splitright
set splitbelow

map <leader>s :%s/\s\+$//<CR>
map <leader>ff :Ag<space>""<left>

map <F5> :BD<CR>
map <F6> :bd<CR>
map <F7> :bd<CR>:BD<CR>

map <leader>. :A<cr>
map <leader>/ :vs<cr>,.
map <leader>? :hs<cr>,.

" Vim Hardcore
map <Left> :echo "Try H!"<cr>
map <Right> :echo "Try L!"<cr>
map <Up> :echo "Try K!"<cr>
map <Down> :echo "Try J!"<cr>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

let g:Powerline_symbols = 'fancy'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_max = 250
nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <c-f> :CtrlPMRU<cr>
