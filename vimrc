" Enabling syntax highlighting
"syntax on

set tabstop=3
set shiftwidth=3
set smarttab
set et
set cin

set showmatch
set hlsearch      " Highlight search 
set incsearch     " Incremental search
set ignorecase

set number
colorscheme desert
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

" ------------- Auto Commands -----------------"
" Automaticaly source vimrc file on save
augroup autosourcing
   autocmd!
   autocmd BufWritePost vimrc source %
augroup END
