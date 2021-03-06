# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="tijs-simple"
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias love="/Applications/love.app/Contents/MacOS/love"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# powerline-bash
function powerline_precmd() {
  export PS1="$(~/powerline-bash.py $? --shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip terminalapp sublime redis-cli python osx heroku github django brew zsh-syntax-highlighting rsync)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/share/npm/bin:/Applications/adt-bundle-mac/sdk/platform-tools:/Users/tijs/pear/bin:/Users/tijs/projects/cakephp-1.3.14/cake/console:/usr/local/Cellar/gettext/0.18.1.1/bin:/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/Cellar/ruby/1.9.3-p0/bin:/usr/local/mysql/bin:/usr/local/Cellar/python/2.7.2/bin:/usr/local/share/python:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin

export EDITOR=vi
