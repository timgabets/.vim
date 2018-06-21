set nocompatible                                                              " The latest vim settings wanted

source ~/.vim/plugins.vim

" Enabling syntax highlighting
syntax on

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

set showmatch
set hlsearch      " Highlight search
set incsearch     " Incremental search
set ignorecase

"-------------Appearance -----------------"
set number
"colorscheme bubblegum-256-dark
colorscheme deus


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

"------------------- airline  --------------------"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

"------------------- Buffers --------------------"
nmap <Leader>l :ls<cr>
nmap <Leader>b :b
nmap <Leader>h :bprev<cr>
nmap <Leader>l :bnext<cr>
nmap <Leader>q :bd<cr>

set list!
set listchars=tab:▸\ ,space:·

"Invisible character colors
" highlight NonText guifg=#4a4a59
" highlight SpecialKey guifg=#4a4a59

" Highligh the trailing whitespaces:
match ErrorMsg '\s\+$'

" ------------- Auto Commands -----------------"
" Automaticaly source vimrc file on save
"augroup autosourcing
"   autocmd!
"   autocmd BufWritePost vimrc source %
"augroup END
