[[ "$-" != *i* ]] && return
export PS1='\u \w \\$ \[$(tput sgr0)\]'
export TERM=xterm
export VISUAL=vim
export EDITOR=vim
alias ls="ls --color=auto"
alias l="ls -CF"
alias vrc="vim ~/.vimrc"
alias vcr="vim /usr/local/bin/comprun-file"
alias i3cg="cd ~/.config/i3; vim"
alias ..="cd .."
alias ...="cd ../.."
