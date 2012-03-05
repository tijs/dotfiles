PATH="/usr/local/Cellar/python/2.7.2/bin:/usr/local/share/python:$PATH" # python packages
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/Cellar/ruby/1.9.3-p0/bin:$PATH" # ruby gems

# gettext fix
PATH="/usr/local/Cellar/gettext/0.18.1.1/bin:$PATH" 
export PATH

# lion mysql fix
export DYLD_LIBRARY_PATH=”$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/

VIRTUALENVWRAPPER_PYTHON="/usr/local/Cellar/python/2.7.2/bin/python"
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/share/python/virtualenvwrapper.sh

# set default editor
export EDITOR='/usr/bin/vim'

# show current branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}
 
PS1='\[\033[01;37m\]\w\[\033[00;35m\]$(parse_git_branch)\[\033[00m\] \$ '
