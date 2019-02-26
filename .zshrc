# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

alias tmux="TERM=screen-256color-bce tmux"

# this allows calling rake tasks with arguments
# WITHOUT having to wrap it in quotes
unsetopt nomatch

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby gem npm rails tmux rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/local/Cellar:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:$HOME/Projects/android-sdk-mac_x86/platform-tools:$HOME/Projects/android-sdk-mac_x86/tools:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin:$PATH"
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:/usr/local/oracle/instantclient_11_2:$DYLD_LIBRARY_PATH" # disabled as it breaks brew
export SQLPATH="/usr/local/oracle/instantclient_11_2"
export TNS_ADMIN="/usr/local/oracle/network/admin"
export NLS_LANG="ENGLISH_UNITED KINGDOM.UTF8"
export PATH=$PATH:$DYLD_LIBRARY_PATH

# Enable zsh-syntax-highlighting plugin
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/m/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.yarn/bin:$HOME/.nvm/versions/node/v6.2.2/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/m/.sdkman"
[[ -s "/Users/m/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/m/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
