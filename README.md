## DotFiles
    
#### Prerequisites

    brew install zsh wget
    brew install macvim --override-system-vim
    wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh; rm ~/.zshrc

#### Installation

    git clone git@github.com:ChuckJHardy/DotFiles.git ~/.dotfiles
    ln -s ~/.dotfiles/chuckjhardy.zsh-theme ~/.oh-my-zsh/themes/chuckjhardy.zsh-theme
    cd ~/.dotfiles; rake