"Yank tmux buffer to Xclip
nnoremap <silent> <leader>c :silent !tmux show-buffer \| xclip -i -selection clipboard <CR>:echo "Text copied !" <CR>

"Git diff checking 
nnoremap <silent> <leader>cd :execute 'silent !echo ' . shellescape(expand('%:p')) . ' \| xclip -i -selection clipboard'<CR>

"set clipboard+=unnamedplus
set clipboard=unnamedplus
set clipboard+=unnamed

"let g:transparent_enabled = v:true
let g:prettier#autoformat = 1

"yanking to clipboard
vnoremap y "+y
 
inoremap <C-s> <Esc>:/ <CR>
vnoremap <C-s> <Esc>:/ <CR>
 
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
 
:nnoremap <esc> :noh<return><esc>

