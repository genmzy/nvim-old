" ===
" === airline
" ===
let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#buffer_nr_show=1
"let g:airline#extensions#tabline#tabs_label = '﬘'
"let g:airline#extensions#tabline#buffers_label = ''
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, ' ' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, ' ' . info['warning'])
  endif
  if get(info, 'information', 0)
    call add(msgs, ' ' . info['information'])
  endif
  if get(info, 'hint', 0)
    call add(msgs, ' ' . info['hint'])
  endif
  return join(msgs, ' ')
endfunction
"let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
"let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#exclude_preview = 1
let g:airline_section_warning = airline#section#create_right(['%{StatusDiagnostic()}'])
