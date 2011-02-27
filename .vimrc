set nocompatible

call pathogen#runtime_append_all_bundles()

set hidden

filetype off

set autochdir

set autoindent
set smartindent

set hlsearch
set incsearch

"set expandtab
set tabstop=4
set shiftwidth=4

set number
set ruler

set laststatus=2

set showcmd
set showmode

set backspace=indent,eol,start

set showmatch
set vb t_vb=
"set virtualedit=all

set wildmenu
set wildmode=list:longest

set wrap

set ignorecase
set smartcase

set nobackup
set nowritebackup
set directory=$HOME/.tmp/vim/

syntax on
set background=dark
colorscheme ir_black

filetype plugin indent on

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
au BufNewFile,BufRead *.less set filetype=less

map <Leader>t :FuzzyFinderTextMate<Enter>

nmap <Tab> >>
nmap <S-Tab> <<

vmap <Tab> >
vmap > >gv
vmap <S-Tab> <
vmap < <gv

nmap ` :FufCoverageFile<CR>

let javaScript_fold=1
