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
- For WSL yank and paste support, see: [here](https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl), but win11 makes things complicated, so strongly suggest put `put win32yank.exe` into `C:\Windows\System32` for better performance and make things correct on Windows11 (**NOTE**: your `$PATH` should include `/mnt/c/Windows/System32`).
```vim
if executable("win32yank.exe")
    set clipboard+=unnamedplus
    let g:clipboard = {
        \   'name': 'genmzy_clipboard',
        \   'copy': {
        \      '+': ['win32yank.exe', '-i', '--crlf'],
        \      '*': ['win32yank.exe', '-i', '--crlf'],
        \    },
        \   'paste': {
        \      '+': ['win32yank.exe', '-o', '--lf'],
        \      '*': ['win32yank.exe', '-o', '--lf'],
        \   },
        \   'cache_enabled': 1,
        \ }
endif
```
