"Yank tmux buffer to Xclip
nnoremap <silent> <leader>c :silent !tmux save-buffer - \| xclip -selection clipboard<CR>

set clipboard+=unnamedplus

"let g:transparent_enabled = v:true
let g:prettier#autoformat = 1

"yanking to clipboard
vnoremap y "+y
 
inoremap <C-s> <Esc>:/ <CR>
vnoremap <C-s> <Esc>:/ <CR>
 
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
 
:nnoremap <esc> :noh<return><esc>

