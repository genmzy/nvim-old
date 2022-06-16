" ===
" === coc.nvim
" ===

" Not only coc-snippets the that can jump among the arguments, but also ordinary coc completion

inoremap <c-l> <nop>
let g:coc_snippet_next = '<c-l>'
let g:coc_snippet_prev = '<c-n>'
let g:snips_author = 'genmzy'
"let g:coc-semantic-highlights=1
autocmd FileType c,cpp,java,lua let b:coc_suggest_blacklist = [
      \"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
\]
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = [
      \ 'coc-pyright',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-css',
      \ 'coc-yank',
      \ 'coc-lists',
      \ 'coc-gitignore',
      \ 'coc-vimlsp',
      \ 'coc-tailwindcss',
      \ 'coc-java',
      \ 'coc-xml',
      \ 'coc-yaml',
      \ 'coc-highlight',
      \ 'coc-sh',
      \ 'coc-vetur',
      \ 'coc-marketplace',
      \ 'coc-floaterm',
      \ 'coc-db',
      \ 'coc-tsserver',
      \ 'coc-markdownlint',
      \ 'coc-markmap',
      \ 'coc-git',
      \ 'coc-prettier',
      \ 'coc-snippets',
      \ 'coc-translator',
      \ 'coc-ci',
      \ 'coc-explorer',
      \ 'coc-go',
      \ 'coc-protobuf',
      \ 'coc-db',
      \ 'coc-sql',
      \ 'coc-clangd',
      \ 'coc-sumneko-lua',
      \ 'coc-leetcode',
      \ 'coc-docker'
      \ ]
"" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]    =~ '\s'
endfunction
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"
inoremap <silent><expr> <c-x><c-z> coc#pum#visible() ? coc#pum#stop() : "\<c-x>\<c-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <tab>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ <SID>check_back_space() ? "\<tab>" :
      \ coc#refresh()
inoremap <expr><s-tab> coc#pum#visible() ? coc#pum#prev(1) : "\<c-h>"
inoremap <silent><expr> <c-space> coc#refresh()

" Useful commands
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gk <plug>(coc-type-definition)
nmap <silent> gi <plug>(coc-implementation)
" both coc-declaration and references-used
nmap <silent> gj <plug>(coc-references)
nmap <silent> gr <plug>(coc-references-used)
nmap <silent> gl <plug>(coc-declaration)
nmap <silent> go <plug>(coc-refactor)

nmap <silent> sn <plug>(coc-diagnostic-next)
nmap <silent> sN <plug>(coc-diagnostic-prev)
nmap <silent> sr <plug>(coc-rename)
nmap <silent> sf <plug>(coc-format)
vmap <silent> sf <plug>(coc-format-selected)

nnoremap <silent> <leader><space> :CocFzfList<cr>
nnoremap <silent> sy :CocFzfList yank<cr>
nnoremap <silent> so :CocFzfList actions<cr>
nnoremap <silent> sd :CocFzfList diagnostics<cr>
nnoremap <silent> ss :CocFzfList symbols<cr>
nnoremap <silent> sc :CocFzfList commands<cr>
nnoremap <silent> se :CocFzfList location<cr>
nnoremap <silent> st :CocFzfList outline<cr>

" git stuff
nnoremap <silent> <leader>gr :CocCommand git.showCommit<cr>
nnoremap <silent> <leader>gu :CocCommand git.chunkUndo<cr>
nnoremap <silent> <leader>gF :CocCommand git.foldUnchanged<cr>
nnoremap <silent> <leader>gkb :CocCommand git.keepBoth<cr>
nnoremap <silent> <leader>gkc :CocCommand git.keepCurrent<cr>
nnoremap <silent> <leader>gki :CocCommand git.keepIncoming<cr>


" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap hf <plug>(coc-funcobj-i)
omap hf <plug>(coc-funcobj-i)
xmap af <plug>(coc-funcobj-a)
omap af <plug>(coc-funcobj-a)
xmap hc <plug>(coc-classobj-i)
omap hc <plug>(coc-classobj-i)
xmap ac <plug>(coc-classobj-a)
omap ac <plug>(coc-classobj-a)

" coc-highlight
" autocmd CursorHold * silent call CocActionAsync('highlight')
augroup sigHelp
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

call coc#add_command('vista', ':Vista!!')
call coc#add_command('table', ':TableModeToggle')

nnoremap <silent> <leader>d :CocCommand explorer<cr>
nnoremap <silent> <leader>r :call <SID>show_documentation()<cr>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold   :call CocActionAsync('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR     :call CocActionAsync('runCommand', 'editor.action.organizeImport')

" NOTE: do NOT use `nore` mappings
" popup
nmap <leader>mt <plug>(coc-translator-p)
vmap <leader>mt <plug>(coc-translator-pv)

" Remap <c-j> and <c-k> for scroll float windows/popups for insert mode
" (only use for documention)
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-j>"
  nnoremap <silent><nowait><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-k>"
  inoremap <silent><nowait><expr> <c-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<right>"
  inoremap <silent><nowait><expr> <c-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<left>"
  vnoremap <silent><nowait><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-j>"
  vnoremap <silent><nowait><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-k>"
endif

" solve the huge file read problem
let g:huge_file_trigger_size = 1048576
augroup hugefile
  autocmd!
  autocmd BufNew,BufEnter,BufRead,BufNewFile,BufReadPre *
        \ let size = getfsize(expand('%:p')) |
        \ if (size > g:huge_file_trigger_size) || (size == -2) |
        \   let b:coc_enabled = 0 |
        \ endif |
        \ unlet size
augroup END

" avoid coc-highlight frequently refreshing for file://_vimspector_log_Vimspector
" which will cause high CPU occupy
augroup vimspectorlog
  autocmd!
  autocmd BufNew,BufEnter,BufRead,BufNewFile *
        \ if match(expand('%:r'), 'vimspector') >= 0 && &filetype != 'json' && &filetype != 'vim' |
        \   let b:coc_enabled = 0 |
        \ endif |
augroup END
