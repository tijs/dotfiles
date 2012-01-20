PATH="/usr/local/Cellar/python/2.7.2/bin:/usr/local/share/python:$PATH"
PATH="/usr/local/mysql/bin:$PATH"
# gettext fix
PATH="/usr/local/Cellar/gettext/0.18.1.1/bin:$PATH" 
export PATH

# lion mysql fix
export DYLD_LIBRARY_PATH=”$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/

VIRTUALENVWRAPPER_PYTHON="/usr/local/Cellar/python/2.7.2/bin/python"
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/share/python/virtualenvwrapper.sh
