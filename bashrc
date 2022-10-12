#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Enable Vim key bindings
set -o vi
set editing-mode vi
set keymap vi

alias update='sudo pacman -Syu'
alias upgrade="sudo pacman -Syu --noconfirm && yay -Sua"
alias remove='sudo pacman -Rs'
alias halt='shutdown now'

alias ls='ls -GFh --color'
alias ll='ls -lash --color'
alias sl="ls"

alias t="tmux"
alias tls="tmux ls"
alias tns="tmux new -s"
alias tma="tmux attach -t"

alias ga="git add ."
alias gs="git status"
alias gc="git commit"

alias dc="docker-compose"

alias grep='grep --color=always'
alias diff='diff --color=auto'

alias psg='ps -A | grep'

PS1='\[\e[36m\][\t] \[\e[32m\e[1m\]\u\[\e[0m\e[39m\] \[\e[91m\]\w\[\e[39m\]\n \[\e[97m\]>\[\e[39m\] '

alias vi='vim'
alias cp="cp -i"
alias df='df -Th'
alias free='free -m'
alias rm='rm -i'
alias mv='mv -i'

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias "findf"="sudo find / 2>/dev/null | grep"
