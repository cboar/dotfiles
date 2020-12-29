call plug#begin('~/.config/nvim/vs-plugged')
        Plug 'asvetliakov/vim-easymotion'
call plug#end()

map J <Plug>(easymotion-w)
map K <Plug>(easymotion-b)
map H 50k<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>
map L 50j<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>

map ` <Cmd>call VSCodeNotify('workbench.action.tasks.runTask','comprun-file')<CR>

noremap <Tab> <Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<CR>
noremap <Backspace> i<Backspace>
noremap <CR> A<CR>
nnoremap <silent> <esc> :noh<CR><esc>
nnoremap <esc>^[ <esc>^[

set hlsearch
set incsearch
set ignorecase
set smartcase
set autoread
set noswapfile
