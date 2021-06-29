# oh-my-zsh shit, yes i'm too lazy to manually configure my zsh
export ZSH="/home/user/.oh-my-zsh"
ZSH_THEME="refined"
plugins=(zsh-syntax-highlighting colored-man-pages)
source $ZSH/oh-my-zsh.sh

# defaults
export EDITOR='vim'
export BROWSER='firefox'

# android shit
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# java shit
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

# alias
alias fuck='shutdown -P now'

alias up='sudo pacman -Syu'
alias ins='sudo pacman -S'
alias rem='sudo pacman -Rcns'
alias clearsys='sudo pacman -Sc && yay -Sc && rm -rf ~/.cache/* && sudo rm -rf /tmp/*'

alias ..='cd ..'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

alias tsm='transmission-remote'

alias clone='git clone'
alias restore='git restore'
alias status='git status'
alias gdiff='git diff'
alias add='git add'
alias commit='git commit -m'
alias pull='git pull'
alias push='git pull && git push'

alias key='xset r rate 300 50 && setxkbmap br'
