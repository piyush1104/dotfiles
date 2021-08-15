# useful aliases
# some alias might also be present in other files, eg. aditya.zsh
# some are present as functions not alias

alias subl="open -a /Applications/Sublime\ Text.app"
# alias subl4="open -a /Applications/Sublime\ Text\ 4\ early\ build.app"
alias smerge="open -a /Applications/Sublime\ Merge.app"

alias svim='vim -u ~/.SpaceVim/vimrc'
alias snvim='nvim -u ~/.SpaceVim/init.vim'

# A way to paste your any result or a command to a website and share with your friends
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

# opens a defective chrome instance so that we can use some functionality in localhost without worrying about things like CORS
alias defective_chrome='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security -–allow-file-access-from-files'

alias tempmail="tmpmail"
