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

export EDITOR=/usr/local/Cellar/macvim/7.4-104_1/bin/vim
#export SSL_CERT_DIR=/usr/lib/ssl/certs
#export SSL_CERT_FILE=/usr/lib/ssl/certs/ca-certificates.crt

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

plugins=(git bundler ruby rails gem rake ssh-agent tmux rvm)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"

eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

export PATH="$HOME/.rbenv/bin:$PATH"

#export NVM_DIR="/home/chuckjhardy/.nvm"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_GC_HEAP_FREE_SLOTS=500000
export RUBY_GC_HEAP_INIT_SLOTS=40000
