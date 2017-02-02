" VUNDLE
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'easymotion/vim-easymotion'
	Plugin 'bling/vim-airline'
	Plugin 'scrooloose/nerdtree'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'gmarik/Vundle.vim'
call vundle#end()

" PERSONAL
filetype plugin indent on
let mapleader="\<Space>"
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let g:nerdtree_tabs_autofind=1
let g:airline_theme="custom"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#show_tab_nr=0
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tabline#tab_min_count=2
let g:airline#extensions#tabline#show_close_button=0

map  J <Plug>(easymotion-w)
map  K <Plug>(easymotion-b)
map H Hzz
map L Lzz

if @% == ""
	au VimEnter * NERDTreeMirrorOpen
endif

map ` :wall<CR>:!comprun-file "%:p" norm<CR>
map ~ :wall<CR>:!comprun-file "%:p" shift<CR>
map ` :wall<CR>:!comprun-file "%:p" alt<CR>

nmap R :%s//g<Left><Left>
map <silent> O :tabe<CR>:NERDTreeMirrorOpen<CR>
map <silent> <Leader><Tab> :NERDTreeMirrorToggle<CR>
map <silent> <S-Tab> :wincmd w<CR>

noremap <Backspace> i<Backspace>
noremap <CR> A<CR>
noremap <Tab> gt
nnoremap <silent> <esc> :noh<CR><esc>
nnoremap <esc>^[ <esc>^[

inoremap {<CR> {<CR>}<Esc>ko
command! -nargs=0 Sw w !sudo tee % > /dev/null

syntax enable
colorscheme phoenix
set hlsearch
set incsearch
set ruler
set nowrap
set autoread
set noswapfile
set cursorline
set autoindent
set copyindent
set t_Co=256
set tabstop=4
set shiftwidth=4
set softtabstop=4
set pastetoggle=<F2>
set backspace=indent,eol,start
