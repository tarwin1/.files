# FILE CHECK
[[ -f ~/.bashrc ]] && . ~/.bashrc
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.scripts" ] && PATH="$HOME/.scripts:$PATH"

export WM="bspwm"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave-nightly"
export READER="zathura"
export HISTCONTROL=ignoreboth:erasedups

# ~/ Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# GNUPG
if [ ! -d "$XDG_DATA_HOME/gnupg" ] ;
   then mkdir -p "$XDG_DATA_HOME/gnupg" && PATH="$XDG_DATA_HOME/gnupg:$PATH"
fi

if [ ! -f $XDG_CONFIG_HOME/wget/wgetrc ] ;
   then mkdir -p "$XDG_CONFIG_HOME/wget" && echo 'hsts-file=~/.cache/wget-hsts' > "$XDG_CONFIG_HOME/wget/wgetrc"
fi

export LESSHISTFILE="-"

# START X SERVER
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep $WM || startx
fi
