# https://stackoverflow.com/a/43544733/6236710
# https://stackoverflow.com/questions/65484115/how-to-solve-zsh-compinit-insecure-directories-issue-on-macos-other-solutions
ZSH_DISABLE_COMPFIX="true"

source-zsh() {
    if [[ -f $1 && -r $1 ]]; then
        source $1
    fi
}

# source all your paths
source-zsh ~/.zsh/paths.zsh

# oh-my-zsh.zsh is actually the .zshrc that is formed after installing oh-my-zsh
source-zsh ~/.zsh/oh-my-zsh.zsh

# source-zsh ~/.zsh/aditya.zsh
source-zsh ~/.zsh/sensitive.zsh
source-zsh ~/.zsh/cpp.zsh
source-zsh ~/.zsh/aliases.zsh

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

