# FILE CHECK
[ -f ~/.bashrc ] && . ~/.bashrc
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.scripts" ] && export PATH="$HOME/.scripts:$PATH"

export WM="bspwm"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave-nightly"
export READER="zathura"
export HISTCONTROL=ignoreboth:erasedups
export HISTFILE="$XDG_DATA_HOME/bash/history"

# ~/ Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export GOPATH="$XDG_DATA_HOME/go"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export PATH="$XDG_DATA_HOME/gnupg:$PATH"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export LESSHISTFILE="-"

# START X SERVER
[ "$(tty)" = "/dev/tty1" ] && pgrep ${WM:-bspwm} || startx "$XDG_CONFIG_HOME/X11/xinitrc"
