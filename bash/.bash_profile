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
export HISTFILE="$XDG_DATA_HOME"/bash/history

# ~/ Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

[ ! -f "$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0" ] && \
	mkdir -p "$XDG_CONFIG_HOME/gtk-2.0" && \
	touch "$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0" && \
	export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"

# stores GNUPG file .local/share instead of the home directory
[ ! -d "$XDG_DATA_HOME/gnupg" ] && \
	mkdir -p "$XDG_DATA_HOME/gnupg" && export PATH="$XDG_DATA_HOME/gnupg:$PATH"

# stores wget hist file in cache
[ ! -f $XDG_CONFIG_HOME/wget/wgetrc ] && \
	mkdir -p "$XDG_CONFIG_HOME/wget" && \
	   echo 'hsts-file=~/.cache/wget-hsts' > "$XDG_CONFIG_HOME/wget/wgetrc" && \
	   export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

export LESSHISTFILE="-"

# START X SERVER
[ "$(tty)" = "/dev/tty1" ] && pgrep ${WM:-bspwm} || startx "$XDG_CONFIG_HOME/X11/xinitrc"
