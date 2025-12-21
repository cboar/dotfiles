local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
  Plug 'smoka7/hop.nvim'
  if not vim.g.vscode then
    Plug 'preservim/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'vim-airline/vim-airline'
  end
vim.call('plug#end')

require'hop'.setup()

vim.cmd([[
  let mapleader="\<Space>"
  map J <cmd>HopWordAC<CR>
  map K <cmd>HopWordBC<CR>

  noremap <Backspace> i<Backspace>
  noremap <CR> A<CR>
  nnoremap <silent> <esc> :noh<CR><esc>
  nnoremap <esc>^[ <esc>^[

  set notermguicolors
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set autoread
  set noswapfile
]])

vim.schedule(function()
  vim.cmd([[
    hi HopNextKey cterm=bold gui=bold ctermfg=196 guifg=#ff0000
    hi HopNextKey1 cterm=bold gui=bold ctermfg=208 guifg=#ff8700
    hi HopNextKey2 cterm=bold gui=bold ctermfg=208 guifg=#ff8700
  ]])
end)

if vim.g.vscode then
  vim.cmd([[
    map H 50k<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>
    map L 50j<Esc>:call VSCodeExtensionNotify('reveal','center',0)<CR>
    map ` <Cmd>call VSCodeNotify('workbench.action.tasks.runTask','comprun-file')<CR>
    noremap <Tab> <Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<CR>
  ]])
else
  vim.cmd([[
    let NERDTreeMinimalUI=1
    let NERDTreeQuitOnOpen=1
    let g:nerdtree_tabs_autofind=1
    let g:airline_theme="custom"
    let g:airline#extensions#tabline#formatter='unique_tail'
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#show_buffers=0
    let g:airline#extensions#tabline#show_tab_nr=0
    let g:airline#extensions#tabline#show_tab_type=0
    let g:airline#extensions#tabline#show_tab_count=0
    let g:airline#extensions#tabline#tab_min_count=2
    let g:airline#extensions#tabline#show_splits=0
    let g:airline#extensions#tabline#show_close_button=0

    map H Hzz
    map L Lzz
    inoremap {<CR> {<CR>}<Esc>ko

    noremap <Tab> gt
    map <silent> <S-Tab> :wincmd w<CR>
    map <silent> o :NERDTreeFind<CR>
    map <silent> O :tabe<CR>:NERDTreeMirrorOpen<CR>
    map <silent> <Leader><Tab> :NERDTreeMirrorToggle<CR>
    map ` :wa<CR>:!comprun-file "%:p" norm<CR>
    map ~ :wa<CR>:!comprun-file "%:p" shift<CR>
    map ` :wa<CR>:!comprun-file "%:p" alt<CR>

    if @% == ""
      au VimEnter * NERDTreeMirrorOpen
    endif

    filetype indent plugin on
    colorscheme phoenix
    syntax enable
    set list
    set listchars=tab:→\ ,nbsp:␣,trail:·,precedes:«,extends:»
    set tabstop=2 softtabstop=0
    set shiftwidth=2 smarttab
    set expandtab
    set nowrap
    set cursorline
    set autoindent
    set t_Co=256
  ]])
end
