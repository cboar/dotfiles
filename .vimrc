" VUNDLE
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'kien/ctrlp.vim'
	Plugin 'mxw/vim-jsx'
	Plugin 'pangloss/vim-javascript'
	Plugin 'easymotion/vim-easymotion'
	Plugin 'bling/vim-airline'
	Plugin 'scrooloose/nerdtree'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'gmarik/Vundle.vim'
call vundle#end()

" PERSONAL
filetype indent on
let mapleader="\<Space>"
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1

let g:ctrlp_user_command = 'fd -e js -e json -t f -c never "" %s'
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_cmd = ':NERDTreeClose\|CtrlP'

let g:nerdtree_tabs_autofind=1
let g:airline_theme="custom"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#show_tab_nr=0
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tabline#show_tab_count=0
let g:airline#extensions#tabline#tab_min_count=2
let g:airline#extensions#tabline#show_splits=0
let g:airline#extensions#tabline#show_close_button=0

" MOTION
map J <Plug>(easymotion-w)
map K <Plug>(easymotion-b)
map H Hzz
map L Lzz

nnoremap <silent> <esc> :noh<CR><esc>
nnoremap <esc>^[ <esc>^[

if @% == ""
	au VimEnter * NERDTreeMirrorOpen
endif

map ` :wa<CR>:!comprun-file "%:p" norm<CR>
map ~ :wa<CR>:!comprun-file "%:p" shift<CR>
map ` :wa<CR>:!comprun-file "%:p" alt<CR>

nmap R :%s//g<Left><Left>
map <silent> o :NERDTreeFind<CR>
map <silent> O :tabe<CR>:NERDTreeMirrorOpen<CR>
map <silent> <Leader><Tab> :NERDTreeMirrorToggle<CR>
map <silent> <S-Tab> :wincmd w<CR>

noremap <Backspace> i<Backspace>
noremap <CR> A<CR>
noremap <Tab> gt
inoremap {<CR> {<CR>}<Esc>ko

syntax enable
colorscheme phoenix
set listchars=tab:→\ ,nbsp:␣,trail:•,precedes:«,extends:»
set ignorecase
set smartcase
set nowrap
set autoread
set noswapfile
set cursorline
set autoindent
set hlsearch
set incsearch
"set cc=90
set t_Co=256
set tabstop=4
set shiftwidth=4
set pastetoggle=<F1>
set backspace=indent,eol,start

nmap ? :call <SID>SynStack()<CR>
function <SID>SynStack()
	echo synIDattr(synID(line("."),col("."),1),"name") . ', ' . synIDattr(synID(line("."),col("."),0),"name") . ", " . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
endfunc
