" The plugins that VIM-PLUG manage
call plug#begin('~/.config/nvim/plugged')


" Status line
Plug 'hoob3rt/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

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

" Bookmarks
Plug 'kshenoy/vim-signature'
Plug 'itchyny/vim-cursorword'

" Other useful utilities
Plug 'godlygeek/tabular'           " type :Tabularize /= to align the =
Plug 'gcmt/wildfire.vim'            " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter'     " in <LEADER>cc to comment a line
Plug 'vimwiki/vimwiki'
Plug 'rhysd/accelerated-jk'

" Colorscheme
Plug 'genmzy/ayu-vim'
Plug 'genmzy/nord-vim', {
    \'branch': 'master'
\}
Plug 'genmzy/vim-waves'
Plug 'genmzy/vim-deus'
Plug 'genmzy/lavender.vim'
Plug 'genmzy/snazzy'
Plug 'hardcoreplayers/oceanic-material'
Plug 'genmzy/gruvbox'
Plug 'genmzy/onedark.vim'
Plug 'sonph/onehalf', {
    \'rtp': 'vim/'
\}
Plug 'genmzy/forest-night'
Plug 'genmzy/space-vim-theme'
Plug 'pineapplegiant/spaceduck'
Plug 'vim-scripts/peaksea'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/sonokai'
Plug 'jacoborus/tender.vim'
Plug 'challenger-deep-theme/vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sts10/vim-pink-moon'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }

" Color enhancement
Plug 'genmzy/vim-transparent'       " Transparent background
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
    \'do': './install_gadget.py --enable-c --force-enable-java --enable-lua --enable-go'
\}

" Sudo read/write
Plug 'lambdalisue/suda.vim'

" Use defx for big project
Plug 'Shougo/defx.nvim', {
    \'do': ':UpdateRemotePlugins'
\}
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

" Kamilio/OpenSIPs syntax support
Plug 'kamailio/vim-kamailio-syntax'


call plug#end()
