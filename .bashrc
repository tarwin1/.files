set -o vi
stty -ixon
shopt -s autocd
shopt -s histappend
shopt -s cmdhist
HISTSIZE= HISTFILESIZE=

# Colors
alias ls='ls -hN --color=auto'
alias la='ls -hN -a --color=auto --group-directories-first'
alias grep="grep --color=auto"

# Prompt
PS1='\[\e[0;31m\][\[\e[0m\]\u\[\e[0;31m\]@\[\e[0m\]core\[\e[0;31m\]]\[\e[m\] \[\e[0;38;5;253m\]\w\[\e[m\] \[\e[0m\]$\[\e[m\] \[\e0'

# Folder Bookmarks
alias cc="cd ~/.config && ls -a"
alias sc="cd ~/.local/scripts && la"
alias dc="cd ~/Documents"

# File Bookmark
alias bb="nvim ~/.bashrc"
alias cbsp="nvim ~/.config/bspwm/bspwmrc"
alias csx="nvim ~/.config/sxhkd/sxhkdrc"
alias cvim="nvim ~/.config/nvim/init.vim"
alias cpl="nvim ~/.config/polybar/config"
alias anew="nvim ~/.config/newsboat/urls"

# Programs
alias p="sudo pacman"
alias y="yay"
alias SS="sudo systemctl"
alias mocp="mocp -M "$XDG_CONFIG_HOME"/moc"
alias n="nnn"
alias N="sudo nnn"
alias v="nvim"
alias V="sudo nvim"
alias mkd="mkdir -v"
alias yta="youtube-dl -f bestaudio"
alias za="zathura"
