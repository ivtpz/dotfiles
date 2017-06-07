
# Show Hidden files in Finder

alias finder_s='defaults write com.apple.Finder AppleShowAllFiles TRUE; killAll Finder'



# Hide Hidden files in Finder

alias finder_h='defaults write com.apple.Finder AppleShowAllFiles FALSE; killAll Finder'



# See http://www.shellperson.net/using-sudo-with-an-alias/

alias sudo="sudo "

alias .='cd ~/dotfiles && vim'

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

alias gd="git difftool"

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



export REPLYTO=iveytopaz@gmail.com  # put your email address here

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
c1='\e[38;5;1m'
c2='\e[38;5;2m'
c3='\e[38;5;3m'
c4='\e[38;5;4m'
c5='\e[38;5;5m'
c6='\e[38;5;6m'
c7='\e[38;5;7m'
c8='\e[38;5;8m'
c9='\e[38;5;9m'
c10='\e[38;5;10m'
c11='\e[38;5;11m'
c12='\e[38;5;12m'
c13='\e[38;5;13m'
c14='\e[38;5;14m'
c15='\e[38;5;15m'
c16='\e[38;5;16m'
c17='\e[38;5;17m'
c18='\e[38;5;18m'
c19='\e[38;5;19m'
c20='\e[38;5;20m'
c21='\e[38;5;21m'
c22='\e[38;5;22m'
c23='\e[38;5;23m'
c24='\e[38;5;24m'
c25='\e[38;5;25m'
c26='\e[38;5;26m'
c27='\e[38;5;27m'
c28='\e[38;5;28m'
c29='\e[38;5;29m'
c30='\e[38;5;30m'
c31='\e[38;5;31m'
c32='\e[38;5;32m'
c33='\e[38;5;33m'
c34='\e[38;5;34m'
c35='\e[38;5;35m'
c36='\e[38;5;36m'
c37='\e[38;5;37m'
c38='\e[38;5;38m'
c39='\e[38;5;39m'
c40='\e[38;5;40m'
c41='\e[38;5;41m'
c42='\e[38;5;42m'
c43='\e[38;5;43m'
c44='\e[38;5;44m'
c45='\e[38;5;45m'
c46='\e[38;5;46m'
c47='\e[38;5;47m'
c48='\e[38;5;48m'
c49='\e[38;5;49m'
c50='\e[38;5;50m'
c51='\e[38;5;51m'
c52='\e[38;5;52m'
c53='\e[38;5;53m'
c54='\e[38;5;54m'
c55='\e[38;5;55m'
c56='\e[38;5;56m'
c57='\e[38;5;57m'
c58='\e[38;5;58m'
c59='\e[38;5;59m'
c60='\e[38;5;60m'
c61='\e[38;5;61m'
c62='\e[38;5;62m'
c63='\e[38;5;63m'
c64='\e[38;5;64m'
c65='\e[38;5;65m'
c66='\e[38;5;66m'
c67='\e[38;5;67m'
c68='\e[38;5;68m'
c69='\e[38;5;69m'
c70='\e[38;5;70m'
c71='\e[38;5;71m'
c72='\e[38;5;72m'
c73='\e[38;5;73m'
c74='\e[38;5;74m'
c75='\e[38;5;75m'
c76='\e[38;5;76m'
c77='\e[38;5;77m'
c78='\e[38;5;78m'
c79='\e[38;5;79m'
c80='\e[38;5;80m'
c81='\e[38;5;81m'
c82='\e[38;5;82m'
c83='\e[38;5;83m'
c84='\e[38;5;84m'
c85='\e[38;5;85m'
c86='\e[38;5;86m'
c87='\e[38;5;87m'
c88='\e[38;5;88m'
c89='\e[38;5;89m'
c90='\e[38;5;90m'
c91='\e[38;5;91m'
c92='\e[38;5;92m'
c93='\e[38;5;93m'
c94='\e[38;5;94m'
c95='\e[38;5;95m'
c96='\e[38;5;96m'
c97='\e[38;5;97m'
c98='\e[38;5;98m'
c99='\e[38;5;99m'
c100='\e[38;5;100m'
c101='\e[38;5;101m'
c102='\e[38;5;102m'
c103='\e[38;5;103m'
c104='\e[38;5;104m'
c105='\e[38;5;105m'
c106='\e[38;5;106m'
c107='\e[38;5;107m'
c108='\e[38;5;108m'
c109='\e[38;5;109m'
c110='\e[38;5;110m'
c111='\e[38;5;111m'
c112='\e[38;5;112m'
c113='\e[38;5;113m'
c114='\e[38;5;114m'
c115='\e[38;5;115m'
c116='\e[38;5;116m'
c117='\e[38;5;117m'
c118='\e[38;5;118m'
c119='\e[38;5;119m'
c120='\e[38;5;120m'
c121='\e[38;5;121m'
c122='\e[38;5;122m'
c123='\e[38;5;123m'
c124='\e[38;5;124m'
c125='\e[38;5;125m'
c126='\e[38;5;126m'
c127='\e[38;5;127m'
c128='\e[38;5;128m'
c129='\e[38;5;129m'
c130='\e[38;5;130m'
c131='\e[38;5;131m'
c132='\e[38;5;132m'
c133='\e[38;5;133m'
c134='\e[38;5;134m'
c135='\e[38;5;135m'
c136='\e[38;5;136m'
c137='\e[38;5;137m'
c138='\e[38;5;138m'
c139='\e[38;5;139m'
c140='\e[38;5;140m'
c141='\e[38;5;141m'
c142='\e[38;5;142m'
c143='\e[38;5;143m'
c144='\e[38;5;144m'
c145='\e[38;5;145m'
c146='\e[38;5;146m'
c147='\e[38;5;147m'
c148='\e[38;5;148m'
c149='\e[38;5;149m'
c150='\e[38;5;150m'
c151='\e[38;5;151m'
c152='\e[38;5;152m'
c153='\e[38;5;153m'
c154='\e[38;5;154m'
c155='\e[38;5;155m'
c156='\e[38;5;156m'
c157='\e[38;5;157m'
c158='\e[38;5;158m'
c159='\e[38;5;159m'
c160='\e[38;5;160m'
c161='\e[38;5;161m'
c162='\e[38;5;162m'
c163='\e[38;5;163m'
c164='\e[38;5;164m'
c165='\e[38;5;165m'
c166='\e[38;5;166m'
c167='\e[38;5;167m'
c168='\e[38;5;168m'
c169='\e[38;5;169m'
c170='\e[38;5;170m'
c171='\e[38;5;171m'
c172='\e[38;5;172m'
c173='\e[38;5;173m'
c174='\e[38;5;174m'
c175='\e[38;5;175m'
c176='\e[38;5;176m'
c177='\e[38;5;177m'
c178='\e[38;5;178m'
c179='\e[38;5;179m'
c180='\e[38;5;180m'
c181='\e[38;5;181m'
c182='\e[38;5;182m'
c183='\e[38;5;183m'
c184='\e[38;5;184m'
c185='\e[38;5;185m'
c186='\e[38;5;186m'
c187='\e[38;5;187m'
c188='\e[38;5;188m'
c189='\e[38;5;189m'
c190='\e[38;5;190m'
c191='\e[38;5;191m'
c192='\e[38;5;192m'
c193='\e[38;5;193m'
c194='\e[38;5;194m'
c195='\e[38;5;195m'
c196='\e[38;5;196m'
c197='\e[38;5;197m'
c198='\e[38;5;198m'
c199='\e[38;5;199m'
c200='\e[38;5;200m'
c201='\e[38;5;201m'
c202='\e[38;5;202m'
c203='\e[38;5;203m'
c204='\e[38;5;204m'
c205='\e[38;5;205m'
c206='\e[38;5;206m'
c207='\e[38;5;207m'
c208='\e[38;5;208m'
c209='\e[38;5;209m'
c210='\e[38;5;210m'
c211='\e[38;5;211m'
c212='\e[38;5;212m'
c213='\e[38;5;213m'
c214='\e[38;5;214m'
c215='\e[38;5;215m'
c216='\e[38;5;216m'
c217='\e[38;5;217m'
c218='\e[38;5;218m'
c219='\e[38;5;219m'
c220='\e[38;5;220m'
c221='\e[38;5;221m'
c222='\e[38;5;222m'
c223='\e[38;5;223m'
c224='\e[38;5;224m'
c225='\e[38;5;225m'
c226='\e[38;5;226m'
c227='\e[38;5;227m'
c228='\e[38;5;228m'
c229='\e[38;5;229m'
c230='\e[38;5;230m'
c231='\e[38;5;231m'
c232='\e[38;5;232m'
c233='\e[38;5;233m'
c234='\e[38;5;234m'
c235='\e[38;5;235m'
c236='\e[38;5;236m'
c237='\e[38;5;237m'
c238='\e[38;5;238m'
c239='\e[38;5;239m'
c240='\e[38;5;240m'
c241='\e[38;5;241m'
c242='\e[38;5;242m'
c243='\e[38;5;243m'
c244='\e[38;5;244m'
c245='\e[38;5;245m'
c246='\e[38;5;246m'
c247='\e[38;5;247m'
c248='\e[38;5;248m'
c249='\e[38;5;249m'
c250='\e[38;5;250m'
c251='\e[38;5;251m'
c252='\e[38;5;252m'
c253='\e[38;5;253m'
c254='\e[38;5;254m'
c255='\e[38;5;255m'
c256='\e[38;5;256m'
default='\e[0m'
black=${c232}
green=${c28}
red=${c196}
yellow=${c142}
blue=${c4}
magenta=${c126}
cyan=${c43}
lgray=${c251}
dgray=${c243}
lred=${c161}
lgreen=${c40}
lyellow=${c226}
lblue=${c38}
lmagenta=${c63}
lcyan=${c51}
white=${c255}


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
alias edittc="vim ~/dotfiles/tmux.conf && tmuxr"

alias editvim="vim ~/dotfiles/vimrc"

alias editzrc="vim ~/dotfiles/oh-my-zsh/custom/alias.zsh && refreshzrc"
alias editzrcm="vim ~/dotfiles/zshrc && refreshzrc"
alias refreshzrc="source ~/dotfiles/zshrc && echo 'profile refreshed'"
alias showzrcm="cat ~/dotfiles/zshrc | less"
alias showzrc="cat ~/dotfiles/oh-my-zsh/custom/alias.zsh | less"

cdlsFunction() {
  cd "$1";
  pwd;
  ls -a;
}
alias cdls=cdlsFunction

addtobpFunction() {
  cat >> ~/dotfiles/zshrc;
  refreshzrc;
}
alias addtozrc=addtobpFunction

alias editi3='vim ~/dotfiles/config/i3/config && i3-msg reload | grep -Po --color=never "\"(.*)\"" | sed -e "s/\"//g"'

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

alias \?="printf '${default}Here are your available help commands:
${lgreen}zsh?
${yellow}chrome?
${lmagenta}i3?
${c202}vim?
${lcyan}tmux?
${lred}git?
${c35}shortcuts?
${c1}c${c214}o${c226}l${c46}o${c32}r${c27}s${c62}?${default}
${c1}c${c202}o${c214}l${c226}o${c46}r${c44}s${c32}2${c27}5${c56}6${c90}?${default}
'"


alias shortcuts\?="printf 'Here are your terminal shortcuts:
${c35}fg ${c255}- searches for a file name ${c39}- (dir, name)
'"
alias zsh\?="printf 'Use the following commands to edit your zsh profile:
${lmagenta}refreshzrc${default}: Refreshes your bash profile
${cyan}showzrc${default}: Logs your bash profile to the terminal
${green}editzrc${default}: Opens your zsh custom profile in the vim editor
${lgreen}editzrcm${default}: Opens your zsh main profile in the vim editor
${yellow}addtozrc${default}: Creates a new input to be appended to the bottom of your bash profile. Use ${yellow}CTRL + D${default} to save to the file, and ${yellow}CTRL + C${default} to cancel out and not save.\n'"

alias chrome\?="printf '${yellow}Useful Chrome shortucts
${red}CTRL + N${default} open an incognito tab
'"

alias i3\?="printf 'Here are your basic functionality commands for i3:
${cyan}vol${default}: alsamixer ${lmagenta}- Sound and volume control
${cyan}nmcli --help${default}: nmcli ${lmagenta}- Network and wifi manager
${cyan}nmcli d wifi list${default}: see available WiFi ${lmagenta}- Network and wifi manager
${cyan}nmcli d down|up <SavedWifiConn>${default}: connect or disconnect by saved name ${lmagenta}- Network and wifi manager
${cyan}nmcli d disconnect|connect <WifiInterface>${default}: connect or disconnect by name ${lmagenta}- Network and wifi manager
${cyan}nmcli c${default}: view saved connections${lmagenta}- Network and wifi manager
${cyan}editi3 ${lmagenta}- Opens i3 config in vim and refreshes profile
${default}\n'"

alias vim\?="printf 'Here are your basic functionality commands for vim:
${c202}editvim:${cyan} Opens vimrc in vim ${c226}META!${defalut}
'"

alias tmux\?="printf '${lcyan}ta     ${cyan}- Attaches to running session                ${default}tmux attach -t \${name}
${lcyan}tn     ${cyan}- Creates a new session with name               ${default}tmux new -s \${name}
${lcyan}tk     ${cyan}- Kills sessions by name                        ${default}tmux kill-session -t \${name}
${lcyan}tat    ${cyan}- Attach or create session if it does not exist ${default}tmux new-session -As
${lcyan}tmuxr  ${cyan}- refreshes tmux conf                           ${default}tmux source-file ~/.tmux.conf
${lcyan}tmuxka ${cyan}- Kills all sessions                            ${default}tmux ls | kill-session
${lcyan}edittc ${cyan}- Opens tmux conf and refreshes after edit      ${default}vim ~/.tmux.conf && tmuxr
${default}'"

alias git\?="printf '
${white}Removing submodule ${lred}\ngit submodule deinit <name>\ngit rm <name>\nrm -rf .git/modules/<name>\n
${white}gb ${lred}- git branch
${white}gs ${lred}- git status
${white}ga ${lred}- git add
${white}gc ${lred}- git commit
${white}gcm ${lred}- git commit -m
${white}gcl ${lred}- git clone
${white}gl ${lred}- git log
${white}glo ${lred}- git log --pretty=oneline
${white}glu ${lred}- git log --pretty=format:\"[o/o]h [o/o]ad | [o/o]s[o/o]d [[o/o]an]\" --graph --date=short
${white}gco ${lred}- git checkout
${white}gchm ${lred}- git checkout master
${white}gt ${lred}- git tag
${white}grs ${lred}- git reset
${white}grv ${lred}- git revert
${white}gm ${lred}- git merge
${white}gp ${lred}- git push
${white}gpom ${lred}- git push origin master
${white}gpu ${lred}- git pull
${white}gpum ${lred}- git pull origin master
${white}gprb ${lred}- git pull --rebase origin master
${white}gd ${lred}- git diff
${white}gpo ${lred}- git push origin
${white}gob ${lred}- git checkout -b
'"

alias colors\?="printf '
${default}default
${black}black
${red}red
${green}green
${yellow}yellow
${blue}blue
${magenta}magenta
${cyan}cyan
${lgray}lgray
${dgray}dgray
${lred}lred
${lgreen}lgreen
${lyellow}lyellow
${lblue}lblue
${lmagenta}lmagenta
${lcyan}lcyan
${white}white
${default}
'"
allcolors() {
  for i in {1..256}
  do
    if [[ i -lt 10 ]]; then
      sp="%4s"
    elif [[ i -lt 100 ]]; then
      sp="%3s"
    else
      sp="%2s"
    fi
    if ! (( i % 12)); then
      sp="\n"
    fi
    cn=c${i}
    printf ${(P)cn}c${i}
    printf ${sp}
  done
}
alias colors256\?=allcolors

fgfunc() {
  sudo find "$1" -iname "$2";
}
alias fg=fgfunc
#alias grep=grep --color=always
export GREP_COLOR='1;32'
export LS_COLORS='ex=38;5;153:di=38;5;104;48;5;235:ow=38;5;147;48;5;238:ln=38;5;45:or=38;5;196:*.jsx=38;5;43:*.js=38;5;42:*.json=38;5;31:*.png=38;5;214:*.jpg=38;5;208'

alias ls="ls -G"
alias letsgo="cd ~/web-platform && code ."
alias rancher\?="reattach-to-user-namespace open ~/Desktop/Release-to-rancher-instructions.png"


