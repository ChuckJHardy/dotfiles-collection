## DotFiles
    
#### Usage

    git clone git@github.com:ChuckJHardy/Vim.git ~/.dotfiles
    cd ~/.dotfiles; rake

#### Get Mountain Lion Ready

[Help guide with installing Mountain Lion](http://robots.thoughtbot.com/post/27985816073/the-hitchhikers-guide-to-riding-a-mountain-lion)

Get X11

    Download and install http://xquartz.macosforge.org/landing/
    
Get the Brew packages

    brew install zsh wget curl ag ctags-exuberant
    brew install macvim --override-system-vim --with-features=huge --enable-rubyinterp
    
Get Oh-My-Zsh

    wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
    
Update Apple GCC

    brew tap homebrew/dupes
    brew install apple-gcc42
    sudo ln -s /usr/local/bin/gcc-4.2 /usr/bin/gcc-4.2
