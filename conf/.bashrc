export VISUAL=vim
export EDITOR="$VISUAL"
[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

		PS1='\[\033[01;31m\]\u\[\033[00m\]\[\033[01;34m\] \[\033[00m\]\[\033[01;34m\]\W\[\033[00m\] \[\033[00;37m\]\$\[\033[00m\] '

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'
	alias bashrc='vim ~/.bashrc'
	alias dwmrc='vim ~/.config/dwm-6.4/config.def.h'
	alias confi3='vim ~/.config/i3/config'
	alias poweroff='systemctl poweroff'
	alias vimrc='vim ~/.vimrc'

	#alias cp="cp -i"                          # confirm before overwriting something
#alias df='df -h'                          # human-readable sizes
#alias free='free -m'                      # show sizes in MB
#alias np='nano -w PKGBUILD'
#alias more=less


