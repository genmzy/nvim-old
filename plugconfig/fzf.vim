" ===
" === FZF
" ===

let g:vista_fzf_preview = ['down:50%']
let g:fzf_layout = {
    \'window': {
      \'width': 0.9,
      \'height': 0.9,
      \'highlight': 'Todo',
      \'border': 'sharp',
    \},
\}

function! s:blinesHandler(lines) abort
    if len(a:lines) < 2
        return
    endif
    execute split(a:lines, '\t')[0]
    normal! zvzz
endfunction

function! s:blinesList() abort
    let fmtexpr = 'printf("%4d\t%s", v:key + 1, v:val)'
    let lines = getline(1, '$')
    return map(lines, fmtexpr)
endfunction

function! s:FzfBLines(...) abort
    if a:0 == 0
        let l:query = ""
    else
        let l:query = a:1
    endif

    let l:cur_buf_name = expand('%')
    let s:options = [
                \ '--prompt=BLines> ',
                \ '--query', l:query,
                \ '--preview-window=up:0%:wrap'
            \ ]
    if empty(l:cur_buf_name)
      let s:options[4] = '--preview=echo please save first to preview'
    endif
    call fzf#run(fzf#wrap({
            \ 'source': s:blinesList(),
            \ 'sink': function('<SID>blinesHandler'),
            \ 'options': s:options,
            \ }))
endfunction
command! -bang -nargs=* FzfBLines call s:FzfBLines()

let g:coc_fzf_preview='up:50%:wrap:sharp'
let g:fzf_preview_window = 'up:50%:wrap:sharp'

let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"nnoremap <silent> <leader>a :Ag<cr>
nnoremap <silent> <leader>a :Rg<cr>
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>e :CocFzfList extensions<cr>
nnoremap <silent> <leader>ss :Snippets<cr>
nnoremap <silent> <leader>ct :Colors<cr>
nnoremap <silent> <leader>mk :Marks<cr>

" For fuzzy finding current file lines, much better than '/' to search
"nnoremap <silent> <leader>l :BLines<cr>
nnoremap <silent> <leader>l :FzfBLines<cr>

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
