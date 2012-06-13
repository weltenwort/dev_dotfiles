# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
# End of lines configured by zsh-newuser-install
if [ -z "$TMUX" ]; then
    if [ -n "$COLORTERM" ]; then
        export TERM="xterm-256color"
    fi
fi
export LESS="-RFX"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
export VIRTUALENV_USE_DISTRIBUTE=true
source /usr/bin/virtualenvwrapper.sh

alias psyu="sudo pacman -Syu"

abk+=(
"NF" "*(.om[1])"
"ND" "*(/om[1])"
)
