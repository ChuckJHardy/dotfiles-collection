let mapleader = ","

if executable('/bin/zsh')
  set shell=/bin/zsh
endif

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-sensible'
Bundle 'epmatsw/ag.vim'
Bundle 'skalnik/vim-vroom'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'nono/vim-handlebars'
Bundle 'Shutnik/jshint2.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'

set term=xterm-256color
set background=dark

try
  colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
endtry

set number
set expandtab
set hlsearch
set colorcolumn=80
set splitright
set splitbelow
set smartindent
set clipboard=unnamed
set mouse=a
set mousehide
set shiftwidth=2
set tabstop=2
set noerrorbells visualbell t_vb=

map <leader>s :%s/\s\+$//<CR>
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
" map <Left> :echo "Try H!"<cr>
" map <Right> :echo "Try L!"<cr>
" map <Up> :echo "Try K!"<cr>
" map <Down> :echo "Try J!"<cr>

nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gb :Gblame<cr>

if has("autocmd")
  au FileType make set noexpandtab
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
  au BufNewFile,BufRead *.json set ft=javascript

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

let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_max = 250
nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <c-f> :CtrlPMRU<cr>

noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>
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
