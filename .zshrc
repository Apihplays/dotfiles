#highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz compinit

#alias
alias pagi='redshift -O 5500'
alias malam='redshift -O 3000'
alias upgrade='yaourt -Syua'
alias optimize='sudo pacman-optimize'
alias pac='sudo pacman'
alias exit='openbox --exit'
alias reconfigure='openbox --reconfigure'
#pacman with ghost
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
#zsh theme
POWERLEVEL9K_MODE='awesome-fontconfig'
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir os_icon vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(disk_usage ram root_indicator history)
