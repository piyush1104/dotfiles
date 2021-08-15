## Install vim-plug to work properly

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Open vim and then do `:PlugInstall`. Close Vim and open it again. 
Will look so beautiful.


**Note**: For undo and swap to work properly, you might need to create ~/.vim/swap and ~/.vim/undo directories
