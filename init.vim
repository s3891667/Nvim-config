source $HOME/.config/nvim/lua/init.lua
source $HOME/.config/nvim/vim-plug/plugins.vim

set completeopt=menuone,noinsert,noselect

let g:airline_section_c = '%t'
let g:airline_section_z = airline#section#create(['windowswap', '%p%% ☰', 'linenr'])
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='catppuccin'
"Yank tmux buffer to Xclip
nnoremap <silent> <leader>c :silent !tmux save-buffer - \| xclip -selection clipboard<CR>


:nnoremap <Leader>n :set invnumber number?<CR>
" remove separators for empty sections
let g:airline_skip_empty_sections = 1
" remove the filetype part
let g:airline_section_x = airline#section#create_right(['tagbar'])


set clipboard+=unnamedplus


let g:python3_host_prog = "/home/wizburss/anaconda3/envs/py38/bin/python3.8"

:set hidden
:set number
:set ignorecase
:set termguicolors
:set cursorline
set signcolumn=yes

let g:transparent_enabled = v:true
let g:prettier#autoformat = 1
 
:map <C-t> :NvimTreeToggle <CR>
:map <C-y> :UndotreeToggle <CR>
        
nnoremap <C-f> :Telescope find_files <CR>
nnoremap <C-g> :Telescope live_grep <CR>


"yanking to clipboard
vnoremap y "+y
 
 
inoremap <C-s> <Esc>:/ <CR>
vnoremap <C-s> <Esc>:/ <CR>
 
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

 
"autocommand
vmap <silent><C-C> <plug>NERDCommenterToggle 
nmap <silent><C-C> <plug>NERDCommenterToggle 
 
 
 
:nnoremap <esc> :noh<return><esc>
 
