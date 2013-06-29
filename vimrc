let mapleader = ","

if executable('/bin/zsh')
  set shell=/bin/zsh
endif

set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Define bundles via Github repos
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'sleistner/vim-jshint'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-commentary'
Bundle 'epmatsw/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/Align'
Bundle 'edsono/vim-matchit'
Bundle 'ap/vim-css-color'
Bundle 'scrooloose/syntastic'
Bundle 'skalnik/vim-vroom'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'ervandew/supertab'
Bundle 'othree/html5.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'

filetype plugin on
filetype indent on
syntax enable

set term=xterm-256color
set background=dark

try
  colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
endtry

set encoding=utf8                                                              " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac                                                           " Use Unix as the standard file type
set autoread                                                                   " Set to auto read when a file is changed from the outside
set showcmd
set number                                                                     " Show Line Numbers
set ruler                                                                      " Always show current position
set list                                                                       " Show invisible characters
set lazyredraw                                                                 " Don't redraw while executing macros (good performance config)
set hid                                                                        " A buffer becomes hidden when it is abandoned

set history=1000                                                               " Sets how many lines of history VIM has to remember
set nobackup                                                                   " Turn backup off, since most stuff is in SVN, git et.c anyway...
set nowb
set noswapfile

set colorcolumn=80                                                             " Highlight the 80th column
set cmdheight=1                                                                " Height of the command bar
set laststatus=2                                                               " Always show the status line

set cursorline
set cursorcolumn
set so=7                                                                       " Set 7 lines to the cursor - when moving vertically using j/k
set virtualedit=onemore                                                        " allow for cursor beyond last character

set wildmenu                                                                   " Turn on the Wild menu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.bundle,coverage,.DS_Store,_html,.git,*.rbc,*.class,.svn,vendor/gems/*,vendor/rails/*

set listchars=""                                                               " Reset the listchars
set listchars=eol:¬
set listchars=tab:▸\                                                           " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.                                                         " show trailing spaces as dots
set listchars+=extends:>                                                       " The character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=precedes:<                                                      " The character to show in the first column when wrap is off and the line continues beyond the left of the screen
set whichwrap+=<,>,h,l
set backspace=eol,start,indent                                                 " Configure backspace so it acts as it should act
set isk+=_,$,@,%,#                                                             " These aren't word dividers

set expandtab                                                                  " Use spaces instead of tabs
set smarttab                                                                   " Be smart when using tabs
set shiftwidth=2                                                               " 1 tab == 2 spaces
set tabstop=2
set lbr
set tw=500                                                                     " Linebreak on 500 characters
set ai                                                                         " Auto indent
set si                                                                         " Smart indent
set wrap                                                                       " Wrap lines

set noerrorbells
set novisualbell
set t_vb=
set tm=500"

set splitright                                                                 " Default to opening a split to the right instead of the left
set splitbelow                                                                 " Default to opening a split below instead of above

set mouse=a
set mousehide

set showmatch                                                                  " Show matching brackets when text indicator is over them
set mat=2                                                                      " How many tenths of a second to blink when matching brackets
set foldmethod=manual                                                          " for super fast autocomplete

set clipboard=unnamed

set smartcase                                                                  " When searching try to be smart about cases
set ignorecase
set magic                                                                      " For regular expressions turn magic on
set hlsearch                                                                   " Highlight search results
set incsearch                                                                  " Makes search act like search in modern browsers 

map <silent> <leader><cr> :noh<cr>
map <leader>pp :setlocal paste!<cr>
map <leader>ff :Ag<space>""<left>

" Remap VIM 0 to first non-blank character
map 0 ^
nmap <leader>w :w!<cr>
cmap w!! w !sudo tee % >/dev/null
map <F9> :!ctags --exclude=public --exclude=_html --exclude=tmp --exclude=log --exclude=coverage --extra=+f -R *<CR><CR>

map <F5> :BD<CR>
map <F6> :bd<CR>
map <F7> :bd<CR>:BD<CR>

nmap <C-n> :bnext<CR>
nmap <C-b> :bprev<CR>

" switch most recent buffers
nnoremap <leader><leader> <c-^>

map <leader>. :A<cr>
map <leader>/ :vs<cr>,.
map <leader>? :hs<cr>,.

nnoremap <leader>' ""yls<c-r>={'"': "'", "'": '"'}[@"]<cr><esc>
map <leader>rpp :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>

map :vs :vsplit<cr><c-l>
map <leader>vs :vs
map :hs :split<cr><c-j>
map <leader>hs :hs

" Remap shift key failure
command! W :w
command! Wq :wq
command! Wqa :wqa
command! E :e

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>] :tabn<cr>
map <leader>[ :tabp<cr>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

map <leader>gg :topleft 40 :split Gemfile<cr>
map <leader>e :e! ~/.vimrc<cr>

map <leader>qq :qa!<cr>
map <leader>qw :wqa!<cr>

map <leader>cd :cd %:p:h<cr>:pwd<cr>

autocmd! bufwritepost vimrc source ~/.vimrc
command! FR set filetype=ruby

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Delete trailing white space on save, useful for Ruby and CoffeeScript
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.rb :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()

if has("autocmd")
  " In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make set noexpandtab
  au FileType javascript :iabbrev <buffer> iff if ( ) {  }<left><left><left><left><left><left><left><left>
  au FileType ruby :iabbrev <buffer> lett let(:) {  }<left><left><left><left><left><left><left>

  " Make sure all markdown files have the correct filetype set and setup wrapping
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json set ft=javascript

  augroup RubyShenanigans
    au!
    autocmd BufRead,BufNewFile Gemfile,Rakefile,Capfile
      \ set filetype=ruby
    autocmd BufRead,BufNewFile *.rb
      \ map <C-s> :!ruby -cw %<cr>
  augroup END
endif

" Powerline (https://github.com/Lokaltog/vim-powerline)
let g:Powerline_symbols = 'fancy'
" Fugitive (https://github.com/tpope/vim-fugitive)
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gb :Gblame<cr>
augroup ft_fugitive
    au!
    au BufNewFile,BufRead .git/index setlocal nolist
augroup END
" NERDTree (https://github.com/scrooloose/nerdtree)
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>
map :where :NERDTreeFind<cr>
au Filetype nerdtree setlocal nolist
let g:NERDTreeWinPos = "left"
let NERDTreeHighlightCursorline=1
let NERDTreeHijackNetrw=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeMouseMode = 1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index', 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json', '.*\.o$', 'db.db', 'tags.bak', 'tags']
" Scratch (https://github.com/vim-scripts/scratch.vim)
noremap <F10> :Sscratch<cr>
" Ctrl-P (https://github.com/kien/ctrlp.vim)
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window_bottom = 0 " show the match window at the top of the screen
let g:ctrlp_max_height = 10 " maxiumum height of match window
let g:ctrlp_switch_buffer = 'et' " jump to a file if it's open already
let g:ctrlp_use_caching = 1 " enable caching
let g:ctrlp_clear_cache_on_exit=0 " speed up by not removing clearing cache evertime
let g:ctrlp_show_hidden = 1 " show me dotfiles
let g:ctrlp_mruf_max = 250 " number of recently opened files
nmap <leader>lw :CtrlP<CR><C-\>w
nnoremap <c-b> :CtrlPBuffer<cr>                                                " Open CtrlP in buffer mode
nnoremap <c-f> :CtrlPMRU<cr>                                                   " Open CtrlP in recent files mode

" let g:vroom_use_vimux = 1
" let VimuxUseNearestPane = 1
