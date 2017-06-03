
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


function get_node_version() {
  node -v | sed -e 's/v/Node /'
}
# Makes creating a new tmux session (with a specific name) easier
function tmuxopen() {
  tmux attach -t $1
}

alias ta=tmuxopen

# Makes creating a new tmux session (with a specific name) easier
function tmuxnew() {
  tmux new -s $1
}

alias tn=tmuxnew

# Makes deleting a tmux session easier
function tmuxkill() {
  tmux kill-session -t $1
}
alias tk=tmuxkill

alias r="refreshzrc"
alias tat='tmux new-session -As $(basename "$PWD" | tr . -)' # will attach if session exists, or create a new session
alias tmuxr="tmux source-file ~/.tmux.conf"
alias tmuxka="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}" # tmux kill all sessions
alias edittc="vim ~/.tmux.conf && tmuxr"

alias editzrc="vim ~/.zshrc && refreshzrc"
alias refreshzrc="source ~/.zshrc && echo 'profile refreshed'"
alias showzrc="cat ~/.zshrc"

cdlsFunction() {
  cd "$1";
  pwd;
  ls -a;
}
alias cdls=cdlsFunction

addtobpFunction() {
  cat >> ~/.zshrc;
  refreshzrc;
}
alias addtozrc=addtobpFunction

alias helpzrc="printf 'Use the following commands to edit your bash profile:
${lmagenta}refreshzrc${default}: Refreshes your bash profile
${cyan}showzrc${default}: Logs your bash profile to the terminal
${green}editzrc${default}: Opens your bash profile in the vim editor
${yellow}addtozrc${default}: Creates a new input to be appended to the bottom of your bash profile. Use ${yellow}CTRL + D${default} to save to the file, and ${yellow}CTRL + C${default} to cancel out and not save.\n'"

alias tmux\?="printf '${lcyan}ta     ${blue}- Attaches to running session ${default}tmux attach -t \${name}
${lcyan}tn     ${blue}- Creates a new session with name               ${default}tmux new -s \${name}          
${lcyan}tk     ${blue}- Kills sessions by name                        ${default}tmux kill-session -t \${name}  
${lcyan}tat    ${blue}- Attach or create session if it does not exist ${default}tmux new-session -As           
${lcyan}tmuxr  ${blue}- refreshes tmux conf                           ${default}tmux source-file ~/.tmux.conf  
${lcyan}tmuxka ${blue}- Kills all sessions                            ${default}tmux ls | kill-session         
${lcyan}edittc ${blue}- Opens tmux conf and refreshes after edit      ${default}vim ~/.tmux.conf && tmuxr      
${default}'"

autoload -U compinit && compinit
zmodload -i zsh/complist

# man zshcontrib
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:*' enable git #svn cvs

# Enable completion caching, use rehash to clear
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

# Fallback to built in ls colors
zstyle ':completion:*' list-colors ''

# Make the list prompt friendly
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'

# Make the selection prompt friendly when there are a lot of choices
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# Add simple colors to kill
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select=1 _complete _ignored _approximate

# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:scp:*' tag-order files users 'hosts:-host hosts:-domain:domain hosts:-ipaddr"IP\ Address *'
zstyle ':completion:*:scp:*' group-order files all-files users hosts-domain hosts-host hosts-ipaddr
zstyle ':completion:*:ssh:*' tag-order users 'hosts:-host hosts:-domain:domain hosts:-ipaddr"IP\ Address *'
zstyle ':completion:*:ssh:*' group-order hosts-domain hosts-host users hosts-ipaddr
zstyle '*' single-ignored show

alias \?="printf '${magenta}Here are your available help commands:
${green}zsh?
${yellow}chrome?
${lmagenta}i3?
${lcyan}tmux?${default}
'"

alias zsh\?="printf 'Use the following commands to edit your bash profile:
${lmagenta}refreshzrc${default}: Refreshes your bash profile
${cyan}showzrc${default}: Logs your bash profile to the terminal
${green}editzrc${default}: Opens your bash profile in the vim editor
${yellow}addtozrc${default}: Creates a new input to be appended to the bottom of your bash profile. Use ${yellow}CTRL + D${default} to save to the file, and ${yellow}CTRL + C${default} to cancel out and not save.\n'"

alias chrome\?="printf '${yellow}Useful Chrome shortucts
${red}CTRL + N${default} open an incognito tab 
'"

alias i3\?="printf 'Here are your basic functionality commands for i3:
${lmagenta}vol${default}: alsamixer ${cyan}- Sound and volume control
${lmagenta}nmcli --help${default}: nmcli ${cyan}- Network and wifi manager
${default}\n'"

alias tmux\?="printf '${lcyan}ta     ${cyan}- Attaches to running session                ${default}tmux attach -t \${name}
${lcyan}tn     ${cyan}- Creates a new session with name               ${default}tmux new -s \${name}          
${lcyan}tk     ${cyan}- Kills sessions by name                        ${default}tmux kill-session -t \${name}  
${lcyan}tat    ${cyan}- Attach or create session if it does not exist ${default}tmux new-session -As           
${lcyan}tmuxr  ${cyan}- refreshes tmux conf                           ${default}tmux source-file ~/.tmux.conf  
${lcyan}tmuxka ${cyan}- Kills all sessions                            ${default}tmux ls | kill-session         
${lcyan}edittc ${cyan}- Opens tmux conf and refreshes after edit      ${default}vim ~/.tmux.conf && tmuxr      
${default}'"



