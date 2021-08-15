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

#      -F      Display a slash (`/') immediately after each pathname that
#              is a directory, an asterisk (`*') after each that is exe-
#              cutable, an at sign (`@') after each symbolic link, an
#              equals sign (`=') after each socket, a percent sign (`%')
#              after each whiteout, and a vertical bar (`|') after each
#              that is a FIFO.
#      -G      Enable colorized output.  This option is equivalent to
#              defining CLICOLOR in the environment.  (See below.)
# alias ls="ls -FG"
alias ll="ls -la"
alias la="ls -a"
alias cp="cp -v"
alias mv="mv -v"
alias cpf="cp -vR"
alias mvf="mv -vR"
alias rmf="rm -vfR"
alias rm="rm -i"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'


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



# --------------------------------
# -------- VMOCK specific --------

# alias dui="cd ~/frontend/dashboard"
# alias rui="cd ~/frontend/resume"
# alias cui="cd ~/frontend/career-fit"
# alias bui="cd ~/frontend/builder"
# alias nfui="cd ~/frontend/network-feedback"
# 
# alias apinf="cd ~/api/api-network-feedback"
