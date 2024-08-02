let g:airline_section_z = airline#section#create(['windowswap', '%p%% ☰', 'linenr'])
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='256noir'
let g:airline_skip_empty_sections = 1
let g:airline_section_x = airline#section#create_right(['tagbar'])

  function! AirlineInit()
    let g:airline_section_c='%F'

  endfunction
  autocmd User AirlineAfterInit call AirlineInit()
