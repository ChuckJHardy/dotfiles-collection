ZSH=$HOME/.oh-my-zsh
ZSH_THEME="chuckjhardy"
export EDITOR=/usr/local/Cellar/macvim/7.3-66/bin/vim

# XCode
export CC=/usr/local/bin/gcc-4.2

# Aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

plugins=(git bundler ssh-agent)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/Users/ChuckJHardy/.rvm/bin:/usr/local/sbin:/usr/local/mysql/bin:/Users/ChuckJHardy/Code/247/unicorns:/usr/local/lib/node:/usr/local/share/npm/bin:$PATH"

# OTB Navigator
export OnTheBeach="$HOME/Code/247"
export PATH="$PATH:$OnTheBeach/unicorns"
source $HOME/otb.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
