# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH="/Users/piyushbansal/.oh-my-zsh"
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
DISABLE_AUTO_UPDATE="true" # I uncommented it.

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true" # I uncommented it.

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

load-sensitive() {
    if [[ -f ~/.zsh/sensitive.zsh && -r ~/.zsh/sensitive.zsh ]]; then
        source ~/.zsh/sensitive.zsh
    fi
}
load-sensitive

uploader() {
    # eval $2
    x="cd $3 && tar xvzf - && rm -rf $5 && mv $4 $5 && mv $1 $4"
    eval "tar czf - $1 | $2 \"$x\""
    # x=$("tar -cz $1")
    # eval "$2 \"cd $3 && tar xvzf $x && rm -rf $5 && mv $4 $5 && mv $1 $4\""
}

compile-and-run() {
	g++ $1 -o bin/$1.out && ./bin/$1.out < input.txt > output.txt
}

com-run() {
	rm -f bin/$1.out && g++ $1 -o bin/$1.out && ./bin/$1.out
}

compile() {
    rm -f bin/$1.out && g++ $1 -o bin/$1.out
}

run() {
       ./bin/$1.out
}


alias subl="open -a /Applications/Sublime\ Text.app"
alias subl4="open -a /Applications/Sublime\ Text\ 4\ early\ build.app"

# ------------------------------------------ #
#copied from aditya

export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:~/.composer/vendor/bin
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export BLOCKSIZE=1k

alias c="clear"
alias e="echo"
alias l="less"
alias h="history"
alias q="exit"
alias d="date"
alias t="touch"
alias o="open"
alias g="git"

#alias ls="ls -FG"
alias ll="ls -la"
alias la="ls -a"
alias cp="cp -v"
alias mv="mv -v"
alias cpf="cp -vR"
alias mvf="mv -vR"
alias rmf="rm -vfR"
alias rm="rm -i"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias dui="cd ~/frontend/dashboard"
alias rui="cd ~/frontend/resume"
alias cui="cd ~/frontend/career-fit"
alias bui="cd ~/frontend/builder"
alias nfui="cd ~/frontend/network-feedback"

alias apinf="cd ~/api/api-network-feedback"

alias qfind="find . -iname "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -iname "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -iname "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -iname '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

# alias ssh="ssh"
alias runphp="php -S localhost:8000 -t public"
alias mysqlroot="mysql -u root -p"
alias sshagent="eval \"$(ssh-agent -s)\""
alias sshadd="ssh-add -K ~/.ssh/github_rsa"
alias gitauth="sshadd; ssh -T git@github.com"
alias depadd="ssh-add -K ~/.ssh/id_rsa"
alias cbc="pbcopy <"
alias cbp="pbpaste >"

alias now="date +'%T'"

alias lebp="less ~/.zshrc"
alias subp="subl ~/.zshrc"
alias sobp="source ~/.zshrc; c"

alias gadd="git add"
alias gpl="git pull"
alias gps="git push"
alias gsl="git stash list"
alias gsd="git stash drop"
alias gsa="git stash apply"
alias grt="git reset"
alias gitundocommitbeforepush="git reset HEAD~1"
alias gitundocommitafterpush="git revert HEAD"
alias glocaldelete="git branch -D"
alias gremotedelete="git push --delete"
alias gitfilecommits="git log --follow --"

alias gst="git status"
alias gdf="git diff"
alias gch="git checkout"
alias gre="git remote -v"
alias gpl="git pull"
alias gps="git push"
alias gpum="git pull upstream master"
alias gplu="git pull upstream"
alias gpsu="git push upstream"
alias gplo="git pull origin"
alias gpso="git push origin"
alias gpsoms="git push origin master"
alias gbr="git branch"
alias gcm="git commit -m"
alias gl="git log"

alias ls.="ls ../"
alias ls..="ls ../../"
alias ls...="ls ../../../"
alias ls....="ls ../../../../"
alias ls.....="ls ../../../../../"

alias ll.="ll ../"
alias ll..="ll ../../"
alias ll...="ll ../../../"
alias ll....="ll ../../../../"
alias ll.....="ll ../../../../../"

alias la.="la ../"
alias la..="la ../../"
alias la...="la ../../../"
alias la....="la ../../../../"
alias la.....="la ../../../../../"

alias cd.="cd ../"
alias cd..="cd ../../"
alias cd...="cd ../../../"
alias cd....="cd ../../../../"
alias cd.....="cd ../../../../../"
alias ..="cd ../../"
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../../"
alias cdp="cd -"

alias bc="bc -l"
alias calc="bc -l"
alias mkdir="mkdir -v"
alias hs="history | grep"
alias mkcd='function _foo(){ mkdir -p "$1"; cd "$1"; }; _foo'
# alias blah='function _blah(){ echo "First: $1"; echo "Second: $2"; };_blah'
alias gbdelete='function _gbdelete() { glocaldelete "$1"; gremotedelete origin "$1"; }; _gbdelete'
alias gpullothers='function _gpullothers() { gch master; glocaldelete "$1"; gremotedelete origin "$1"; gch -b "$1"; gpl "$1" "$2"; }; _gpullothers'
alias deployproduct='function _deploybranch() { cd ~/deployer/; ./react deploy "$1" "$2" --branch="$3"; cdp; }; _deploybranch'
alias deployresume='function _deployresume() { cd ~/deployer/; ./react deploy "$1" resume --branch="$2"; cdp; }; _deployresume'
alias deploybuilder='function _deploybuilder() { cd ~/deployer/; ./react deploy "$1" builder-ui --branch="$2"; cdp; }; _deploybuilder'
alias deploynf='function _deploynf() { cd ~/deployer/; ./react deploy "$1" network-feedback --branch="$2"; cdp; }; _deploynf'
alias newpass="openssl rand -base64 "

alias npmi="npm install"
alias npms="npm start"
alias npmbd="npm run build:dev"

alias filelinecount='function _filelinecount() { echo "$1" | xargs wc -l;}; _filelinecount'
alias dirjslinecount='function _dirjslinecount() { find "$1" -name "*.js" | xargs wc -l;}; _dirjslinecount'
alias jslinecount="find . -name '*.js' | xargs wc -l"
alias jslinecountnew="( find ./ -name '*.js' -print0 | xargs -0 cat ) | wc -l"

alias grepex="grep -nrl --exclude-dir={node_modules,public,.git}"
alias jsbeautify="js-beautify --indent-size 2 -r"
alias rmprince="perl -i -pe 'BEGIN{undef $/;} s:/Rect.*?Contents \(This document was created with Prince, a great way of getting web content onto paper.\)::smg'"
alias cprettier="prettier --no-semi --single-quote --jsx-bracket-same-line --tab-width 2 --print-width 80 --trailing-comma es5 --write"

alias define="googler -n 3 --np define"

loadNvm() {
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";
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

netu() {
    # [net]work [u]sage: check network usage stats
    ADDRESS=$(ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2)
    TRANSMITTED_BYTES=$(netstat -ib -I en0 | grep $ADDRESS | awk '{print $10}')
    TRANSMITTED=$(bc <<< "scale=2; $TRANSMITTED_BYTES/1000000")
    RECEIVED_BYTES=$(netstat -ib -I en0 | grep $ADDRESS | awk '{print $7}')
    RECEIVED=$(bc <<< "scale=2; $RECEIVED_BYTES/1000000")

    printf "%s MB\n" "$(tput bold)🔼 TRANSMITTED $(tput sgr0): $TRANSMITTED"
    printf "%s MB\n" "$(tput bold)🔽 RECEIVED    $(tput sgr0): $RECEIVED"
}

# eval "$(starship init zsh)"

alias svim='vim -u ~/.SpaceVim/vimrc'
alias snvim='nvim -u ~/.SpaceVim/init.vim'

# A way to paste your any result or a command to a website and share with your friends
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

# opens a defective chrome instance so that we can use some functionality in localhost without worrying about things like CORS
alias defective_chrome='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security -–allow-file-access-from-files'

# alias sfzf='fzf --height 40% --reverse'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --inline-info --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# it first checks whether the file exists and if it does, it sources that.
# It is used to make ctrl+r work, I guess.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
