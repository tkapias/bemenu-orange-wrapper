# bemenu-orange-wrapper

A bash wrapper script for [bemenu](https://github.com/Cloudef/bemenu) with a simple, dark and orange theme and nice defaults.

![preview](assets/preview.png)

## Dependencies

- [bemenu >= 0.6](https://github.com/Cloudef/bemenu)
- [Nerd Fonts (Symbols Only)](https://github.com/ryanoasis/nerd-fonts/releases/latest)
- [Noto Color Emoji](https://github.com/googlefonts/noto-emoji)
- [IBM Plex Mono](https://github.com/IBM/plex)
- Bash >= 5

## Installation

### Dependencies

- Debian Example:

``` bash
# bemenu
git clone --depth=1 https://github.com/Cloudef/bemenu bemenu
cd bemenu
sudo apt install scdoc libcairo-dev libpango1.0-dev libxkbcommon-dev
# buiding for x11
make clients x11 curses doxygen PREFIX=/usr/local
sudo make install
sudo ldconfig

# Nerd Fonts Symbols only
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.tar.xz
sudo tar -xvf NerdFontsSymbolsOnly.tar.xz --wildcards --no-anchored '*.ttf' --directory=/usr/local/share/fonts/
sudo cp SymbolsNerdFont*-Regular.ttf /usr/local/share/fonts/

# Noto Color Emoji
sudo apt install fonts-noto-color-emoji

# IBM Plex Mono
wget https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-mono%401.1.0/ibm-plex-mono.zip
sudo mkdir -p /usr/local/share/fonts/IBM-Plex-Mono
sudo unzip -j ibm-plex-mono.zip -d /usr/local/share/fonts/IBM-Plex-Mono/ ibm-plex-mono/fonts/complete/otf/*.otf
fc-cache -f
```

### bemenu-orange-wrapper

```bash
git clone --depth 1 https://github.com/tkapias/bemenu-orange-wrapper.git bemenu-orange-wrapper
cd bemenu-orange-wrapper
chmod +x bemenu-orange-wrapper.bash
ln -s $PWD/bemenu-orange-wrapper.bash $HOME/.local/bin/bemenu
```

## Features

- Centered
- Vim keybindings.
- Border.
- Fonts ready for Emojis and Nerd-Fonts.
- Dark grey and orange theme.

## Usage

Just symlink the wrapper script as bemenu in your user bin path, it should be used by default by other bemenu tools.

To change some options, just edit the script.

## Suggestions

- [bemenu-mpdcli](https://github.com/tkapias/bemenu-mpdcli): bemenu client for MPD using mpc.
- [bemenu-qalc](https://github.com/tkapias/bemenu-qalc): bemenu calculator using qalc.
- [bemenu-desktop-menu](https://github.com/tkapias/bemenu-desktop-menu): bemenu desktop applications launcher.
- [bemenu-nb-todo](https://github.com/tkapias/bemenu-nb-todo): bemenu todo & task management for nb.
- [bemoji](https://github.com/marty-oehme/bemoji): Emoji/NerdFonts/Math character picker with favorites.
- [i3-scratchmenu](https://github.com/aedoq/i3-scratchmenu): list/toggle i3wm scratchpads.

