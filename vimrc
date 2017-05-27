set shell=/bin/sh

if executable('/bin/zsh')
  set shell=/bin/zsh
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber'
Plugin 'epmatsw/ag.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ervandew/supertab'
Plugin 'nono/vim-handlebars'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree.
Plugin 'skalnik/vim-vroom'
Plugin 'rodjek/vim-puppet'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ConradIrwin/vim-bracketed-paste' " vim-bracketed-paste enables transparent pasting into vim. (i.e. no more :set paste!)
Plugin 'mattn/emmet-vim' " is a vim plug-in which provides support for expanding abbreviations similar to emmet.
" Plugin 'szw/vim-tags' " The Ctags generator for Vim
" Plugin 'rizzatti/dash.vim'
Plugin 'itchyny/lightline.vim'
" Plugin 'dart-lang/dart-vim-plugin' " Syntax highlighting for Dart in Vim

call vundle#end()

let mapleader = ","

if !has('nvim')
  set term=xterm-256color
endif

"set background=dark
"colorscheme solarized

set number
set expandtab
set hlsearch
set splitright
set splitbelow
set smartindent
set mouse=a
set mousehide
set shiftwidth=2
set tabstop=2
set noerrorbells visualbell t_vb=
set colorcolumn=80

map <leader>, :%s/\s\+$//<CR>
map <leader>ff :Ag<space>""<left>
map <leader>§ :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>
map <silent> <leader><cr> :noh<cr>

map <F5> :BD<CR>
map <F6> :bd<CR>
map <F7> :bd<CR>:BD<CR>

map <leader>. :A<cr>
map <leader>/ :vs<cr>,.
map <leader>? :hs<cr>,.

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>] :tabn<cr>
map <leader>[ :tabp<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Vim Hardcore
map <Left> :echo "Try H!"<cr>
map <Right> :echo "Try L!"<cr>
map <Up> :echo "Try K!"<cr>
map <Down> :echo "Try J!"<cr>

nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gb :Gblame<cr>

" relative path (src/foo.txt)
nnoremap <leader>cf :let @+=expand("%")<CR>
" absolute path (/something/src/foo.txt)
nnoremap <leader>cF :let @+=expand("%:p")<CR>
" filename (foo.txt)
nnoremap <leader>ct :let @+=expand("%:t")<CR>
" directory name (/something/src)
nnoremap <leader>ch :let @+=expand("%:p:h")<CR>

if has("autocmd")
  au FileType make set noexpandtab
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
  au BufNewFile,BufRead *.json set ft=javascript
  au BufNewFile,BufRead *.es6 set ft=javascript

  augroup RubyShenanigans
    au!
    autocmd BufRead,BufNewFile Gemfile,Rakefile,Capfile
      \ set filetype=ruby
  augroup END
endif

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_max = 250
nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <c-f> :CtrlPMRU<cr>

noremap  <F1> :NERDTreeToggle<cr>
inoremap <F1> <esc>:NERDTreeToggle<cr>
map :where :NERDTreeFind<cr>
au Filetype nerdtree setlocal nolist
let g:NERDTreeWinPos = "left"
let g:NERDTreeAutoDeleteBuffer = 1
let NERDTreeHighlightCursorline= 1
let NERDTreeHijackNetrw= 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeMouseMode = 1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index', 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json', '.*\.o$', 'db.db', 'tags.bak', 'tags']

let jshint2_save = 1
let g:solarized_termcolors=16

nmap <F2> :TagbarToggle<CR>

let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" let g:vim_tags_auto_generate = 1

" let g:lightline = {
"      \ 'colorscheme': 'solarized',
"      \ }
