execute pathogen#infect()
filetype plugin indent on

set guifont=Hack:h20

set nu

set syntax=manual
set nohlsearch
set autoindent
set cursorline
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevelstart=99
colorscheme Tomorrow-Plain
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

let g:buftabline_numbers = 1

let g:jsx_ext_required = 0

let NERDTreeQuitOnOpen=1

let mapleader="\<SPACE>"

map <F8> :ls<CR>:b
nmap <F9> :Git! diff %<CR>
nmap <F10> :Git! diff ./<CR>
nnoremap <C-Up> :move -2<CR>
nnoremap <C-Down> :move +1<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
noremap [b :bp<CR>
noremap ]b :bn<CR>
noremap <C-J> 5j<CR>
noremap <C-K> 5k<CR>
imap jj <Esc>
imap ii <ESC>:w<CR>a
nmap <Leader>b :b
nmap <Leader>c :!grunt recompile:css<CR>
nmap <Leader>d :bd *<C-A>
nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>h :set hlsearch! hlsearch?<CR>
nmap <Leader>j :!grunt recompile:js<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>s :Ag! <C-R><C-W>
nmap <Leader>x :if exists("g:syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> endif<CR>

highlight DebugCode ctermfg=red guifg=red
match DebugCode /console\|debugger;/

" let g:scheme_builtin_swank = 1
" let g:slimv_swank_scheme = '!osascript -e "tell application \"Terminal\" to do script \"!scheme --load /Users/bmo/projects/personal/scheme/mit-scheme-swank/swank.scm &\""'
let g:slimv_swank_scheme = '!scheme --load /Users/bmo/.vim/bundle/slimv/slime/contrib/swank-mit-scheme.scm &'
" let g:slimv_swank_scheme = '! xterm -e /Applications/MIT:GNU\ Scheme.app/Contents/Resources/mit-scheme --load /Users/bmo/.vim/bundle/slimv/slime/contrib/swank-mit-scheme.scm &'
" let g:slimv_menu = 1
let g:slimv_lisp = '"lein repl"'
let g:paredit_mode=0
