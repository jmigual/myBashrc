# Node, Android and go path configurations
NODE_MODULES_BIN=$HOME/.config/node_modules/bin
export ANDROID_HOME=$HOME/Android/Sdk
export GOPATH=$HOME/Projects/gopath

# PATH configuration
export PATH=$PATH:/usr/games:$HOME/bin:/usr/local/bin
export PATH=$PATH:$GOPATH/bin:$ANDROID_HOME:$NODE_MODULES_BIN

# PyEnv configuration
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
