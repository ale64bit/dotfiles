set nocompatible              
filetype off

" ------------------- plugins --------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'ocaml/vim-ocaml'
Plugin 'sbdchd/neoformat'
Plugin 'scrooloose/nerdtree'
Plugin 'tikhomirov/vim-glsl'
call vundle#end()

" -------------------------------------------------------
let mapleader = ","
filetype plugin indent on 
set timeoutlen=1000 ttimeoutlen=10
set tabstop=2
set shiftwidth=2
set expandtab
set number relativenumber
set cursorline
set regexpengine=1
set lazyredraw
set ttyfast
set synmaxcol=200
set background=dark
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
syntax on
colorscheme molokai
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
hi MatchParen cterm=bold ctermbg=none ctermfg=white

" -------------------------------------------------
"                     MAPPINGS
" -------------------------------------------------
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
" commands
nmap <F2> :NERDTreeToggle<CR>
nmap <F10> :TagbarToggle<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <C-Tab> :bprevious<CR>
" navigate splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
" navigate buffers
nnoremap <Leader>c :bp\|bd #<CR>
nnoremap <Leader>h :bp<CR>
nnoremap <Leader>l :bn<CR>
" navigate tabs
" TODO
" insert space in normal mode
nnoremap <Space> i<Space><Esc>

" other options

set statusline+=%#warningmsg#
set statusline+=%*

