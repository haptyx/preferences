""" Custom .vimrc
""" Author: haptyx

" Reset to vim Defaults
if &compatible
  set nocompatible
endif

""" Remap arrows
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>

nnoremap j gj
nnoremap k gk

""" Display settings
set wrap
set linebreak
set number
set showmatch
set showmode
set showcmd
set ruler
set title
set matchtime=2
set matchpairs+=<:>

""" Editor settings
set esckeys
set autowrite
set ignorecase
set smartcase
set smartindent
set smarttab
set magic
set bs=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set nofoldenable
set list listchars=tab:\ \ ,trail:·
set textwidth=0
set wrapmargin=0

""" System settings
set lazyredraw
set confirm
set nobackup
set noswapfile
set viminfo='20,\"500
set hidden
set history=100
set encoding=utf-8
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

""" Color settings
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
	set incsearch
	colors cake
endif

""" maps
nmap <silent> <BS> :nohlsearch<CR>

""" undo
if has('persistent_undo')
    set undolevels=5000
    set undodir=$HOME/.vim/undo
    set undofile
endif

cmap w!! w !sudo tee % >/dev/null
