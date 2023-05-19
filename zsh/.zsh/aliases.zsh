# useful aliases
# some alias might also be present in other files, eg. aditya.zsh
# some are present as functions not alias

if [ `uname` = 'Linux' ]; then
    alias subl='"/mnt/c/Program Files/Sublime Text/subl.exe"'
    alias smerge='"/mnt/c/Program Files/Sublime Merge/sublime_merge.exe"'
else
    # alias subl="open -a /Applications/Sublime\ Text.app"
    # alias smerge="open -a /Applications/Sublime\ Merge.app"
fi
# alias subl4="open -a /Applications/Sublime\ Text\ 4\ early\ build.app"
# alias smerge="open -a /Applications/Sublime\ Merge.app"

alias svim='vim -u ~/.SpaceVim/vimrc'
alias snvim='nvim -u ~/.SpaceVim/init.vim'

# A way to paste your any result or a command to a website and share with your friends
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

# opens a defective chrome instance so that we can use some functionality in localhost without worrying about things like CORS
alias defective_chrome='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security -–allow-file-access-from-files'

alias tempmail="tmpmail"

alias list-size="du -sch .[!.]* * |sort -h"

# default settings to backup
alias macprefs_backup="macprefs backup -t system_preferences startup_items preferences app_store_preferences"


alias qfind="find . -iname "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -iname "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -iname "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -iname '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

