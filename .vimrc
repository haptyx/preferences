""" Custom .vimrc
""" Author: haptyx

""" Set the leader key to space
let mapleader = "\<space>"

""" Null out a bunch of keys
nnoremap <up> <NOP>
inoremap <up> <NOP>
nnoremap <down> <NOP>
inoremap <down> <NOP>
nnoremap <left> <NOP>
inoremap <left> <NOP>
nnoremap <right> <NOP>
inoremap <right> <NOP>
nnoremap <delete> <NOP>

nnoremap j gj
nnoremap k gk

nnoremap n nzz
vnoremap n nzz
nnoremap N Nzz
vnoremap N Nzz

nmap <silent> <BS> :nohlsearch<CR>

""" Convenience functions using leader
nnoremap <leader>w :w<cr>
nnoremap <leader>q :wq<cr>
nnoremap <leader>a A
nnoremap <leader>h ^i

""" Invisible character settings
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:·

""" File behavior
set autoread
set autowrite

""" Display settings
set wrap
set wrapscan
set linebreak
set number
set showmatch
set showmode
set showcmd
set ruler
set title
set matchtime=2
set matchpairs+=<:>
set lazyredraw

""" Editor settings
set esckeys
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

""" undo
if has('persistent_undo')
    set undolevels=5000
    set undodir=$HOME/.vim/undo
    set undofile
endif
