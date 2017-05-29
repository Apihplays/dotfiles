# Created by newuser for 5.3.1


#themes
autoload -Uz promptinit
promptinit
prompt fade 'blue'

#alias
alias pagi='redshift -O 5500'
alias malam='redshift -O 3500'
alias upgrade='sudo pacman -Syu'
alias optimize='sudo pacman-optimize'
alias pac='sudo pacman -S'

#highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#antigen
source /usr/share/zsh/share/antigen.zsh

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
