# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


# added below to track history for almost forever
HISTCONTROL=ignoredups
HISTSIZE=2000000
HISTFILESIZE=2000000
HISTTIMEFORMAT="[%Y-%m-%d - %H:%M:%S] "
shopt -s histappend
alias less="less -I -R"
alias grep="grep --color=auto"
alias nano="nano -w"

export TERM=linux

#------------------------------
# COLORS
#------------------------------
NONE="\[\033[0m\]"
BK="\[\033[0;30m\]" #Black
EBK="\[\033[1;30m\]"
RD="\[\033[0;31m\]" #Red
ERD="\[\033[1;31m\]"
GR="\[\033[0;32m\]" #Green
EGR="\[\033[1;32m\]"
YW="\[\033[0;33m\]" #Yellow
EYW="\[\033[1;33m\]"
BL="\[\033[0;34m\]" #Blue
EBL="\[\033[1;34m\]"
MG="\[\033[0;35m\]" #Magenta
EMG="\[\033[1;35m\]"
CY="\[\033[0;36m\]" #Cyan
ECY="\[\033[1;36m\]"
WH="\[\033[0;37m\]" #White
EWH="\[\033[1;37m\]"

# Prompt color
PS1="${RD}[\t]${ECY}[${EGR}\u@\h${EBL} \W${NONE}]# "
PROMPT_COMMAND='history -a'
alias ll='ls -lhtr --color=tty' 2>/dev/null
