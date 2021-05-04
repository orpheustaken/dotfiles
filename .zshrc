# oh-my-zsh shit, yes i'm too lazy to manually configure my zsh
export ZSH="/home/user/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting adb)
source $ZSH/oh-my-zsh.sh

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
