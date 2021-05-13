"===
"=== defx
"===

silent! call defx#custom#option('_', {
  \ 'columns': 'indent:icons:filename',
  \ 'winwidth': 30,
  \ 'split': exists('$ANDROID_ROOT') ? 'no' : 'vertical',
  \ 'direction': 'topleft',
  \ 'ignored_files': '',
  \ 'show_ignored_files': v:true,
  \ 'toggle': v:true,
  \ 'buffer_name': 'explorer',
  \ 'listed': v:true,
  \ 'resume': v:true
\ })

" Launch Defx.
nnoremap <silent> <F2> :Defx -columns=git:mark:indent:icons:filename:type -no-toggle -search=`expand('%:p')` `getcwd()`<CR>

augroup defxsettings
  autocmd!

  " Set common settings.
  autocmd FileType defx setlocal statusline=defx signcolumn=yes

  " Set mappings.
  autocmd FileType defx call s:defxmappings()

  function! s:defxmappings() abort
    " Navigation
    nnoremap <buffer><silent><expr> l
      \ defx#is_directory()
        \ ? defx#do_action('open_or_close_tree')
        \ : defx#do_action('drop')
    nnoremap <buffer><silent><expr> <2-LeftMouse>
      \ defx#is_directory()
        \ ? defx#do_action('open_or_close_tree')
        \ : defx#do_action('drop')
    "nnoremap <buffer><silent><expr> j defx#do_action('close_tree')
    nnoremap <buffer><silent><expr> h defx#do_action('close_tree')
    nnoremap <buffer><silent><expr> L defx#do_action('cd', defx#get_candidate().action__path)
    nnoremap <buffer><silent><expr> u defx#do_action('cd', ['..'])
    nnoremap <buffer><silent><expr> gh defx#do_action('cd', getcwd())
    nnoremap <buffer><silent><expr> ~ defx#do_action('open_tree_recursive')

    " Selection
    nnoremap <silent><buffer><expr><nowait> <Space>
      \ defx#do_action('toggle_select') . 'j'
    "nnoremap <buffer><silent><expr> uv defx#do_action('clear_select_all')

    " Operations
    nnoremap <buffer><silent><expr> yy defx#do_action('copy')
    nnoremap <silent><buffer><expr> yp defx#do_action('yank_path')
    nnoremap <buffer><silent><expr> dd defx#do_action('move')
    nnoremap <buffer><silent><expr> DD defx#do_action('remove_trash')
    nnoremap <buffer><silent><expr> pp defx#do_action('paste')
    nnoremap <buffer><silent><expr> cw defx#do_action('rename')
    nnoremap <buffer><silent><expr> a defx#do_action('new_multiple_files')

    " Other
    nnoremap <buffer><silent><expr> <C-r> defx#do_action('redraw')
    nnoremap <buffer><silent><expr> <C-g> defx#do_action('print')
    nnoremap <buffer><silent><expr> zh defx#do_action('toggle_ignored_files')
    nnoremap <buffer><silent><expr> ypf defx#do_action('yank_path')
  endfunction
augroup end

"icons
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✗',
  \ 'Unknown'   : '?'
  \ })
scriptencoding UTF-8
let g:defx_icons_enable_syntax_highlight = v:true
let g:defx_icons_column_length = 1
let g:defx_icons_directory_icon = ''
let g:defx_icons_mark_icon = ''
let g:defx_icons_parent_icon = ''
let g:defx_icons_root_opened_tree_icon = ''
let g:defx_icons_default_icon = ''
let g:defx_icons_directory_symlink_icon = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''

let g:defx_icons_extensions = {
  \ 'ini': {'icon': '', 'color': '4c566a'},
  \ 'yaml': {'icon': '', 'color': '4c566a'},
  \ 'yml': {'icon': '', 'color': '4c566a'},
  \ 'h': {'icon': '', 'color': 'B48EAD'},
  \ 'hxx': {'icon': '', 'color': 'B48EAD'},
  \ 'hpp': {'icon': '', 'color': 'B48EAD'},
  \ 'zsh': {'icon': '', 'color': '834F79'},
  \ 'bash': {'icon': '', 'color': '834F79'},
  \ 'key': {'icon': '', 'color': 'c2e98d'},
  \ }

let g:defx_icons_exact_matches ={
  \ 'makefile': {'icon': '', 'color': '4c566a'},
  \ 'cmakelists.txt': {'icon': '', 'color': '4c566a'},
  \ '.gitignore': {'icon': '', 'color': '5c6773'},
  \ 'license': {'icon': '', 'color': 'c2e98d'},
  \ 'conf': {'icon': '', 'color': '4c566a'},
  \ }

call defx#custom#column('mark', {
  \ 'readonly_icon': '✗',
  \ 'selected_icon': '✓',
  \ })

autocmd FileType defx setlocal nonumber
autocmd FileType defx setlocal norelativenumber
autocmd FileType defx setlocal signcolumn=no
