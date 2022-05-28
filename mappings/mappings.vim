" ===
" === mappings(not for plugins)
" ===

" accelerated_jk
nmap j <plug>(accelerated_jk_gj)
nmap k <plug>(accelerated_jk_gk)

map <silent> K 5k
map <silent> J 5j
map <silent> H 14h
map <silent> L 14l

" Resize splits with arrow keys
noremap <up> :res +5<cr>
noremap <down> :res -5<cr>
noremap <left> :vertical resize-5<cr>
noremap <right> :vertical resize+5<cr>

" Better code expandation in insert mode.
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
" better file editing expandation in insert mode for Chinese sign
inoremap “ “”<left>
inoremap 【 【】<left>
inoremap ‘ ‘’<left>
inoremap （ （）<left>

let &t_ut=''

map S :w<cr>
map s <nop>
map . <nop>
map Q :q<cr>
map R :source $MYVIMRC<cr>

" All fold expand for current buffer
map <leader>z zR

map <f3> :tabe<cr>
map <f8> :set splitright<cr>:vsplit<cr>
map <f5> :set nosplitright<cr>:vsplit<cr>
map <f7> :set nosplitbelow<cr>:split<cr>
map <f6> :set splitbelow<cr>:split<cr>

" s<direction> map to cross the split windows
map sh <c-w>h
map sj <c-w>j
map sk <c-w>k
map sl <c-w>l
map sw <c-w>w

" Instead of Shift+K for `man` helper
map <silent> <leader>h :Man<cr>

" leader n for not show search highlight
map <leader>n :noh<cr>

" quick tabpage-change
map - :-tabnext<cr>
map = :tabnext<cr>

" put a place holder to edit format-similar coding quickly
nnoremap \\ <esc>/<++><cr>:nohlsearch<cr>c4l

nmap . %
vmap . %
