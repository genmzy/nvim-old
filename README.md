# GenmZy_ NVIM

- 💜 I wanna see you after COVID-19.

![gruvbox+dashborad](https://github.com/genmzy/pictures/blob/master/gruvbox+dashborad.png)

![gruvbox+customFont+codeComplete](https://github.com/genmzy/pictures/blob/master/gruvbox+customFont+codeComplete.png)

![gruvbox+customFont+explorer+vista](https://github.com/genmzy/pictures/blob/master/gruvbox+customFont+explorer+vista.png)

![gruvbox+lazygit](https://github.com/genmzy/pictures/blob/master/gruvbox+lazygit.png)

![gruvbox+floaterm](https://github.com/genmzy/pictures/blob/master/gruvbox+floaterm.png)

![rg_panic](https://github.com/genmzy/pictures/blob/master/rg_panic.png)

- Above fonts see [here](https://github.com/genmzy/recursive-code-config/tree/main/fonts/RecMonoGenmzyCasual/NerdFonts)

![lightForest](https://github.com/genmzy/pictures/blob/master/lightForest.png)

![lightForestVistaExplorer](https://github.com/genmzy/pictures/blob/master/lightForestVistaExplorer.png)

![spacelight_vista_explorer](https://github.com/genmzy/pictures/blob/master/spacelight_vista_explorer.png)

![spacelight](https://github.com/genmzy/pictures/blob/master/spacelight.png)

- More pictures, see [here](https://github.com/genmzy/pictures)


## Installation

- PreAction
> ```shell
> sudo add-apt-repository ppa:lazygit-team/release
> sudo apt-get update && sudo apt-get upgrade
> sudo apt-get install python3 lazygit fzf silversearch_ag ripgrep bat ccat neovim python3-pip git
>
> pip3 install neovim neovim-remote pynvim
>
> sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
>        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
>
> git clone https://github.com/genmzy/nvim.git ~/.config/ --depth=1
> ```

- Install plugins

  Enter vim and execute `:PlugInstall`

## More

- I use [WSL2](https://docs.microsoft.com/en-us/windows/wsl/compare-versions) and [WindowsTerminal](https://github.com/microsoft/terminal)
- for WSL yank and paste support, see: [here](https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl), but when I change my system to Windows11, some bugs happened, paste will cause long-time no respond(more than 5 minutes). I cannot find the reason, as I see the win32yank got a paste [error](https://github.com/equalsraf/win32yank/issues/9#issue-463019718), I tried a lot of times and I think it is a copy issue, not a paste issue, so I use the system clipboard redirector, which path is `/mnt/c/Windows/System32/clip.exe`, works okay so far.
```vim
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
```
