set background=dark
syntax on
colorscheme railscasts 

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


" open nerd tree, and jump to the editing window
au VimEnter * set laststatus=2
au VimEnter * NERDTree
au VimEnter * wincmd p


"set up minibufexplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

let mapleader = ","

"invisibles
map ,l :set list!<CR>
set listchars=tab:▸\ ,eol:¬	

",v brings up my .vimrc
",V reloads it -- making all changes active (have to save first)

map ,v :sp ~/.vimrc<CR><C-W>_
map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>


" for close windows
nmap <C-W>! <Plug>Kwbd

"textmate indent commands
map <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
