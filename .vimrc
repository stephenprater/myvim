set background=dark
syntax on
colorscheme railscasts 


set nocompatible
filetype on
filetype plugin on

set number

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab

set backspace=2
set cmdheight=2
set ruler
set history=100
set undolevels=100
set autoindent

"set up minibufexplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 


"remap the snippets key to command-tab
let g:snippetsEmu_key = "<M-Tab>"

let mapleader = ","

"invisibles
map ,l :set list!<CR><C-W>_
set listchars=tab:▸\ ,eol:¬

set list

",v brings up my .vimrc
",V reloads it -- making all changes active (have to save first)

map ,v :sp ~/.vimrc<CR>
map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>


" for close windows
nmap <C-W>! <Plug>Kwbd

"textmate indent commands
map <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

"yank ring - set window size and return to [no name]
function SPYrSetup()
  YRShow
  let g:yankring_window_auto_close=0
  let cr_win=winnr()
  let yr_win=bufwinnr('__YankRing__')
  exec yr_win."wincmd w"
  setlocal winfixheight winfixwidth winheight=12 winwidth=9999
  normal gg
  exec cr_win."wincmd w"
endfunction

" open nerd tree, and jump to the editing window
au VimEnter * set laststatus=2
au VimEnter * NERDTree
au VimEnter * wincmd p
au VimEnter * call SPYrSetup()

set lines=80 columns=258

