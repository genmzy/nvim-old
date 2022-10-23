" ===
" === FZF
" ===

let $FZF_DEFAULT_OPTS='--tabstop=4'
let $FZF_DEFAULT_COMMAND='rg --files --hidden -g !.git/ -g !.github/'
let $FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || cat {}) 2> /dev/null'

let g:vista_fzf_preview = ['down:50%']
let g:fzf_layout = {
    \'window': {
      \'width': 0.9,
      \'height': 0.9,
      \'highlight': 'LineNr',
      \'border': 'rounded',
    \},
\}

let g:coc_fzf_preview='up:50%:wrap:sharp'
let g:fzf_preview_window=['up:50%:wrap:sharp', 'ctrl-/']
let g:coc_fzf_preview_toggle_key='ctrl-/'

let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"nnoremap <silent> <leader>a :Ag<cr>
nnoremap <silent> <leader>a :Rg<cr>
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>e :CocFzfList extensions<cr>
nnoremap <silent> <leader>ss :Snippets<cr>
nnoremap <silent> <leader>ct :Colors<cr>
nnoremap <silent> <leader>mk :Marks<cr>

" fuzzy finding in current buffer, instead of `/`
nnoremap <silent> <leader>l :BLines<cr>

" Git searches
nnoremap <silent> <leader>gf :GFiles?<cr>
nnoremap <silent> <leader>gl :Commits<cr>
nnoremap <silent> <leader>si :History<cr>

command! -bang Config call fzf#vim#files($root, <bang>0)
nnoremap <silent> <leader>w :Config<cr>


let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'Keyword', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment']
  \ }
