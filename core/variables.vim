" ===
" === General settings
" ===

syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set cursorline
set wrap
set nobackup
set nowritebackup
set shortmess+=c
set updatetime=300
set cmdheight=1
set signcolumn=yes
set number
set relativenumber
set nopaste
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set tabstop=4
set smartindent

" now only for which key
set timeoutlen=200

if filereadable("./go.mod") || filereadable("./go.sum")
    set noexpandtab
else
    set expandtab
endif

set shiftwidth=4
set softtabstop=4
set scrolloff=5
set nocompatible
set encoding=utf-8
set hidden
set list
set listchars=tab:¦\ ,trail:→,eol:↵

" Gui Cursor!
set guicursor=n-v-c:underline,i-ci-ve:ver40,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175

" For WSL yank and paste support, see: https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
if executable("clip.exe") && executable("win32yank.exe")
    set clipboard+=unnamedplus
    let g:clipboard = {
        \   'name': 'genmzy_clipboard',
        \   'copy': {
        \      '+': ['clip.exe'],
        \      '*': ['clip.exe'],
        \    },
        \   'paste': {
        \      '+': ['win32yank.exe', '-o', '--lf'],
        \      '*': ['win32yank.exe', '-o', '--lf'],
        \   },
        \   'cache_enabled': 1,
        \ }
endif

set termguicolors
set foldmethod=marker


"" pmenu semi-transparent
"set pumblend=15
"hi PmenuSel blend=0


"map leader
let g:mapleader="\<Space>"


"Back the place that edited last time
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd FileType json syntax match Comment +\/\/.\+$+


autocmd TermOpen term://* startinsert
tnoremap <c-n> <c-\><c-n>


let g:python_highlight_all=1
