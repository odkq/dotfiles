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
# Some handy aliases to avoid innecesary colors
alias mc="mc -ab"
alias ls='ls --color=never -F'
alias ipython='ipython --classic'
# Show tty number in prompt, so there is no need for
# hardstatus line in screen
PS1="\l \w \$ "
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
