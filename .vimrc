set nocompatible              
filetype plugin indent on 
set timeoutlen=1000 ttimeoutlen=10
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set background=dark
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
" -------------------------------------------------------
execute pathogen#infect()
" -------------------------------------------------------

colorscheme molokai
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

hi MatchParen cterm=bold ctermbg=none ctermfg=white

" -------------------------------------------------
"                     MAPPINGS
" -------------------------------------------------
let mapleader = ","
" commands
nmap <Leader>q :NERDTreeToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
" golang bindings
au FileType go nmap <Leader>r :GoRename<CR>
au FileType go nmap <Leader>d :GoDef<CR>
au FileType go nmap <Leader>p :GoDefPop<CR>
au FileType go nmap <Leader>b :GoBuild<CR>
" navigate splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
" navigate buffers
" TODO
" navigate tabs
" TODO
" insert space in normal mode
nnoremap <Space> i<Space><Esc>

" other options
let g:go_fmt_command = "goimports" " fix imports when saving
