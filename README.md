## DotFiles
    
    wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh; rm ~/.zshrc

    # Install Macvim
    brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit --with-cscope

    git clone git@github.com:ChuckJHardy/DotFiles.git ~/.dotfiles
    ln -s ~/.dotfiles/chuckjhardy.zsh-theme ~/.oh-my-zsh/themes/chuckjhardy.zsh-theme
    cd ~/.dotfiles
    brew bundle
    rake
