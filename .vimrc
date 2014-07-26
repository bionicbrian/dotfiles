execute pathogen#infect()
syntax on
filetype plugin indent on

set guifont=Menlo:h18

set nu

set nohlsearch
set autoindent
set cursorline
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevelstart=0
colorscheme Tomorrow
set laststatus=2
set guioptions-=T
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set hidden
set suffixesadd+=.js

" Trim trailing white space
autocmd BufWritePre *.js :%s/\s\+$//e

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let NERDTreeQuitOnOpen=1

map <C-n> :NERDTreeToggle<CR>
map <F8> :ls<CR>:b
nmap <F9> :NERDTreeFind<CR>
nnoremap <C-Up> :move -2<CR>
nnoremap <C-Down> :move +1<CR>
noremap [b :bp<CR>
noremap ]b :bn<CR>

