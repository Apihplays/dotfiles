#highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz compinit
#android
export USE_CCACHE=1
export CCACHE_COMPRESS=1
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
#alias
alias pagi='redshift -O 5500'
alias malam='redshift -O 3000'
alias upgrade='pacaur -Syu'
alias optimize='sudo pacman-optimize'
alias pac='pacaur'
alias exited='openbox --exit'
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
