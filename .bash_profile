source ~/.local/share/bash_data/bashrc
export PATH="$PATH:$HOME/.local/scripts"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave-nightly"
export READER="zathura"
export HISTCONTROL=ignoreboth:erasedups

# ~/ Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export HISTFILE=
export XDG_DATA_HOME="$HOME/.local/share"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE="-"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx
fi
