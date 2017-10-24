" Enabling syntax highlighting
syntax on

set tabstop=3
set shiftwidth=3
set smarttab
set et
set cin

set showmatch
set hlsearch      " Highlight search 
set incsearch     " Incremental search
set ignorecase


"-------------Appearance -----------------"
set number
colorscheme atom-dark-256
"colorscheme peachpuff


" Comma is the leader for all the custon mappings
let mapleader = ','

"-------------Insert Mappings -----------------"
" imap 

"------------ Normal mode mappings ------------"
" Edit vimrc
nmap <Leader>ev :tabedit ~/.vim/vimrc<cr>

" Turn off the search highlighting
nmap <Leader><Space> :nohlsearch<cr>


"------------- Splits Management -----------------"
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

" ------------- Auto Commands -----------------"
" Automaticaly source vimrc file on save
"augroup autosourcing
"   autocmd!
"   autocmd BufWritePost vimrc source %
"augroup END
