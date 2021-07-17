" The plugins that VIM-PLUG manage
call plug#begin('~/.config/nvim/plugged')


" Status line
Plug 'vim-airline/vim-airline'
Plug 'genmzy/vim-airline-themes'

" File navigation
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do' : './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'

" Taglist
Plug 'liuchengxu/vista.vim'

" Float window for neovim
Plug 'voldikss/vim-floaterm'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Python
Plug 'vim-scripts/indentpython.vim'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" Bookmarks
Plug 'kshenoy/vim-signature'
Plug 'itchyny/vim-cursorword'

" Other useful utilities
Plug 'tpope/vim-surround'           " type ysks' to wrap the word with '' or type cs'`to change 'word' to `word`
Plug 'godlygeek/tabular'            " type :Tabularize /= to align the =
Plug 'gcmt/wildfire.vim'            " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter'     " in <LEADER>cc to comment a line
Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'rhysd/accelerated-jk'

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
Plug 'lifepillar/vim-colortemplate'

" MarkdownPreview
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }

" Colorscheme
Plug 'genmzy/ayu-vim'
Plug 'genmzy/nord-vim', {
    \'branch': 'master'
\}
Plug 'genmzy/vim-waves'
Plug 'genmzy/deus'
Plug 'genmzy/lavender.vim'
Plug 'genmzy/snazzy'
Plug 'hardcoreplayers/oceanic-material'
Plug 'morhetz/gruvbox'
Plug 'genmzy/onedark.vim'
Plug 'sonph/onehalf', {
    \'rtp': 'vim/'
\}
Plug 'genmzy/forest-night'
Plug 'genmzy/space-vim-theme'
Plug 'pineapplegiant/spaceduck'
Plug 'vim-scripts/peaksea'
Plug 'folke/tokyonight.nvim'

" Color enhancement
Plug 'Kjwon15/vim-transparent'      " Parent background
Plug 'sheerun/vim-polyglot'         " Enhancing syntax color of a lot of filetypes
Plug 'jackguo380/vim-lsp-cxx-highlight'

" Extraordinary code completion plugin
Plug 'neoclide/coc.nvim', {
    \'do': 'yarn install --frozen-lockfile'
\}
Plug 'liuchengxu/vim-which-key'

" Quick start
Plug 'hardcoreplayers/dashboard-nvim'

" Code snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Buffer manager
Plug 'vim-scripts/BufOnly.vim'

" Debug tools
Plug 'puremourning/vimspector', {
    \'do': './install_gadget.py --enable-c --force-enable-java --enable-lua --enable-python'
\}

Plug 'nathanaelkane/vim-indent-guides'

" Sudo read/write
Plug 'lambdalisue/suda.vim'

" Use defx for big project
Plug 'Shougo/defx.nvim', {
    \'do': ':UpdateRemotePlugins'
\}
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

" Kamilio syntax support
Plug 'kamailio/vim-kamailio-syntax'


call plug#end()
