set shellslash

set number
set cursorline 
set ruler
set noerrorbells

set lazyredraw

set magic

set hlsearch
set incsearch
"set ignorecase
"set smartcase

set nocompatible
set backspace=2
:autocmd InsertEnter,InsertLeave * set cul!

set showmatch
set mat=2

set title

set autoindent
"set smartindent
set cindent
set clipboard=unnamedplus
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

set wildmenu
set wildmode=list:longest,full

set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set ffs=unix,dos


" Visually select the text that was last edited/pasted.
nnoremap gV `[v`]

inoremap jj <Esc>
"inoremap JJ <Esc>
"#ifdef 
"inoremap fd <Esc>

:command WQ wq
:command Wq wq
:command W w
:command Q q

:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>

map <silent> <Up> gk
imap <silent> <Up> <C-o>gk
map <silent> <Down> gj
imap <silent> <Down> <C-o>gj
map <silent> <home> g<home>
imap <silent> <home> <C-o>g<home>
map <silent> <End> g<End>
imap <silent> <End> <C-o>g<End>

let mapleader=","
nnoremap <leader>s :mksession<CR>
nnoremap <leader>u :GundoToggle<CR>

nnoremap H ^
nnoremap L $

nmap <silent> <leader><space> :nohlsearch<CR>
nmap <silent> HEX :%!xxd<CR>
nmap <silent> HEXR :%!xxd -r<CR>

" Map Q to repeat last run macro.
map Q @@

map Y y$

set pastetoggle=<F3>

"Easymotion settings

let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap f <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-bd-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" vim plugins management
execute pathogen#infect()
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
syntax on


"vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = 'latex'
let g:Tex_DefaultTargetFormat='pdf'

"YouCompleteMe
"let g:ycm_global_ycm_extra_conf='/home/witcher/.vim/bundle/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='/home/witcher/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1 " auto-close preview window after select a completion string
let g:ycm_autoclose_preview_window_after_insertion=1 " close preview window after leaving insert mode
nnoremap <leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>ydc :YcmCompleter GoToDeclaration<CR>
nmap <leader>ys <Plug>(YCMFindSymbolInWorkspace)
let g:ycm_auto_hover=''

"set foldlevelstart=10
"set foldnestmax=10
nnoremap <space> za

" nerdtree插件配置
let g:NEARDTreeShowHidden = 1          "显示隐藏文件
let g:NEARDTreeWinPos = 'left'         "左侧显示
nnoremap <F2> :NERDTreeToggle<CR>      "按F2打开/关闭文件树
nnoremap <F1> :NERDTreeFind<CR>        "按F1打开文件树，自动定位到当前文件

" gzip
let loaded_gzip = 1

" format code
" autocmd BufNewFile,BufRead *.cpp set formatprg=~/StorageComp/99Others/AStyle_3.1_windows/AStyle/build/astyle\ -T4pb


set autoread
au CursorHold * checktime
set showcmd

set foldmethod=manual
set foldmethod=syntax
set nofoldenable
