# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Cool color for man pages
export PAGER="most"

# ls colors, see: http://www.linux-sxs.org/housekeeping/lscolors.html
# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
export COLOR_IBlack='\033[0;90m'
export COLOR_ICyan='\033[1;96m'

# Some more, to avoid mistakes
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Cute shell shortcuts
alias ll='ls -lh'

# User info
export USERNAME="Anton"

# Network info eth0
#IP_ADDR=`ifconfig eth0 2>/dev/null | grep -v inet6 | grep inet | awk '{print $2}' | cut -d":" -f2`

# Set bash prompt
# ereminag@194-58-92-177.cloudvps.regruhosting.ru  ~ $
export PS1="\[${COLOR_ICyan}\][\[${COLOR_IBlack}\]\t\[${COLOR_ICyan}\]]\[${COLOR_ICyan}\]-[\[${COLOR_WHITE}\]\u\[${COLOR_ICyan}\]]-\[${COLOR_ICyan}\][\[${COLOR_GREEN}\]\w\[${COLOR_ICyan}\]]\[${COLOR_NO}\]\$\[${COLOR_WHITE}\] "


# Welcome message
echo -ne "Have a nice day, $USERNAME! It's "; date '+%A, %B %-d %Y'
echo
w
echo

# function. useful unarchiver
# Useful unarchiver!
function extract () {
        if [ -f $1 ] ; then
                case $1 in
                        *.tar.bz2)        tar xjf $1                ;;
                        *.tar.gz)        tar xzf $1                ;;
                        *.bz2)                bunzip2 $1                ;;
                        *.rar)                rar x $1                ;;
                        *.gz)                gunzip $1                ;;
                        *.tar)                tar xf $1                ;;
                        *.tbz2)                tar xjf $1                ;;
                        *.tgz)                tar xzf $1                ;;
                        *.zip)                unzip $1                ;;
                        *.Z)                uncompress $1        ;;
                        *)                        echo "'$1' cannot be extracted via extract()" ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
}

# "Fuck you" alias to kill processes
# https://gist.github.com/Gargron/9122743

function fuck() {
  if [ ! $1 ]; then
    echo "Usage: fuck you process_name"
    exit
  fi

  if killall $2; then
    echo
    echo " (╯°□°）╯︵$(echo $2 | ./flip)"
    echo
  fi
}
