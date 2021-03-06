#!/bin/bash
# ~/.bashrc, controlling bash (Bourne Again Shell) behaviour
[ -z "$PS1" ] && return
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
# Do not save .bash_history
export HISTFILESIZE=0
# enable color support of ls and also add handy aliases
. /etc/bash_completion
alias xlock='xscreensaver-command -lock'
export EDITOR=vi
alias ls='ls -F'
# Show tty number in prompt, so there is no need for
# hardstatus line in screen
PS1="\w \$ "
# PS1="\w \$ "
# alias ipython='ipython --classic'
alias ditaa='java -jar /opt/ditaa0_9.jar'
# reusing many routers with many different ssh keys yields a lot
# of 'man-in-the-middle' errors from ssh ... disable those
alias ssh='ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'
# Make lynx work with modern spyware sites :P
alias lynx='lynx -accept_all_cookies'
# Some paths twiddling for /opt apps'
# odkq.com helper scripts are in ~/odkq/bin
export PATH=$HOME/odkq/bin/:$PATH
# Newer things ...
alias ipython=bpython
alias screen=tmux
[[ -f "/home/pablo/.local/share/Steam/setup_debian_environment.sh" ]] && source "/home/pablo/.local/share/Steam/setup_debian_environment.sh"

if [ $TERM == "xterm" ]; then
	export TERM=xterm-256color
fi

if [ $TERM == "screen" ]; then
	export TERM=xterm-256color
fi

if [ $TERM == "screen-256color" ]; then
	export TERM=xterm-256color
fi

export PATH=~/bin:$PATH
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

