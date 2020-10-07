[ -f "$HOME/.bashrc" ] && . "$HOME"/.bashrc
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.scripts" ] && export PATH="$HOME/.scripts:$PATH"
[ -d /sbin ] && export PATH="/sbin:$PATH"
[ -d /usr/sbin ] && export PATH="/usr/sbin:$PATH"

export WM="bspwm"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export HISTCONTROL=ignoreboth:erasedups

# ~/ Cleanup
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.cache
export HISTFILE="$XDG_DATA_HOME"/bash/history
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GOPATH="$XDG_DATA_HOME"/go
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export WGETRC="$XDG_CONFIG_HOME"/wget/wgetrc
export LESSHISTFILE=-

# START X SERVER
[ "$(tty)" = "/dev/tty1" ] && pgrep ${WM:-bspwm} || startx "$XDG_CONFIG_HOME/X11/xinitrc"
