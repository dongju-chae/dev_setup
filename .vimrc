" Vundle Setup
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ericcurtin/CurtineIncSw.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Vim default setting
set hlsearch
set nu
set autoindent
set scrolloff=2
set wildmode=longest,list
set ts=4
set sts=4
set autowrite
set autoread
set autoindent
set cindent
set bs=eol,start,indent
set history=256
set laststatus=2
set showmatch
set smartcase
set ruler
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set formatoptions+=r
set ignorecase

"Kernel
"set tabstop=8
"set softtabstop=8

"Others
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Remember the last cursor which modified sources before
au BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "norm g`\"" |
	\ endif

map <C-h> :call CurtineIncSw()<CR>
