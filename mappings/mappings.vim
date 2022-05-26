" ===
" === mappings(not for plugins)
" ===

" accelerated_jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

map <silent> K 5k
map <silent> J 5j
map <silent> H 14h
map <silent> L 14l

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

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

map S :w<CR>
map s <nop>
map . <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" All fold expand for current buffer
map <LEADER>z zR

map <F3> :tabe<CR>
map <F8> :set splitright<CR>:vsplit<CR>
map <F5> :set nosplitright<CR>:vsplit<CR>
map <F7> :set nosplitbelow<CR>:split<CR>
map <F6> :set splitbelow<CR>:split<CR>

" s<direction> map to cross the split windows
map sh <C-w>h
map sj <C-w>j
map sk <C-w>k
map sl <C-w>l
map sw <C-w>w

" Instead of Shift+K for `man` helper
map <silent> <leader>h :Man<cr>

" leader n for not show search highlight
map <leader>n :noh<cr>

" quick tabpage-change
map - :-tabnext<CR>
map = :tabnext<CR>

" put a place holder to edit format-similar coding quickly
nnoremap \\ <Esc>/<++><CR>:nohlsearch<CR>c4l

nmap . %
vmap . %
