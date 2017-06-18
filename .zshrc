#highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz compinit

#alias
alias pagi='redshift -O 5500'
alias malam='redshift -O 3000'
alias upgrade='sudo pacman -Syu'
alias optimize='sudo pacman-optimize'
alias pac='sudo pacman'
alias exit='openbox --exit'
alias reconfigure='openbox --reconfigure'

alias screenfetch="screenfetch -w -c 31,3"
~/.pacman.sh

man() {
    env \
	LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	LESS_TERMCAP_md=$(printf "\e[1;31m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;32m") \
	man "$@"
}

source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
antigen theme robbyrussell
antigen apply
