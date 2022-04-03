# GenmZy_ NVIM

- 💜 I wanna see you after COVID-19.

![dashboard](https://github.com/genmzy/pictures/blob/master/genmzy_pikachu.png)
![genmzy](https://github.com/genmzy/pictures/blob/master/genmzy.png)
![info](https://github.com/genmzy/pictures/blob/master/info.png)

## ColorScheme

- [aquarium-vim](https://github.com/genmzy/aquarium-vim): a fork version from [original](https://github.com/FrenzyExists/aquarium-vim) with background transparent plugin: [vim-transparent](https://github.com/genmzy/vim-transparent) forked from [original](https://github.com/tribela/vim-transparent)
- background picture, a [pokemon picture](https://github.com/genmzy/pictures/blob/master/448.jpg) from [pokemon-terminal](https://github.com/LazoCoder/Pokemon-Terminal)

## Installation

- Requires
> ```shell
> go install github.com/jesseduffield/lazygit@latest
>
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

- With [WSL2](https://docs.microsoft.com/en-us/windows/wsl/compare-versions) and [WindowsTerminal](https://github.com/microsoft/terminal) (please use version: [v1.10.2383.0](https://github.com/microsoft/terminal/releases/download/v1.10.2383.0/Microsoft.WindowsTerminal_1.10.2383.0_8wekyb3d8bbwe.msixbundle_Windows10_PreinstallKit.zip))
- For WSL yank and paste support, see: [here](https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl), win11 [issue](https://github.com/equalsraf/win32yank/issues/9#issue-463019718), use `/mnt/c/Windows/System32/clip.exe` instead copy in win32yank, works okay so far. Configuration is:
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

- Font :[LigaSrcPro NF](https://github.com/Bo-Fone/Liga-Sauce-Code-Pro-Nerd-Font)

- Partial configurations in WindowsTerminal:
```json
{
  "useAcrylicInTabRow": true,
  "profiles": {
    "defaults": {
      "acrylicOpacity": 0.9,
      "antialiasingMode": "grayscale",
      "backgroundImageOpacity": 0.05,
      "bellStyle": "none",
      "colorScheme": "aquarium",
      "intenseTextStyle": "bold", // NOTE: DO NOT delete this anyway
      "backgroundImage": "C:/Users/waves/Pictures/pokemon/Generation IV - Sinnoh/448.jpg",
      "font": {
        "face": "LigaSrcPro NF",
        "size": 11,
        "weight": "normal"
      },
      "padding": "0, 0, 0, 0",
      "tabColor": "#44495E",
      "useAcrylic": false
    },
    "list": [
      {
        "guid": "{07b52e3e-de2c-5db4-bd2d-ba144ed6c273}",
        "hidden": false,
        "icon": "C:\\Users\\waves\\Pictures\\Camera Roll\\icons\\icons8-console-24.png",
        "name": "Ubuntu-20.04",
        "source": "Windows.Terminal.Wsl",
        "startingDirectory": "//wsl$/Ubuntu-20.04/home/waves",
        "closeOnExit": "always"
      }
    ]
  },
  "schemes": [
    {
      "name": "aquarium",
      "background": "#17171F",
      "foreground": "#63718B",
      "cursorColor": "#5c6a72",
      "black": "#3b3b4d",
      "red": "#cc9b9d",
      "green": "#a3ccad",
      "yellow": "#d1ba97",
      "cyan": "#b8c9ea",
      "purple": "#b294bb",
      "blue": "#95c2d1",
      "white": "#63718b",
      "brightBlack": "#44495e",
      "brightRed": "#ebb9b9",
      "brightGreen": "#b1dba4",
      "brightYellow": "#e6dfb8",
      "brightCyan": "#cddbf9",
      "brightPurple": "#f6bbe7",
      "brightBlue": "#cddbf9",
      "brightWhite": "#c6d0e9",
      "selectionBackground": "#2c2e3e"
    }
  ],
  "theme": "dark"
}
```

- Icon [picture](https://github.com/genmzy/pictures/blob/master/icons8-console-24.png)

- More themes, see [here](https://github.com/genmzy/nvim/blob/aquarium/themes.md)

- ZSH configurations and Oh-My-Zsh configurations, see: [file](https://github.com/genmzy/dotfiles/blob/master/.zshrc)
