" ===
" === FZF
" ===

let g:vista_fzf_preview = ['down:50%']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
let g:coc_fzf_preview='right:50%'
let g:fzf_preview_window = 'right:50%'

"" Change the position, if set this, the window will split right
"let g:fzf_layout = { 'right': '~50%' }

let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:airline#extensions#fzf#enabled = 1

"nnoremap <silent> <leader>a :Ag<cr>
nnoremap <silent> <leader>a :Rg<cr>
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>e :CocFzfList extensions<cr>
nnoremap <silent> <leader>ss :Snippets<cr>
nnoremap <silent> <leader>ct :Colors<cr>
nnoremap <silent> <leader>mk :Marks<cr>

" For fuzzy finding current file lines, much better than '/' to search
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
