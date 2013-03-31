colorscheme solarized
set pastetoggle=<F2>
set foldmethod=syntax
syn region CodeBlock start=/{/ end=/}/ transparent fold
syn match Function /\(new\s\+\)\@<=\w\+/
syn keyword Keyword todo rewrite done
syn match Float /\d\+\(\.\d\)\=/
syn region SomeHighlightStyle start=/start-regexp/ end=/end-regexp/ skip=/regexp-to-skip-and-not-treat-as-an-end-regexp/
syn region String start=/"/ end=/"/
syn region Comment start=/\/\*/ end=/\*\//
syn region Comment start=/\/\*/ end=/\*\// fold
syn case ignore

au BufRead,BufNewFile *.dump set filetype=mysql
set showbreak=->

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Fuzzy
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>


let g:html_dynamic_folds=1
let g:html_number_lines = 1
let html_use_css = 1
let g:EasyMotion_leader_key ='t'

set nocompatible      " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'mru.vim'
Bundle 'FuzzyFinder'
Bundle 'minibufexplorerpp'
" non github repos
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

