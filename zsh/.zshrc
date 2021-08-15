# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export PATH=~/.composer/vendor/bin:~/bin/:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# I am not even sure if this theme is being used. I am using starship prompt
# and I guess that will override this theme. Also I am using iterm2-snapp terminal color scheme
ZSH_THEME="robbyrussell"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true" 

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true" # I uncommented it.

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true" # I uncommented it.

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true" # I uncommented it.

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

HISTSIZE=100000
SAVEHIST=100000


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx z extract history)
# ^^ oh-my-zsh provides many plugins. By default in my installation, I had:
# plugins=(git sublime osx z extract history)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source-zsh() {
    if [[ -f $1 && -r $1 ]]; then
        source ~/.zsh/sensitive.zsh
    fi
}

load-custom-plugins() {
    plugins=("zsh-autosuggestions" "zsh-syntax-highlighting")
    for plugin in $plugins; do
        file=~/.zsh/${plugin}/${plugin}.zsh
        if [[ -f $file && -r $file ]]; then
            source $file
        fi
    done
    # # custom plugin added by me, following the instructions mentioned in -
    # # https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
    # # gives suggestions like fish shell
    # source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

    # # another plugin
    # # https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#in-your-zshrc
    # # well highlights the syntax as you type
    # source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
}
# load-custom-plugins

# load-sensitive() {
#     if [[ -f ~/.zsh/sensitive.zsh && -r ~/.zsh/sensitive.zsh ]]; then
#         source ~/.zsh/sensitive.zsh
#     fi
# }
# load-sensitive

uploader() {
    # eval $2
    x="cd $3 && tar xvzf - && rm -rf $5 && mv $4 $5 && mv $1 $4"
    eval "tar czf - $1 | $2 \"$x\""
    # x=$("tar -cz $1")
    # eval "$2 \"cd $3 && tar xvzf $x && rm -rf $5 && mv $4 $5 && mv $1 $4\""
}

# source-zsh ~/.zsh/aditya.zsh
source-zsh ~/.zsh/sensitive.zsh
source-zsh ~/.zsh/cpp.zsh
source-zsh ~/.zsh/aliases.zsh

loadNvm() {
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";
    if [[ -f .nvmrc && -r .nvmrc ]]; then
        nvm use
    fi
}

# place this after nvm initialization!
# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use
#   elif [[ $(nvm version) != $(nvm version default)  ]]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

# [net]work [u]sage: check network usage stats
netu() {
    ADDRESS=$(ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2)
    TRANSMITTED_BYTES=$(netstat -ib -I en0 | grep $ADDRESS | awk '{print $10}')
    TRANSMITTED=$(bc <<< "scale=2; $TRANSMITTED_BYTES/1000000")
    RECEIVED_BYTES=$(netstat -ib -I en0 | grep $ADDRESS | awk '{print $7}')
    RECEIVED=$(bc <<< "scale=2; $RECEIVED_BYTES/1000000")

    printf "%s MB\n" "$(tput bold)🔼 TRANSMITTED $(tput sgr0): $TRANSMITTED"
    printf "%s MB\n" "$(tput bold)🔽 RECEIVED    $(tput sgr0): $RECEIVED"
}

# eval "$(starship init zsh)"

# alias sfzf='fzf --height 40% --reverse'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --inline-info --preview 'bat --style=numbers --color=always --line-range :500 {}'"
export FZF_CTRL_R_OPTS="--preview ''"

# it first checks whether the file exists and if it does, it sources that.
# It is used to make ctrl+r work, I guess.
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source-zsh ~/.fzf.zsh

