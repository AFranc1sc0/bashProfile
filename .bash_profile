#Updates history to be fat and sync with multiple winows open
#As per comment here: https://www.quora.com/What-are-some-useful-bash_profile-and-bashrc-tips
shopt -s histappend
PROMPT_COMMAND="history -n; history -a"
unset HISTFILESIZE 
HISTSIZE=2000


#Git aware, important af
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\h \[$(tput sgr0)\]\[\033[38;5;13m\]\d\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]\A\[$(tput sgr0)\] \[\033[38;5;9m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]🎃 🎃 🎃  >"
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "


#playing with git
alias gs="git status"
alias gc="git commit -am"
alias add="git add ."

#Essential aliases
alias ll="ls -al;"
alias his="history | grep"

#brew alias for keeping brew clean
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
function cdn(){ for i in `seq $1`; do cd ..; done;}

#Metasploit Stuff Brought to you by
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin

#python virt env display

RED='\[\033[31m\]'
if [[ $VIRTUAL_ENV != "" ]] 
    then
      venv= "${RED}(${VIRTUAL_ENV##*/})"
else
      venv=""
fi 

#random 
alias cyphertracer='hexdump -C /dev/random | grep --color=always "ca fe"'

#logconfig
alias addLog='echo "" >> ~/changeLog.txt'
