
# Show Hidden files in Finder

alias finder_s='defaults write com.apple.Finder AppleShowAllFiles TRUE; killAll Finder'



# Hide Hidden files in Finder

alias finder_h='defaults write com.apple.Finder AppleShowAllFiles FALSE; killAll Finder'



# See http://www.shellperson.net/using-sudo-with-an-alias/

alias sudo="sudo "



# Set vim as default

alias vi=vim

alias svi='sudo vi'

alias vis='vim "+set si"'

alias edit='vim'



# Shortcut commands

alias py="python"

alias osu="open -a Sublime\ Text\ 3"

alias vlc="open -a VLC"

alias nd="node debug"



# Github commands

alias gb="git branch"

alias gs="git status"

alias ga="git add"

alias gc="git commit"

alias gcm="git commit -m"

alias gcl="git clone"

alias gl="git log"

alias glo="git log --pretty=oneline"

alias glu="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

alias gco="git checkout"

alias gchm="git checkout master"

alias gt="git tag"

alias grs="git reset"

alias grv="git revert"

alias gm="git merge"

alias gp="git push"

alias gpom="git push origin master"

alias gpu="git pull"

alias gpum="git pull origin master"

alias gprb="git pull --rebase origin master"

alias gd="git diff"

alias gpo="git push origin"

alias gob="git checkout -b"



# Docker

alias bd="boot2docker"

alias bds="boot2docker start"

alias dk="docker"

alias dkr="docker run"



docker-ip() {

  boot2docker ip 2> /dev/null

}



# Vagrant

alias vg="vagrant"



# Helper functions



# combine mkdir and cd

mkcd () {

  mkdir "$1"

  cd "$1"

}



# combine touch and osu

tosu () {

  touch "$1"

  osu "$1"

}



# Run python's simple server

alias serve="python -m SimpleHTTPServer"



export REPLYTO=tretuna@gmail.com  # put your email address here

alias zach="mail zach@fake_gmail.com"

alias tony="mail tony@fake_hackreactor.com"

alias bonnie="mail bonnie@fake_gmail.com"



# functions

# Change directory to the current Finder directory

cdf() {

    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`

    if [ "$target" != "" ]; then

        cd "$target"; pwd

    else

        echo 'No Finder window found' >&2

    fi

}



# return my IP address

function myip() {

    ifconfig wlp1s0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "wlp1s0       : " $3}'

}
# colors
default='\e[0m'
black='\e[0;30m'
red='\e[0;31m'
green='\e[0;32m'
yellow='\e[0;33m'
blue='\e[0;34m'
magenta='\e[0;35m'
cyan='\e[0;36m'
lgray='\e[0;37m'
dgray='\e[0;90m'
lred='\e[1;91m'
lgreen='\e[1;92m'
lyellow='\e[1;93m'
lblue='\e[1;94m'
lmagenta='\e[1;95m'
lcyan='\e[1;96m'
white='\e[1;97m'


