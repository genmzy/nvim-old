" ===
" === dashboard
" ===
" Default value is clap
let g:dashboard_default_executive ='fzf'

let g:dashboard_custom_section={
      \ '1': {
            \ 'description': [' File Tree                  leader d  '],
            \ 'command': 'CocCommand explorer'
      \ },
      \ '2': {
            \ 'description': [' Find Files                 leader f  '],
            \ 'command': 'Files'
      \ },
      \ '3': {
            \ 'description': [' Find Words                 leader a  '],
            \ 'command': 'Rg',
      \ },
      \ '4': {
            \ 'description': [' Nvim Conf                  leader w  '],
            \ 'command': 'Config'
      \ },
      \ '5': {
            \ 'description': [' Float Term                 leader t  '],
            \ 'command': 'FloatermToggle'
      \ },
      \ '6': {
            \ 'description': [' History Buf                leader s i'],
            \ 'command': 'History'
      \ },
      \ '7': {
            \ 'description': [' Term Git UI                leader g g'],
            \ 'command': 'FloatermNew height=1.0 width=1.0 lazygit'
      \ },
      \ '8': {
            \ 'description': [' Colorscheme                leader c t'],
            \ 'command': 'Colors'
      \ },
      \ '9': {
            \ 'description': [' Bookmark saved             leader m k'],
            \ 'command': 'Marks'
      \ },
\}

let g:dashboard_custom_header = [
                  \'                   ⠸⣷⣦⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⠀⠀⠀ ',
                  \'                   ⠀⠙⣿⡄⠈⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠔⠊⠉⣿⡿⠁⠀⠀⠀ ',
                  \'                   ⠀⠀⠈⠣⡀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠁⠀⠀⣰⠟⠀⠀⠀⣀⣀ ',
                  \'                   ⠀⠀⠀⠀⠈⠢⣄⠀⡈⠒⠊⠉⠁⠀⠈⠉⠑⠚⠀⠀⣀⠔⢊⣠⠤⠒⠊⠉⠀⡜ ',
                  \'                   ⠀⠀⠀⠀⠀⠀⠀⡽⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⡔⠊⠁⠀⠀⠀⠀⠀⠀⠇ ',
                  \'                   ⠀⠀⠀⠀⠀⠀⠀⡇⢠⡤⢄⠀⠀⠀⠀⠀⡠⢤⣄⠀⡇⠀⠀⠀⠀⠀⠀⠀⢰⠀ ',
                  \'                   ⠀⠀⠀⠀⠀⠀⢀⠇⠹⠿⠟⠀⠀⠤⠀⠀⠻⠿⠟⠀⣇⠀⠀⡀⠠⠄⠒⠊⠁⠀ ',
                  \'                   ⠀⠀⠀⠀⠀⠀⢸⣿⣿⡆⠀⠰⠤⠖⠦⠴⠀⢀⣶⣿⣿⠀⠙⢄⠀⠀⠀⠀⠀⠀ ',
                  \'                   ⠀⠀⠀⠀⠀⠀⠀⢻⣿⠃⠀⠀⠀⠀⠀⠀⠀⠈⠿⡿⠛⢄⠀⠀⠱⣄⠀⠀⠀⠀ ',
                  \'                   ⠀⠀⠀⠀⠀⠀⠀⢸⠈⠓⠦⠀⣀⣀⣀⠀⡠⠴⠊⠹⡞⣁⠤⠒⠉⠀⠀⠀⠀⠀ ',
                  \'                   ⠀⠀⠀⠀⠀⠀⣠⠃⠀⠀⠀⠀⡌⠉⠉⡤⠀⠀⠀⠀⢻⠿⠆⠀⠀⠀⠀⠀⠀⠀ ',
                  \'                   ⠀⠀⠀⠀⠀⠰⠁⡀⠀⠀⠀⠀⢸⠀⢰⠃⠀⠀⠀⢠⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀ ',
                  \'                   ⠀⠀⠀⢶⣗⠧⡀⢳⠀⠀⠀⠀⢸⣀⣸⠀⠀⠀⢀⡜⠀⣸⢤⣶⠀⠀⠀⠀⠀⠀ ',
                  \'                   ⠀⠀⠀⠈⠻⣿⣦⣈⣧⡀⠀⠀⢸⣿⣿⠀⠀⢀⣼⡀⣨⣿⡿⠁⠀⠀⠀⠀⠀⠀ ',
                  \'                   ⠀⠀⠀⠀⠀⠈⠻⠿⠿⠓⠄⠤⠘⠉⠙⠤⢀⠾⠿⣿⠟⠋         ',
                  \"                                           _   __      _         ",
                  \"   ____ ____  ____  ____ ___  ____  __  __/ | / /   __(_)___ ___ ",
                  \"  / __ `/ _ \\/ __ \\/ __ `__ \\/_  / / / / /  |/ / | / / / __ `__ \\",
                  \" / /_/ /  __/ / / / / / / / / / /_/ /_/ / /|  /| |/ / / / / / / /",
                  \" \\__, /\\___/_/ /_/_/ /_/ /_/ /___/\\__, /_/ |_/ |___/_/_/ /_/ /_/ ",
                  \"/____/                           /____/                          ",
\]
