# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

alias tmux="TERM=screen-256color-bce tmux"

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
plugins=(git svn ruby gem npm rails rails3 rvm tmux)

source $ZSH/oh-my-zsh.sh

# enable the love train
unalias sl
alias sl='nocorrect sl'

alias crawl='~/Projects/crawl/crawl-ref/source/crawl'
alias make-crawl='cd ~/Projects/crawl/crawl-ref/source; make APPLE_GCC=y NO_PKGCONFIG=y CONTRIB_SDL=y TILES=y'

# Customize to your needs...
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="/Users/matt/.rvm/bin:/usr/local/Cellar:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:$HOME/Projects/android-sdk-mac_x86/platform-tools:$HOME/Projects/android-sdk-mac_x86/tools:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin:$PATH"
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:/usr/local/oracle/instantclient_11_2:$DYLD_LIBRARY_PATH" # disabled as it breaks brew
export SQLPATH="/usr/local/oracle/instantclient_11_2"
export TNS_ADMIN="/usr/local/oracle/network/admin"
export NLS_LANG="ENGLISH_UNITED KINGDOM.UTF8"
export PATH=$PATH:$DYLD_LIBRARY_PATH

# Enable zsh-syntax-highlighting plugin
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
