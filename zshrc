ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export BRIDGE_DEV_BOX_MEM_SIZE=4096
export BRIDGE_DEV_BOX_NUMBER_OF_CORES=2

export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

export EDITOR=/usr/local/Cellar/macvim/HEAD/bin/vim

# XCode
#export CC=/usr/local/bin/gcc-4.2
#export CPPFLAGS=-I/opt/X11/include

# Aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

if [ -e "$HOME/.aliases_local" ]; then
  source "$HOME/.aliases_local"
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
fi

plugins=(git bundler osx ruby rails brew cap gem rake ssh-agent xcode tmux rbenv)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
eval "$(direnv hook $0)"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

export GROOVY_HOME=/usr/local/opt/groovy/libexec
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
