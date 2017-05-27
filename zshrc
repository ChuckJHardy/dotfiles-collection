ZSH=$HOME/.oh-my-zsh

# Load the oh-my-zsh's library.
# http://antigen.sharats.me/#installation
source /usr/local/share/antigen/antigen.zsh

# https://github.com/denysdovhan/spaceship-zsh-theme#vi-mode-vi_mode
export RPS1="%{$reset_color%}"

antigen use oh-my-zsh

antigen bundle aws
antigen bundle brew
antigen bundle common-aliases
antigen bundle docker
antigen bundle git
antigen bundle gradle
antigen bundle osx
antigen bundle ssh-agent
antigen bundle thefuck
antigen bundle tmux
antigen bundle vi-mode
antigen bundle chucknorris

antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Tell antigen that you're done.
antigen apply

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

export EDITOR=/usr/local/Cellar/macvim/7.4-104_1/bin/vim

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

unsetopt correct_all

# Customize to your needs...
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_GC_HEAP_FREE_SLOTS=500000
export RUBY_GC_HEAP_INIT_SLOTS=40000

echo $(chuck)
