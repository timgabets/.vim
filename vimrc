set nocompatible                                                              " The latest vim settings wanted

source ~/.vim/plugins.vim

" Enabling syntax highlighting
syntax on

set tabstop=2
set shiftwidth=2
set smarttab
set et
set cin

set showmatch
set hlsearch      " Highlight search 
set incsearch     " Incremental search
set ignorecase


"-------------Appearance -----------------"
set number
colorscheme bubblegum-256-dark


" Comma is the leader for all the custon mappings
let mapleader = ','

"---------------------- Ctrl-P Settings  ------------------------"
" 
" https://github.com/ctrlpvim/ctrlp.vim
"
" Excluding some file types and directories from Ctrl-P search:
set wildignore+=*/tmp/*,*.o,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules'


"--------------------- vim-fugitive (git) --------------------"
" 
" https://github.com/tpope/vim-fugitive
"
" git status
nmap <Leader>gs :Gstatus<cr>
" git commit 
nmap <Leader>gc :Gcommit<cr>i
" git push
nmap <Leader>gp :Gpush<cr>

"---------------------- Ag (file search) --------------------"
" 
" :Ack
nmap <Leader>a :Ack 


"-------------Insert Mappings -----------------"
" imap 
 
"------------ Normal mode mappings ------------"
" Edit vimrc
nmap <Leader>ev :tabedit ~/.vim/vimrc<cr>

" Toggle NERDtree
nmap <Leader>d :NERDTreeToggle<cr>


" Turn off the search highlighting
nmap <Leader><Space> :nohlsearch<cr>


"------------- Splits Management -----------------"
set splitbelow
set splitright

nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

nmap <Leader>- :vertical resize -10<cr>
nmap <Leader>= :vertical resize +10<cr>

"------------------- Ack/Ag seach ----------------"
let g:ackprg = 'ag --nogroup --nocolor --column'

" Highligh the trailing whitespaces:
" match ErrorMsg '\s\+$'

" ------------- Auto Commands -----------------"
" Automaticaly source vimrc file on save
"augroup autosourcing
"   autocmd!
"   autocmd BufWritePost vimrc source %
"augroup END
