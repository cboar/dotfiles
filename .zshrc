[[ "$-" != *i* ]] && return
[ -z "$PS1" ] && return

export PS1="%n %~ %(!.#.$) "
export TERM=xterm
export VISUAL=vim
export EDITOR=vim

export LIBVIRT_DEFAULT_URI="qemu:///system"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64"
export CUDA_HOME=/opt/cuda/
export PATH="${CUDA_HOME}/bin:${PATH}"

alias ls="ls --color=auto"
alias l="ls -CF"
alias vrc="vim ~/.vimrc"
alias vcr="vim /usr/local/bin/comprun-file"
alias i3cg="cd ~/.config/i3; vim"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

function cd {
	builtin cd "$@" && ls -F
}
