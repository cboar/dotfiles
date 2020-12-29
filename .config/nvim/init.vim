call plug#begin('~/.config/nvim/plugged')
        Plug 'mxw/vim-jsx'
        Plug 'pangloss/vim-javascript'
        Plug 'easymotion/vim-easymotion'
        Plug 'scrooloose/nerdtree'
        Plug 'jistr/vim-nerdtree-tabs'
	Plug 'vim-airline/vim-airline'
call plug#end()

" PERSONAL
filetype indent plugin on
let mapleader="\<Space>"
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let g:nerdtree_tabs_autofind=1

let g:airline_theme="custom"
"let g:airline_powerline_fonts=1
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

map ` :wa<CR>:!comprun-file "%:p" norm<CR>
map ~ :wa<CR>:!comprun-file "%:p" shift<CR>
map ` :wa<CR>:!comprun-file "%:p" alt<CR>

nnoremap <silent> <esc> :noh<CR><esc>
nnoremap <esc>^[ <esc>^[

if @% == ""
	au VimEnter * NERDTreeMirrorOpen
endif

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
set t_Co=256
set pastetoggle=<F1>
