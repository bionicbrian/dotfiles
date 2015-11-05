execute pathogen#infect()
syntax on
filetype plugin indent on

set guifont=Hack:h18

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

" Make Vim recognize Markdown rather than Modula2
au BufRead,BufNewFile *.md set filetype=markdown

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:jsx_ext_required = 0

let NERDTreeQuitOnOpen=1

let mapleader="\<SPACE>"

map <C-n> :NERDTreeToggle<CR>
nmap <F3> :NERDTreeFind<CR>
map <F8> :ls<CR>:b
nmap <F9> :Git! diff %<CR>
nmap <F10> :Git! diff ./<CR>
nnoremap <C-Up> :move -2<CR>
nnoremap <C-Down> :move +1<CR>
noremap [b :bp<CR>
noremap ]b :bn<CR>
noremap <C-J> 5j<CR>
noremap <C-K> 5k<CR>
imap jj <Esc>
map <Leader>c :!grunt recompile:css<CR>

" let g:scheme_builtin_swank = 1
" let g:slimv_swank_scheme = '!osascript -e "tell application \"Terminal\" to do script \"!scheme --load /Users/bmo/projects/personal/scheme/mit-scheme-swank/swank.scm &\""'
let g:slimv_swank_scheme = '!scheme --load /Users/bmo/.vim/bundle/slimv/slime/contrib/swank-mit-scheme.scm &'
" let g:slimv_swank_scheme = '! xterm -e /Applications/MIT:GNU\ Scheme.app/Contents/Resources/mit-scheme --load /Users/bmo/.vim/bundle/slimv/slime/contrib/swank-mit-scheme.scm &'
" let g:slimv_menu = 1
let g:paredit_mode=0
