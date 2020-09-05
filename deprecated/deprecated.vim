"===
"=== Mappings
"===
noremap <silent> k j
noremap <silent> j h
noremap <silent> h i
noremap <silent> i k

nmap k <Plug>(accelerated_jk_gj)
nmap i <Plug>(accelerated_jk_gk)

noremap <silent> H I

map <silent> K 5k
map <silent> J 14j
map <silent> I 5i
map <silent> L 14l

map sj <C-w>h
map sk <C-w>j
map si <C-w>k
map sl <C-w>l

" ===
" === vim-go
" ===
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0




" ===
" === clap
" ===
"function! clap#find_file() abort
    "Clap files ++finder=rg --ignore --hidden --files
"endfunction

let s:user_init_vim = expand($HOME . '/.config/nvim/init.vim')
"let s:user_plugins = expand($HOME . '/plugins.yaml')
let s:user_zshrc = expand($HOME . '/.zshrc')
let s:user_tmux_conf = expand($HOME . '/.tmux.conf')

"let g:clap_cache_directory = $DATA_PATH . '/clap'
let g:clap_cache_directory = $HOME . '/.vim/cache/clap'
"let g:clap_theme = 'material_design_dark'
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_enable_icon = 1
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '

"let g:clap_provider_personalconf = {
      "\ 'source': [s:user_init_vim,s:user_plugins,s:user_zshrc,s:user_tmux_conf],
      "\ 'sink': 'e',
      "\ }

" A funtion to config highlight of ClapSymbol
" when the background color is opactiy
"function! s:ClapSymbolHL() abort
    "let s:current_bgcolor = synIDattr(hlID("Normal"), "bg")
    "if s:current_bgcolor == ''
        "hi ClapSymbol guibg=NONE ctermbg=NONE
    "endif
"endfunction

"autocmd User ClapOnEnter call s:ClapSymbolHL()
" Show all diagnostics  ❯❯❯ (Raphael 1 day ago) Update README.md
nnoremap <silent> sd  :Clap coc_diagnostics<CR>
" Manage extensions
nnoremap <silent> se  :Clap coc_extensions<CR>
" Show commands
nnoremap <silent> sc  :Clap coc_commands<CR>
" Search workspace symbols
nnoremap <silent> ss  :Clap coc_symbols<CR>
nnoremap <silent> st  :Clap coc_outline<CR>
nnoremap <silent> cs  :Clap coc_services<CR>
"Clap
nnoremap <silent> sh :<C-u>Clap history<CR>
nnoremap <silent> sw :<C-u>Clap windows<CR>
nnoremap <silent> se :<C-u>Clap loclist<CR>
nnoremap <silent> sg :<C-u>Clap git_diff_files<CR>
nnoremap <silent> <Leader>a :<C-u>Clap grep2<CR>
nnoremap <silent> <Leader>b :<C-u>Clap buffers<CR>
nnoremap <silent> <Leader>tc :<C-u>Clap colors<CR>
nnoremap <silent> <Leader>fb :<C-u>Clap marks<CR>
nnoremap <silent> <C-x><C-f> :<C-u>Clap filer<CR>
nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
nnoremap <silent> <Leader>fg :<C-u>Clap gfiles<CR>
nnoremap <silent> <Leader>fw :<C-u>Clap grep ++query=<cword><cr>
nnoremap <silent> <Leader>fv :<C-u>Clap grep ++query=@visual<CR>
nnoremap <silent> <Leader>oc :<C-u>Clap personalconf<CR>



 ===
 === Wildfire
 ===
map <space> <Plug>(wildfire-fuel)
vmap <s-space> <Plug>(wildfire-water)

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start         = 0
let g:mkdp_auto_close         = 1
let g:mkdp_refresh_slow       = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world  = 0
let g:mkdp_open_ip            = ''
let g:mkdp_browser            = 'chromium'
let g:mkdp_echo_preview_url   = 0
let g:mkdp_browserfunc        = ''
let g:mkdp_preview_options    = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css  = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port          = ''
let g:mkdp_page_title    = '「${name}」'


" ===
" === eleline
" ===
let g:eleline_powerline_fonts = 1

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


let java_highlight_functions="style"
let java_highlight_functions="indent"
let java_highlight_debug=1
