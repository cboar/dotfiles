[[ "$-" != *i* ]] && return
export PS1="%n %~ %(!.#.$) "
export TERM=xterm
export VISUAL=vim
export EDITOR=vim
export LIBVIRT_DEFAULT_URI="qemu:///system"
alias xclip="xclip -sel clip < "
alias ls="ls --color=auto"
alias l="ls -CF"
alias vrc="vim ~/.vimrc"
alias vcr="vim /usr/local/bin/comprun-file"
alias i3cg="cd ~/.config/i3; vim"
alias ..="cd .."
alias ...="cd ../.."
