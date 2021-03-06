# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
  export LANG=en_US.UTF-8
 # export ANDROID_HOME=/opt/android-sdk
# Path to your oh-my-zsh installation.
  export ZSH=/home/tardis/.oh-my-zsh
  export PATH=$PATH:/opt/anaconda/bin
  LC_CTYPE="zh_CN.utf-8"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="ys"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
autoload -U compinit && compinit -u
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  archlinux
)
alias ssr="python ~/code/shadowsocksr/shadowsocks/local.py -c /etc/shadowsocks.json"
#alias tim="cd /usr/share/applications&&gtk-launch deepin.com.qq.office.desktop &"
alias tim="cd /home/tardis/program/tim&&./tim.AppImage"
alias grep='grep --color=auto'
#alias install='yaourt -S'
alias remove='sudo pacman -Rcn'
alias upgrade='sudo pacman -Syu'
alias qq='cd ~/program/QQLite/&&./qq'
alias pycharm='~/.local/share/JetBrains/Toolbox/apps/PyCharm-P/ch-0/173.4301.16/bin/pycharm.sh'
alias minecraft='cd ~/program/minecraft &&java -jar HMCL-2.7.9.55.jar'
source $ZSH/oh-my-zsh.sh
alias unzip="unzip -O gb18030"
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval $(thefuck --alias)
source /usr/share/nvm/init-nvm.sh

function wd() {
    word=$1;
    if [ -z "$1"]; then
        echo "example:wd 要删除的单词";
    else
    sed -i "/$word/d" ~/word/vocabulary;
fi
}
function wl(){
    cat ~/word/vocabulary;
}
function wa(){
    echo $1 >> ~/word/vocabulary;
}
function wss(){
    cat ~/word/vocabulary|awk '{print $1}'|ydcv -s;
}
function ws(){
    cat ~/word/vocabulary|awk '{print $1}'|ydcv
}
function wq(){
    wa $1;
    cat ~/word/vocabulary|tail -n 1|ydcv 
}

