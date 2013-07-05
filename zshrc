ZSH=$HOME/.oh-my-zsh
ZSH_THEME="chuckjhardy"
export EDITOR=/usr/local/Cellar/macvim/7.3-66/bin/vim

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

# XCode
export CC=/usr/local/bin/gcc-4.2
export CPPFLAGS=-I/opt/X11/include

# Aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

if [ -e "$HOME/.aliases_local" ]; then
  source "$HOME/.aliases_local"
fi

plugins=(git bundler osx ruby rails rails3 brew cap gem rake ssh-agent)

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
