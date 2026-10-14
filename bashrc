# my c00l aliases

alias ..="cd .."
alias ...="cd ../.."
alias ls="LC_COLLATE=C ls -lahF --color=auto --quoting-style=literal" #show hidden, detailed, colored, without quotes
alias grep="grep --color"
alias rg="rg --context 2 --smart-case"
alias rgf='rg --files --hidden | grep --color'
alias open="xdg-open ."
alias gitmeld="git difftool -d -t meld"

# Ranger
#alias r="source ranger"
alias r='ranger --cmd="chain tab_new; enter_bookmark 1; tab_open 1" --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# colemak keyboard layout in command line
# fixes keypassx autotype bug
# setxkbmap us -variant colemak

if command -v nvim >/dev/null 2>&1; then
    export VISUAL="nvim"
else
    export VISUAL="vim"
fi
# Ensure EDITOR always matches VISUAL
export EDITOR="$VISUAL"

# add node export path so -g flag works without sudo
export PATH="$PATH:$HOME/npm/bin"

# add .local/bin required by dragon
export PATH="$PATH:$HOME/.local/bin"

# add dotfiles export path for my own bash scripts
export PATH="$PATH:$HOME/dotfiles/bin"

# remove duplicates from history
export HISTCONTROL=ignoreboth:erasedups

#setup fzf to use rg and ignore hidden files with . and from .gitignore
#export FZF_DEFAULT_COMMAND='rg --files --follow --hidden --bind ctrl-a:select-all,ctrl-d:deselect-all'
