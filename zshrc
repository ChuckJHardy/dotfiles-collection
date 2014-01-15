ZSH=$HOME/.oh-my-zsh
ZSH_THEME="chuckjhardy"
export EDITOR=/usr/local/Cellar/macvim/7.4-71/bin/vim

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

if [ -e "$HOME/.bin/tmuxinator.zsh" ]; then
  source "$HOME/.bin/tmuxinator.zsh"
fi

# OnTheBeach Specific Files
if [ -e "$HOME/.zsh_otb" ]; then
  source "$HOME/.zsh_otb"
fi

plugins=(git bundler osx ruby rails brew cap gem rake ssh-agent nvm nvm-zsh xcode tmuxinator tmux)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/Users/ChuckJHardy/.rvm/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/lib/node:/usr/local/share/npm/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
