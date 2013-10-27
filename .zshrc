# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
setopt histignorespace
# End of lines configured by zsh-newuser-install
if [ -z "$TMUX" ]; then
    if [ -n "$COLORTERM" ]; then
        export TERM="xterm-256color"
    fi
fi
export LESS="-RFX"
export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv2
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--python=python2"
export VIRTUAL_ENV_DISABLE_PROMPT=true
export VIRTUALENV_USE_DISTRIBUTE=true
source /usr/bin/virtualenvwrapper.sh

alias psyu="sudo pacman -Syu"
alias ranger="LESS=-R TERMCMD=lilyterm ranger"
alias rvim="vim --servername ranger"

hgcl() {
    hg clone "iptego://$1" "$1";
}

abk+=(
"NF" "*(.om[1])"
"ND" "*(/om[1])"
)

eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

