PAGER=less;     export PAGER
EDITOR=vim;     export EDITOR
alias root='sudo bash --rcfile /home/jales/.bash_profile'
alias chgit='sudo -ugit bash --rcfile /home/jales/.bash_profile'
alias grep='grep --color'
alias ssh='ssh -A'
alias vim='vim -u /home/jales/.vimrc'
alias ll='ls -alhG'
HNAME=`hostname -s`
PROMPT_COMMAND='echo -ne "\033]0;${HNAME}\a"'
HISTTIMEFORMAT="%d/%m/%y %T: "
# export LSCOLORS="exCxacaeCxahagaFaGExEx";
export LSCOLORS="fxcxexdxbxegedabagacad";
if [ `id -u` -gt 0 ]; then
PS1="\[\033[0;32m\][\$(date +%H):\$(date +%M)]\[\033[1;32m\][\u@\h:\w]$ \[\033[0;37m\]"
else
PS1="\[\033[0;31m\][\$(date +%H):\$(date +%M)]\[\033[1;31m\][\u@\h:\w]$ \[\033[0;37m\]"
fi
