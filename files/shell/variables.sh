# Node, Android and go path configurations
NODE_MODULES_BIN=$HOME/.config/node_modules/bin
export ANDROID_HOME=$HOME/Android/Sdk

# PATH configuration
PATH_OLD="${PATH}"
export PATH="${HOME}/.local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/snap/bin"
export PATH="${PATH}:/usr/games:/usr/local/games"

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# Check current system
case "$(uname -s)" in
    Linux*)     
		# Check if WSL
		if cat /proc/version | grep -qi Microsoft; then
			# We are in WSL so add the old path to access Windows applications
			export PATH="$PATH:$PATH_OLD"
		fi
	    ;;
    Darwin*)    
		# MacOs
	    export PATH="${HOME}/Library/Python/3.6/bin:${PATH}"
	    ;;
    *)
	    echo UNKOWN MACHINE!!!!
esac
export PATH="${PATH}:${NODE_MODULES_BIN}:${ANDROID_HOME}"

DEV_KEYS="${HOME}/.config/dev_keys"

if [ -f "${DEV_KEYS}" ]; then
	source "${DEV_KEYS}"
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export CUSTOM_SHELL_DIR="${HOME}/.local/share/shell"

