### Installation
Run git clone in ~ folder.
    
    git clone https://github.com/matkalis/dotfiles.git

### Usage
Add to ~/.bashrc to use this file

    if [ -f ~/dotfiles/bashrc ]; then
       . ~/dotfiles/bashrc
    fi

Add soft link to .gitconfig

    ln -s ~/dotfiles/gitconfig ~/.gitconfig

Add soft link to alacritty config
    
    mkdir -p ~/.config/alacritty && ln -s ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

Add soft link to i3 config
    
    ln -s ~/dotfiles/i3/config ~/.config/i3/config

### Ranger Installation

Ranger

    sudo apt install ranger
    ranger --copy-config=all

Add soft link to ranger configs
    
    mv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.backup
    mv ~/.config/ranger/rifle.conf ~/.config/ranger/rifle.conf.backup
    ln -s ~/dotfiles/ranger/rifle.conf ~/.config/ranger/rifle.conf
    ln -s ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
    mkdir -p ~/.config/ranger/plugins
    ln -s ~/dotfiles/ranger/plugins/unicode_icons.py ~/.config/ranger/plugins/unicode_icons.py

Trash support

    sudo apt install trash-cli

Image previews

    sudo apt install ffmpegthumbnailer

Text file previews

    Install bat from https://github.com/sharkdp/bat#installation with *_amd64.deb package
    mkdir -p ~/.config/bat && ln -s ~/dotfiles/bat/config ~/.config/bat/config
    Change --style="numbers" for bat in ~/.config/ranger/scope.sh

Archieve

    sudo apt install atool
    https://github.com/maximtrp/ranger-archives

Dragging files

    Install from https://github.com/mwh/dragon

Gnome Nautilus Context Menu

    sudo apt install python-nautilus python3-nautilus
    Use user install from: https://github.com/Stunkymonkey/nautilus-open-any-terminal
        pip install --user nautilus-open-any-terminal
        nautilus -q
        glib-compile-schemas ~/.local/share/glib-2.0/schemas/
        Set terminal to alacritty via dconf-editor com/github/stunkymonkey/nautilus-open-any-terminal/terminal
        Do not use .sh install scripts
    Remove default Open terminal option from nautilus
        sudo apt remove nautilus-extension-gnome-terminal

## Simple WM Gnome setup

Install

    sudo apt install xdotool

### Settings > Keyboard Shortcuts

Remove following keybindings: 

    Move to workspace below
    Switch applications
    Switch windows of an application
    Lock screen
    Hide window
    View split on left
    View split on right

Add following rebindings:

    Switch windows | Alt+Tab
    Switch windows directly | Alt+\`

Add following custom bindings:

    100% full | Super+F | xdotool getactivewindow windowsize 100% 100% windowmove 0% 0%
    50% right | Super+Right | xdotool getactivewindow windowsize 50% 100% windowmove 50% 0%
    50% left | Super+Left | xdotool getactivewindow windowsize 50% 100% windowmove 0% 0% 
    34% right | Super+. | xdotool getactivewindow windowsize 34% 100% windowmove 66% 0%
    66% left | Super+, | xdotool getactivewindow windowsize 66% 100% windowmove 0% 0%
