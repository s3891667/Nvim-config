source $HOME/.config/nvim/lua/init.lua
source $HOME/.config/nvim/vim-plug/plugins.vim

set completeopt=menuone,noinsert,noselect

"Cursor blink
set guicursor+=a:blinkon500

"Yank tmux buffer to Xclip
nnoremap <silent> <leader>c :silent !tmux save-buffer - \| xclip -selection clipboard<CR>


:nnoremap <Leader>n :set invnumber number?<CR>



set clipboard+=unnamedplus


let g:python3_host_prog = "/home/wizburss/anaconda3/envs/py38/bin/python3.8"

:set hidden
:set number
:set ignorecase
:set termguicolors
:set cursorline
set signcolumn=yes

"let g:transparent_enabled = v:true
let g:prettier#autoformat = 1

"yanking to clipboard
vnoremap y "+y
 
 
inoremap <C-s> <Esc>:/ <CR>
vnoremap <C-s> <Esc>:/ <CR>
 
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

 
vmap <silent><C-C> <plug>NERDCommenterToggle 
nmap <silent><C-C> <plug>NERDCommenterToggle 
 
 
 
:nnoremap <esc> :noh<return><esc>

